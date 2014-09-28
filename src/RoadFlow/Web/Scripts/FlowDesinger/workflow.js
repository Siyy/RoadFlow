var wf_r = null; //画板对象
var wf_steps = []; //步骤数组
var wf_texts = []; //文本数组
var wf_conns = []; //连线数组
var wf_option = ""; //当前操作
var wf_focusObj = null; //当前焦点对象
var wf_width = 108; //步骤宽度
var wf_height = 50; //步骤高度
var wf_rect = 7; //圆角大小
var wf_designer = true; //是否是设计模式(查看流程图时不帮定双击事件）
var wf_connColor = "#898a89"; //连线的常规颜色
var wf_nodeBorderColor = "#23508e"; //节点边框颜色
var wf_noteColor = "#efeff0"; //节点填充颜色
var wf_stepDefaultName = "新步骤";//默认步骤名称

var tempArrPath = []; //临时连续
var mouseX = 0;
var mouseY = 0;

var wf_json = {}; //设计json
var wf_id = "";//当前流程ID
var links_tables_fields = [];//当前流程的所有连接所有表和字段

$(function ()
{
    wf_r = Raphael("flowdiv", $(window).width(), $(window).height() - 28);
    wf_r.customAttributes.type1 = function () { };
    wf_r.customAttributes.fromid = function () { };
    wf_r.customAttributes.toid = function () { };
});

//添加步骤
function addStep(x, y, text, id, addToJSON)
{
    var guid = getGuid();
    var xy = getNewXY();
    x = x || xy.x;
    y = y || xy.y;
    text = text || wf_stepDefaultName;
    id = id || guid;
    var rect = wf_r.rect(x, y, wf_width, wf_height, wf_rect);
    rect.attr({ "fill": wf_noteColor, "stroke": wf_nodeBorderColor, "fill-opacity": 1, "stroke-width": 1, "cursor": "default" });
    rect.id = id;
    rect.type1 = "step";
    rect.drag(move, dragger, up);
    if (wf_designer)
    {
        rect.click(click);
        rect.dblclick(stepSetting);
    }
    wf_steps.push(rect);

    var text2 = text.length > 8 ? text.substr(0, 7) + "..." : text;
    var text1 = wf_r.text(x + 52, y + 25, text2);
    text1.attr({ "font-size": "12px" });
    if (text.length > 8) text1.attr({ "title": text });
    text1.id = "text_" + id;
    text1.type1 = "text";
    wf_texts.push(text1);

    if (addToJSON == undefined || addToJSON == null) addToJSON = true;
    if (addToJSON)
    {
        var step = {};
        step.id = guid;
        step.name = text;
        step.opinionDisplay = "";
        step.expiredPrompt = "";
        step.signatureType = "";
        step.workTime = "";
        step.limitTime = "";
        step.otherTime = "";
        step.archives = "";
        step.archivesParams = "";
        step.note = "";
        step.position = { x: x, y: y, width: wf_width, height: wf_height };
        step.behavior = {
            flowType: "",
            runSelect: "",
            handlerType: "",
            selectRange: "",
            handlerStep: "",
            valueField: "",
            defaultHandler: "",
            hanlderModel: "",
            backModel: "",
            backStep: "",
            backType: "",
            percentage: ""
        };
        step.forms = [];
        step.buttons = [];
        step.fieldStatus = [];
        step.event = {
            submitBefore: "",
            submitAfter: "",
            backBefore: "",
            backAfter: ""
        };
        addStep1(step);
    }
}

//复制当前选中步骤
function copyStep()
{
    if (wf_focusObj == null || !isStepObj(wf_focusObj))
    {
        alert("请选择要复制的步骤");
        return;
    }
    var json = null;
    var text = "";
    var id = getGuid();
    if (wf_json && wf_json.steps)
    {
        for (var i = 0; i < wf_json.steps.length; i++)
        {
            if (wf_json.steps[i].id == wf_focusObj.id)
            {
                json = wf_json.steps[i];
                json.id = id;
                text = json.name + "复件";
                json.name = text;
                break;
            }
        }
    }
    addStep(undefined, undefined, text, id, false);
}

//设置步骤文本
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

