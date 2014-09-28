var wf_r = null;
var wf_steps = [];
var wf_texts = [];
var wf_conns = [];
var wf_option = "";
var wf_focusObj = null;
var wf_width = 108;
var wf_height = 50;
var wf_rect = 7;
var wf_designer = false;
var wf_connColor = "#898a89";
var wf_connColor1 = "green";
var wf_nodeBorderColor = "#373737";
var wf_noteColor = "#efeff0";
var wf_nodeBorderColor1 = "green";
var wf_noteColor1 = "#e7f0c7";
var wf_stepDefaultName = "";

var tempArrPath = [];
var mouseX = 0;
var mouseY = 0;

var wf_json = {};
var wf_id = "";
var links_tables_fields = [];

$(function ()
{
    wf_r = Raphael("flowdiv", $(window).width() - 10, $(window).height() - 55);
    wf_r.customAttributes.type1 = function () { };
    wf_r.customAttributes.fromid = function () { };
    wf_r.customAttributes.toid = function () { };
});

function addStep(x, y, text, id, isIn)
{
    var guid = getGuid();
    var xy = getNewXY();
    x = x || xy.x;
    y = y || xy.y;
    text = text || wf_stepDefaultName;
    id = id || guid;
    var rect = wf_r.rect(x, y, wf_width, wf_height, wf_rect);
    var fillcolor = wf_noteColor;
    var strokecolor = wf_nodeBorderColor;
    if (isIn)
    {
        fillcolor = wf_noteColor1;
        strokecolor = wf_nodeBorderColor1;
    }
    rect.attr({
        "fill": fillcolor, "stroke": strokecolor, "fill-opacity": 1, "stroke-width": 1, "cursor": "default"
    });
    rect.id = id;
    rect.type1 = "step";
    wf_steps.push(rect);
    var text2 = text.length > 8 ? text.substr(0, 7) + "..." : text;
    var text1 = wf_r.text(x + 52, y + 25, text2);
    text1.attr({ "font-size": "12px" });
    if (text.length > 8) text1.attr({ "title": text });
    text1.id = "text_" + id;
    text1.type1 = "text";
    wf_texts.push(text1);
}

function setStepText(id, txt)
{
    var stepText = wf_r.getById("text_" + id);
    if (stepText != null)
    {
        if (txt.length > 8)
        {
            stepText.attr({ "title": txt });
            txt = txt.substr(0, 7) + "...";
        }
        stepText.attr({ "text": txt });
    }
}


function connObj(obj, isIn)
{
    if (isLine(obj))
    {
        wf_conns.push(wf_r.drawArr(obj, isIn));
    }
}

function isLine(obj)
{
    if (!obj || !obj.obj1 || !obj.obj2)
    {
        return false;
    }
    if (obj.obj1 === obj.obj2)
    {
        return false;
    }
    if (!isStepObj(obj.obj1) || !isStepObj(obj.obj2))
    {
        return false;
    }
    for (var i = 0; i < wf_conns.length; i++)
    {
        if (obj.obj1 === obj.obj2 || (wf_conns[i].obj1 === obj.obj1 && wf_conns[i].obj2 === obj.obj2))
        {
            return false;
        }
    }
    return true;
}

function isStepObj(obj)
{
    return obj && obj.type1 && obj.type1.toString() == "step";
}

function dragger()
{
    this.ox = this.attr("x");
    this.oy = this.attr("y");
    changeStyle(this);
};

Raphael.fn.drawArr = function (obj, isIn)
{
    if (!obj || !obj.obj1)
    {
        return;
    }

    if (!obj.obj2)
    {
        var point1 = getStartEnd(obj.obj1, obj.obj2);
        var path2 = getArr(point1.start.x, point1.start.y, mouseX, mouseY, 10);
        for (var i = 0; i < tempArrPath.length; i++)
        {
            tempArrPath[i].arrPath.remove();
        }
        tempArrPath = [];
        obj.arrPath = this.path(path2);
        obj.arrPath.attr({ "stroke-width": 2, "stroke": isIn ? wf_connColor1 : wf_connColor });
        tempArrPath.push(obj);
        return;
    }

    var point = getStartEnd(obj.obj1, obj.obj2);
    var path1 = getArr(point.start.x, point.start.y, point.end.x, point.end.y, 10);
    try
    {
        if (obj.arrPath)
        {
            obj.arrPath.attr({ path: path1 });
        }
        else
        {
            obj.arrPath = this.path(path1);
            obj.arrPath.attr({ "stroke-width": 2, "stroke": isIn ? wf_connColor1 : wf_connColor });
            if (wf_designer)
            {
                obj.arrPath.click(connClick);
                obj.arrPath.dblclick(connSetting);
                obj.arrPath.id = obj.id;
                obj.arrPath.fromid = obj.obj1.id;
                obj.arrPath.toid = obj.obj2.id;
            }
        }
    } catch (e) { }
    return obj;
};

