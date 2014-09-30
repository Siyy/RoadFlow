//初始化绑定字段选择项
function biddingFileds(attJSON, textid, $bindfiled)
{
    if (attJSON.dbconn && attJSON.dbtable)
    {
        var fieldvalue = "";
        if (textid)
        {
            var textidarray = textid.split('.');
            if (textidarray.length == 2)
            {
                fieldvalue = textidarray[1];
            }
        }
        var opts = getFieldsOps(attJSON.dbconn, attJSON.dbtable, fieldvalue);
        $bindfiled.html(opts);
    }
}


//得到一连接的所有表
function getTables(connid)
{
    var tables = [];
    $.ajax({
        url: top.rootdir + "/WorkFlowDesigner/GetTables?connid=" + connid, dataType: "json", async: false, cache: false, success: function (json)
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
        url: top.rootdir + "/WorkFlowDesigner/GetFields?connid=" + connid + "&table=" + table, dataType: "json", async: false, cache: false, success: function (json)
        {
            for (var i = 0; i < json.length; i++)
            {
                fields.push(json[i]);
            }
        }
    });
    return fields;
}
//得到表下拉选择项
function getTableOps(connid, table)
{
    var options = '<option value=""></option>';
    var tableds = getTables(connid);
    for (var i = 0; i < tableds.length; i++)
    {
        options += '<option value="' + tableds[i].name + '" ' + (tableds[i].name == table ? 'selected="selected"' : '') + '>' + tableds[i].name + '</option>';
    }
    return options;
}
//得到字段下拉选择项
function getFieldsOps(connid, table, field)
{
    var options = '<option value=""></option>';
    var fields = getFields(connid, table);
    for (var i = 0; i < fields.length; i++)
    {
        options += '<option value="' + fields[i].name + '" ' + (fields[i].name == field ? 'selected="selected"' : '') + '>' + fields[i].name + '</option>';
    }
    return options;
}

//测试sql合法性
function testSql(sql)
{
    if ($.trim(sql).length == 0)
    {
        alert("SQL语句为空");
        return;
    }
    var json = parent.formattributeJSON;
    if (!json || !json.dbconn)
    {
        alert("未设置数据连接");
        return;
    }
    $.ajax({
        url: top.rootdir + "/WorkFlowFormDesigner/TestSql", async: false, cache: false, method: "post", data: { sql: sql, dbconn: json.dbconn }, success: function (txt)
        {
            alert(txt);
        }
    });
}

function getElement(editor, type1, dialogName)
{
    var edit = RoadUI.Core.query("edit");
    var dialog = editor.ui._dialogs[dialogName];
    if (dialog.iframeUrl.indexOf("?") != -1)
    {
        dialog.iframeUrl = dialog.iframeUrl.split('?')[0];
    }
    
    if ("1" != edit)
    {
        return undefined;
    }
    var text = editor.selection.getRange().getClosedNode();
    if (!text)
    {
        var text = editor.selection.getStart();
        if ("INPUT" != text.tagName)
        {
            text1 = $("[type1='" + type1 + "']", $(text));
            text = text1.size() > 0 ? text1.get(0) : undefined;
        }
    }
    return text;
}