//删除当前焦点及其附属对象
function removeObj()
{
    if (!wf_focusObj)
    {
        alert("请选择要删除的对象!");
    } else if (!confirm('您真的要删除选定对象吗?'))
    {
        return false;
    }
    if (isStepObj(wf_focusObj))//如果选中的是步骤
    {
        if (wf_focusObj.id)
        {
            for (var i = 0; i < wf_texts.length; i++)
            {
                if (wf_texts[i].id == "text_" + wf_focusObj.id)
                {
                    wf_texts.remove(i);
                    var text = wf_r.getById("text_" + wf_focusObj.id);
                    if (text) text.remove();
                }
            }
        }
        var deleteConnIndex = new Array();
        for (var j = 0; j < wf_conns.length; j++)
        {
            if (wf_conns[j].arrPath && (wf_conns[j].obj1.id == wf_focusObj.id || wf_conns[j].obj2.id == wf_focusObj.id))
            {
                deleteLine(wf_conns[j].id);
                deleteConnIndex.push(j);
                wf_conns[j].arrPath.remove();
            }
        }
        for (var m = deleteConnIndex.length; m--;)
        {
            wf_conns.remove(deleteConnIndex[m]);
        }
        deleteConnIndex = new Array();

        for (var k = 0; k < wf_steps.length; k++)
        {
            if (wf_steps[k].id == wf_focusObj.id)
            {
                wf_steps.remove(k);
                deleteStep(wf_focusObj.id);
            }
        }
        wf_focusObj.remove();
    }
    else//如果选中的是线
    {
        for (var j = 0; j < wf_conns.length; j++)
        {
            if (wf_conns[j].arrPath && wf_conns[j].arrPath.id == wf_focusObj.id)
            {
                deleteLine(wf_conns[j].id);
                wf_conns.remove(j);
            }
        }
        wf_focusObj.remove();
    }
}

//得到新步骤的XY
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

//添加连线
function addConn()
{
    if (!wf_focusObj || !isStepObj(wf_focusObj))
    {
        alert("请选择要连接的步骤!"); return false;
    }
    wf_option = "line";
    document.body.onmousemove = mouseMove;
    document.body.onmousedown = function ()
    {
        for (var i = 0; i < tempArrPath.length; i++)
        {
            tempArrPath[i].arrPath.remove();
        }
        tempArrPath = [];
        document.body.onmousemove = null;
    };
}

function mouseMove(ev)
{
    ev = ev || window.event;
    var mousePos = mouseCoords(ev);
    mouseX = mousePos.x;
    mouseY = mousePos.y;
    var obj = { obj1: wf_focusObj, obj2: null };
    wf_r.drawArr(obj);
}

function mouseCoords(ev)
{
    if (ev.pageX || ev.pageY)
    {
        return { x: ev.pageX, y: ev.pageY };
    }
    return {
        x: ev.clientX + document.body.scrollLeft - document.body.clientLeft,
        y: ev.clientY + document.body.scrollTop - document.body.clientTop
    };
}

//连接对象
function connObj(obj, addToJSON)
{
    if (addToJSON == undefined || addToJSON == null) addToJSON = true;
    if (isLine(obj))
    {

        wf_conns.push(wf_r.drawArr(obj));

        if (addToJSON)
        {
            var line = {};
            line.id = obj.id;
            line.from = obj.obj1.id;
            line.to = obj.obj2.id;
            line.customMethod = "";
            line.sql = "";
            line.noaccordMsg = "";
            addLine(line);
        }
    }
}

//单击事件执行相关操作
function click()
{
    var o = this;
    switch (wf_option)
    {
        case "line":
            var obj = { id: getGuid(), obj1: wf_focusObj, obj2: o };
            connObj(obj);
            break;
        default:
            changeStyle(o);
            break;
    }
    wf_option = "";
    wf_focusObj = this;
}

//连线单击事件
function connClick()
{
    for (var i = 0; i < wf_conns.length; i++)
    {
        if (wf_conns[i].arrPath === this)
        {

            wf_conns[i].arrPath.attr({ "stroke": "#db0f14" });
        }
        else
        {
            wf_conns[i].arrPath.attr({ "stroke": wf_connColor });
        }
    }
    for (var i = 0; i < wf_steps.length; i++)
    {
        wf_steps[i].attr("fill", "#efeff0");
        wf_steps[i].attr("stroke", "#23508e");
    }

    wf_focusObj = this;
}

//判断一个节点与另一个节点之间是否可以连线
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

//判断一个对象是否是步骤对象
function isStepObj(obj)
{
    return obj && obj.type1 && obj.type1.toString() == "step";
}

//得到XML DOM
function getXmlDoc()
{
    var xmlDoc = RoadUI.Core.getXmlDoc();
    xmlDoc.async = false;
    return xmlDoc
}

//得到GUID
function getGuid()
{
    return Raphael.createUUID().toLowerCase();
}

