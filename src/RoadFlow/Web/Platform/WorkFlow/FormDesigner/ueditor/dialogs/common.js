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
        url: "/Platform/WorkFlow/Designer/GetTables?connid=" + connid, dataType: "json", async: false, cache:false, success: function (json)
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
        url: "/Platform/WorkFlow/Designer/GetFields?connid=" + connid + "&table=" + table, dataType: "json", async: false, cache: false, success: function (json)
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