function getStartEnd(obj1, obj2)
{
    var bb1 = obj1 ? obj1.getBBox() : null;
    var bb2 = obj2 ? obj2.getBBox() : null;
    var p = [
                { x: bb1.x + bb1.width / 2, y: bb1.y - 1 },
                { x: bb1.x + bb1.width / 2, y: bb1.y + bb1.height + 1 },
                { x: bb1.x - 1, y: bb1.y + bb1.height / 2 },
                { x: bb1.x + bb1.width + 1, y: bb1.y + bb1.height / 2 },
                bb2 ? { x: bb2.x + bb2.width / 2, y: bb2.y - 1 } : {},
                bb2 ? { x: bb2.x + bb2.width / 2, y: bb2.y + bb2.height + 1 } : {},
                bb2 ? { x: bb2.x - 1, y: bb2.y + bb2.height / 2 } : {},
                bb2 ? { x: bb2.x + bb2.width + 1, y: bb2.y + bb2.height / 2 } : {}
    ];
    var d = {}, dis = [];
    for (var i = 0; i < 4; i++)
    {
        for (var j = 4; j < 8; j++)
        {
            var dx = Math.abs(p[i].x - p[j].x),
                        dy = Math.abs(p[i].y - p[j].y);
            if (
                    (i == j - 4) ||
                    (((i != 3 && j != 6) || p[i].x < p[j].x) &&
                    ((i != 2 && j != 7) || p[i].x > p[j].x) &&
                    ((i != 0 && j != 5) || p[i].y > p[j].y) &&
                    ((i != 1 && j != 4) || p[i].y < p[j].y))
                )
            {
                dis.push(dx + dy);
                d[dis[dis.length - 1]] = [i, j];
            }
        }
    }
    if (dis.length == 0)
    {
        var res = [0, 4];
    } else
    {
        res = d[Math.min.apply(Math, dis)];
    }
    var result = {};
    result.start = {};
    result.end = {};
    result.start.x = p[res[0]].x;
    result.start.y = p[res[0]].y;
    result.end.x = p[res[1]].x;
    result.end.y = p[res[1]].y;
    return result;
}

function getArr(x1, y1, x2, y2, size)
{
    var angle = Raphael.angle(x1, y1, x2, y2);
    var a45 = Raphael.rad(angle - 45);
    var a45m = Raphael.rad(angle + 45);
    var x2a = x2 + Math.cos(a45) * size;
    var y2a = y2 + Math.sin(a45) * size;
    var x2b = x2 + Math.cos(a45m) * size;
    var y2b = y2 + Math.sin(a45m) * size;
    var result = ["M", x1, y1, "L", x2, y2, "L", x2a, y2a, "M", x2, y2, "L", x2b, y2b];
    return result;
}
function getNewXY()
{
    var x = 10, y = 50;
    if (wf_steps.length > 0)
    {
        var step = wf_steps[wf_steps.length - 1];
        x = parseInt(step.attr("x")) + 170;
        y = parseInt(step.attr("y"));
        if (x > wf_r.width - wf_width)
        {
            x = 10;
            y = y + 100;
        }

        if (y > wf_r.height - wf_height)
        {
            y = wf_r.height - wf_height;
        }
    }
    return { x: x, y: y };
}
function getGuid()
{
    return Raphael.createUUID().toLowerCase();
}
function initwf()
{
    wf_json = {};
    wf_steps = new Array();
    wf_texts = new Array();
    wf_conns = new Array();
    wf_r.clear();
}

Array.prototype.remove = function (n)
{
    if (isNaN(n) || n > this.length) { return false; }
    this.splice(n, 1);
}

function removeArray(array, n)
{
    if (isNaN(n) || n > array.length) { return false; }
    array.splice(n, 1);
}

function reloadFlow(json)
{
    if (!json || !json.id || $.trim(json.id) == "") return false;
    wf_json = json;
    wf_id = wf_json.id;
    wf_r.clear();
    wf_steps = [];
    wf_conns = [];
    wf_texts = [];
    var steps = wf_json.steps;
    if (steps && steps.length > 0)
    {
        for (var i = 0; i < steps.length; i++)
        {
            var isIn = false;//该步骤是否走过
            for (var j = 0; j < taskJSON.length; j++)
            {
                if (taskJSON[j].stepid.toLowerCase() == steps[i].id.toLowerCase())
                {
                    isIn = true;
                    break;
                }
            }
            addStep(steps[i].position.x, steps[i].position.y, steps[i].name, steps[i].id, isIn);
        }
        for (var x = 0; x < taskJSON.length; x++)
        {
            if (taskJSON[x].status == "0" || taskJSON[x].status == "1")
            {
                var id = taskJSON[x].stepid;
                var step = wf_r.getById(id);
                if (step)
                {
                    step.attr({ "fill": "#fdddb3", "stroke": "#fd6703" });
                }
            }
        }
    }
    var lines = wf_json.lines;
    if (lines && lines.length > 0)
    {
        for (var i = 0; i < lines.length; i++)
        {
            var isIn = false; //该线是否走过
            for (var j = 0; j < taskJSON.length; j++)
            {
                if (taskJSON[j].prevstepid.toLowerCase() == lines[i].from.toLowerCase() && taskJSON[j].stepid.toLowerCase() == lines[i].to.toLowerCase())
                {
                    isIn = true;
                    break;
                }
            }
            connObj({ id: lines[i].id, obj1: wf_r.getById(lines[i].from), obj2: wf_r.getById(lines[i].to) }, isIn);
        }
    }
}


function openFlow1(id)
{
    var json = $.ajax({
        url: "../WorkFlowDesigner/GetJSON?type=0&appid=&flowid=" + id, async: false, cache: false, dataType: "json", success: function (json)
        {
            reloadFlow(json);
        }
    });
}