//改变节点样式
function changeStyle(obj)
{
    if (!obj)
    {
        return;
    }
    for (var i = 0; i < wf_steps.length; i++)
    {
        if (wf_steps[i].id == obj.id)
        {
            wf_steps[i].attr("fill", wf_noteColor);
            wf_steps[i].attr("stroke", "#cc0000");
        }
        else
        {
            wf_steps[i].attr("fill", wf_noteColor);
            wf_steps[i].attr("stroke", wf_nodeBorderColor);
        }
    }

    for (var i = 0; i < wf_conns.length; i++)
    {
        if (wf_conns[i].arrPath)
        {
            wf_conns[i].arrPath.attr({ "stroke": wf_connColor });
        }
    }

    obj.animate({ "fill-opacity": .5 }, 500);
}

//拖动节点开始时的事件
function dragger()
{
    this.ox = this.attr("x");
    this.oy = this.attr("y");
    changeStyle(this);
};

//拖动事件
function move(dx, dy)
{
    var x = this.ox + dx;
    var y = this.oy + dy;

    if (x < 0)
    {
        x = 0;
    }
    else if (x > wf_r.width - wf_width)
    {
        x = wf_r.width - wf_width;
    }

    if (y < 0)
    {
        y = 0;
    }
    else if (y > wf_r.height - wf_height)
    {
        y = wf_r.height - wf_height;
    }
    this.attr("x", x);
    this.attr("y", y);
    if (this.id)
    {
        var text = wf_r.getById('text_' + this.id);
        if (text)
        {
            text.attr("x", x + 52);
            text.attr("y", y + 25);
        }
    }
    for (var j = wf_conns.length; j--;)
    {
        if (wf_conns[j].obj1.id == this.id || wf_conns[j].obj2.id == this.id)
        {
            wf_r.drawArr(wf_conns[j]);
        }
    }
    wf_r.safari();
};

//拖动结束后的事件
function up()
{
    changeStyle(this);
    //记录移动后的位置
    if (isStepObj(this))
    {
        var bbox = this.getBBox();
        if (bbox)
        {
            var steps = wf_json.steps;
            if (steps && steps.length > 0)
            {
                for (var i = 0; i < steps.length; i++)
                {
                    if (steps[i].id == this.id)
                    {
                        steps[i].position = { "x": bbox.x, "y": bbox.y, "width": bbox.width, "height": bbox.height };
                        break;
                    }
                }
            }
        }
    }
};

//随着节点位置的改变动态改变箭头
Raphael.fn.drawArr = function (obj)
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
        obj.arrPath.attr({ "stroke-width": 2, "stroke": wf_connColor });
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
            obj.arrPath.attr({ "stroke-width": 2, "stroke": wf_connColor });
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

//获取组成箭头的三条线段的路径
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

//初始化画板
function initwf()
{
    wf_json = {};
    wf_steps = new Array();
    wf_texts = new Array();
    wf_conns = new Array();
    wf_r.clear();
}


//删除数组中元素
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

//得到一连接的所有表
function getTables(connid)
{
    var tables = [];
    $.ajax({
        url: "WorkFlowDesigner/GetTables?connid=" + connid, dataType: "json", async: false, cache:false, success: function (json)
        {
            for (var i = 0; i < json.length; i++)
            {
                tables.push(json[i]);
            }
        }
    });
    return tables;
}
//得到一个表所有字段
function getFields(connid, table)
{
    var fields = [];
    $.ajax({
        url: "WorkFlowDesigner/GetFields?connid=" + connid + "&table=" + table, dataType: "json", async: false, cache:false, success: function (json)
        {
            for (var i = 0; i < json.length; i++)
            {
                fields.push(json[i]);
            }
        }
    });
    return fields;
}
//载入当前数据连接的所有表和字段
function initLinks_Tables_Fields(databases)
{
    if (!databases || databases.length == 0)
    {
        return;
    }
    links_tables_fields = [];
    for (var i = 0; i < databases.length; i++)
    {
        var fields = getFields(databases[i].link, databases[i].table);
        for (var k = 0; k < fields.length; k++)
        {
            links_tables_fields.push({ link: databases[i].link, linkName: databases[i].linkName, table: databases[i].table, field: fields[k].name });
        }
    }
}

//添加步骤
function addStep1(step)
{
    if (!step) return;
    if (!wf_json.steps) wf_json.steps = [];
    var isup = false;
    for (var i = 0; i < wf_json.steps.length; i++)
    {
        if (wf_json.steps[i].id == step.id)
        {
            wf_json.steps[i] = step;
            isup = true;
        }
    }
    if (!isup)
    {
        wf_json.steps.push(step);
    }
}
//添加线
function addLine(line)
{
    if (!line || !line.from || !line.to) return;
    if (!wf_json.lines) wf_json.lines = [];
    var isup = false;
    for (var i = 0; i < wf_json.lines.length; i++)
    {
        if (wf_json.lines[i].id == line.id)
        {
            wf_json.lines[i] = line;
            isup = true;
        }
    }
    if (!isup)
    {
        wf_json.lines.push(line);
    }

}
//根据当前JSON重载入流程
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
            addStep(steps[i].position.x, steps[i].position.y, steps[i].name, steps[i].id, false);
        }
    }
    var lines = wf_json.lines;
    if (lines && lines.length > 0)
    {
        for (var i = 0; i < lines.length; i++)
        {
            connObj({ id: lines[i].id, obj1: wf_r.getById(lines[i].from), obj2: wf_r.getById(lines[i].to) }, false);
        }
    }

    //初始化数据连接
    initLinks_Tables_Fields(wf_json.databases);
}

//从json中删除步骤
function deleteStep(stepid)
{
    var steps = wf_json.steps;
    if (steps && steps.length > 0)
    {
        for (var i = 0; i < steps.length; i++)
        {
            if (steps[i].id == stepid)
            {
                removeArray(steps, i);
            }
        }
    }
}

//从json中删除线
function deleteLine(lineid)
{
    var lines = wf_json.lines;
    if (lines && lines.length > 0)
    {
        for (var i = 0; i < lines.length; i++)
        {
            if (lines[i].id == lineid)
            {
                removeArray(lines, i);
            }
        }
    }
}

//步骤属性设置
function stepSetting()
{
    var bbox = this.getBBox();
    var url = "WorkFlowDesigner/Set_Step?appid=" + appid + "&id=" + this.id + "&x=" + bbox.x + "&y=" + bbox.y + "&width=" + bbox.width + "&height=" + bbox.height;
    dialog.open({ title: "步骤参数设置", width: 700, height: 400, url: url, openerid: iframeid, resize: false });
}

//流转条件设置
function connSetting()
{
    var url = "WorkFlowDesigner/Set_Line?appid=" + appid + "&id=" + this.id + "&from=" + this.fromid + "&to=" + this.toid;
    dialog.open({ title: "流转条件设置", width: 700, height: 400, url: url, openerid: iframeid, resize: false });
}

//流程属性设置
function flowAttrSetting(isAdd)
{
    var url = "WorkFlowDesigner/Set_Flow?appid=" + appid + "&isadd=" + (isAdd || 0).toString() + "&flowid=" + wf_json.id;
    dialog.open({ title: "流程属性设置", width: 550, height: 390, url: url, openerid: iframeid, resize: false });
}

//打开流程
function openFlow()
{
    var url = "WorkFlowDesigner/Open?appid=" + appid;
    dialog.open({ title: "打开流程", width: 850, height: 450, url: url, openerid: iframeid, resize: false });
}

function openFlow1(id)
{
    var json = $.ajax({
        url: "WorkFlowDesigner/GetJSON?appid=" + appid + "&flowid=" + id, async: false, cache: false, dataType: "json", success: function (json)
        {
            reloadFlow(json);
        }
    });
}

//新建流程
function addFlow()
{
    flowAttrSetting(1);
}

//保存流程
function saveFlow(op)
{
    if (!wf_json)
    {
        alert("未设置流程!"); return false;
    }
    else if (!wf_json.id || $.trim(wf_json.id) == "")
    {
        alert("请先新建或打开流程!"); return false;
    }
    else if (!wf_json.name || $.trim(wf_json.name) == "")
    {
        alert("流程名称不能为空!"); return false;
    }
    if (op == "delete" && !confirm("您真的要删除该流程吗?"))
    {
        return;
    }
    var title = "";
    if (op == "save") title = "保存流程";
    else if (op == "install") title = "安装流程";
    else if (op == "uninstall") title = "卸载流程";
    else if (op == "delete") title = "删除流程";
    var url = "WorkFlowDesigner/Opation?appid=" + appid + "&flowid=" + wf_json.id + "&op=" + (op || "save");
    dialog.open({ title: title, width: 260, height: 120, url: url, openerid: iframeid, resize: false, showclose: false });
}
//另存为
function saveAs()
{
    if (!wf_json || !wf_json.id || $.trim(wf_json.id) == "")
    {
        alert("请先新建或打开一个流程!"); return false;
    }
    var url = "WorkFlowDesigner/SaveAs?appid=" + appid + "&flowid=" + wf_json.id;
    dialog.open({ title: "流程另存为", width: 600, height: 230, url: url, openerid: iframeid, resize: false });
}
