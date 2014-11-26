<%@ Page Language="C#" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="../../dialogs/internal.js"></script>
    <script type="text/javascript" src="../common.js"></script>
    <%=WebMvc.Common.Tools.IncludeFiles %>
</head>
<body>
<% 
    WebMvc.Common.Tools.CheckLogin();
    Business.Platform.WorkFlowForm workFlowFrom = new Business.Platform.WorkFlowForm(); 
%>
<div class="wrapper">
    <div id="tabhead" class="tabhead">
        <span class="tab focus" data-content-id="text_attr">&nbsp;&nbsp;属性&nbsp;&nbsp;</span>
        <span class="tab" data-content-id="text_event">&nbsp;&nbsp;事件&nbsp;&nbsp;</span>
    </div>
    <div id="tabbody" class="tabbody" style="height:300px;">
        <div id="text_attr" class="panel focus">
    <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
        <tr>
            <th style="width:80px;">绑定字段：</th>
            <td><select class="myselect" id="bindfiled" style="width:227px"></select></td>
        </tr>
        <tr>
            <th>宽度：</th>
            <td><input type="text" class="mytext" id="width" value="" /></td>
        </tr>  
        <tr>
            <th>数据源：</th>
            <td><%=workFlowFrom.GetDataSourceRadios("datasource","0","onclick='dsChange(this.value);'") %></td>
        </tr>
        <tr id="ds_dict">
            <th>字典项：</th>
            <td><input type="text" class="mydict" id="ds_dict_value" more="0" value="" /></td>
        </tr>   
    </table>
    <table cellpadding="0" cellspacing="1" border="0" width="100%" id="ds_custom" style="display:none; margin-top:5px;" align="center">
        <tr>
            <td colspan="2">
                <fieldset style="padding:5px;">
                <legend style=""> 自定义选项 </legend>
                <div>标题：<input type="text" id="custom_title" class="mytext" value="" style="width:90px;" />
                     &nbsp;值：<input type="text" id="custom_value"  class="mytext" value="" style="width:90px;" />
                     &nbsp;<input type="button" class="mybutton" value="添加" onclick="dsAdd();" />
                     &nbsp;<input type="button" class="mybutton" value="删除" onclick="dsRemove();" />
                </div>
                <div style="height:5px;"></div>
                <div id="custom_sort" style="margin:0 auto; height:122px; border:1px solid #e8e8e8; padding:0 5px; overflow:auto; text-align:center;"></div>
                </fieldset>
            </td>
        </tr>
    </table>
    <table cellpadding="0" cellspacing="1" border="0" width="100%" id="ds_sql" style="display:none; margin-top:5px;" align="center">
        <tr>
            <td colspan="2">
                <fieldset style="padding:3px;">
                <legend style=""> SQL语句 </legend>
                <table border="0" style="width:100%;">
                    <tr>
                        <td style="width:80%">
                          <div>1.SQL应返回两个字段的数据源</div>
                          <div>2.第一个字段为值，第二个字段为标题</div>
                          <div>3.如果只返回一个字段则值和标题一样</div>
                        </td>
                        <td>
                            <input type="button" value="测试SQL" onclick="testSql($('#ds_sql_value').val());" class="mybutton" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding-top:4px;">
                            <textarea cols="1" rows="1" id="ds_sql_value" style="width:99%; height:80px; font-family:Verdana;" class="mytextarea"></textarea>
                        </td>
                    </tr>
                </table>
                </fieldset>
            </td>
        </tr>
    </table>
    </div>
        <div id="text_event" class="panel">
           <%Server.Execute("events.aspx"); %>
        </div>
    </div>
</div>
<script type="text/javascript">
    var oNode = null, thePlugins = 'formselect';
    var attJSON = parent.formattributeJSON;

    var parentEvents = parent.formEvents;
    var events = [];
    var eventsid = RoadUI.Core.newid(false);
    $(function ()
    {
        if (UE.plugins[thePlugins].editdom)
        {
            oNode = UE.plugins[thePlugins].editdom;
        }
        biddingFileds(attJSON, oNode ? $(oNode).attr("id") : "", $("#bindfiled"));
        if (oNode)
        {
            $text = $(oNode);
            $("input[name='datasource'][value='" + $text.attr('datasource') + "']").prop('checked', true);
            if ("1" == $text.attr("datasource"))
            {
                $("#ds_dict").hide();
                $("#ds_sql").hide();
                $("#ds_custom").show();
                var custionJSONString = $text.attr("customopts");
                if ($.trim(custionJSONString).length > 0)
                {
                    var customJSON = JSON.parse(custionJSONString);
                    for (var i = 0; i < customJSON.length; i++)
                    {
                        dsAdd(customJSON[i].title, customJSON[i].value);
                    }
                }
                new RoadUI.DragSort($("#custom_sort"));
            }
            else if ("0" == $text.attr("datasource"))
            {
                $("#ds_dict").show();
                $("#ds_sql").hide();
                $("#ds_custom").hide();
                $("#ds_dict_value").val($text.attr('dictid'));
                new RoadUI.Dict().setValue($("#ds_dict_value"));
            }
            else if ("2" == $text.attr("datasource"))
            {
                $("#ds_dict").hide();
                $("#ds_sql").show();
                $("#ds_custom").hide();
                $("#ds_sql_value").val($text.attr('sql'));
            }

            if ($text.attr('eventsid'))
            {
                eventsid = $text.attr('eventsid');
                events = getEvents(eventsid);
            }
        }

        new RoadUI.DragSort($("#custom_sort"));
        initTabs();
    });

    function dsChange(value)
    {
        if (value == 0)
        {
            $("#ds_dict").show();
            $("#ds_custom").hide();
            $("#ds_sql").hide();
        }
        else if (value == 1)
        {
            $("#ds_dict").hide();
            $("#ds_sql").hide();
            $("#ds_custom").show();
        }
        else if (value == 2)
        {
            $("#ds_dict").hide();
            $("#ds_custom").hide();
            $("#ds_sql").show();
        }
    }

    function optionClick(ul)
    {
        var spans = $(ul).children('span');
        $("#custom_title").val(spans.eq(0).text());
        $("#custom_value").val(spans.eq(1).text());
    }

    function dsAdd(title,value)
    {
        var custom_title = title || $.trim($("#custom_title").val());
        var custom_value = value || $.trim($("#custom_value").val());
      
        if (custom_title == "空标题") custom_title = "";
        if (custom_value == "空值") custom_value = "";
        var option = '<ul class="sortul" style="width:94%px; text-align:center;" ' +
            'text="' + (custom_title || "空标题") + '_' + (custom_value || "空值") +
            '" onclick="optionClick(this)"><span>' + (custom_title || "空标题") + '</span>(<span>' +
            (custom_value || "空值") + '</span>)</ul>';
        $("#custom_sort").append(option);
        new RoadUI.DragSort($("#custom_sort"));
    }

    function dsRemove()
    {
        var custom_title = $.trim($("#custom_title").val());
        var custom_value = $.trim($("#custom_value").val());
        if (custom_title && custom_value)
        {
            $("#custom_sort>ul[text='" + custom_title + "_" + custom_value + "']").remove();
        }
        else
        {
            alert('您没有选择要删除的项!');
        }
    }
    dialog.oncancel = function ()
    {
        if (UE.plugins[thePlugins].editdom)
        {
            delete UE.plugins[thePlugins].editdom;
        }
    };
    dialog.onok = function ()
    {
        var bindfiled = $("#bindfiled").val();
        var id = attJSON.dbconn && attJSON.dbtable && bindfiled ? attJSON.dbtable + '.' + bindfiled : "";
        var datasource = $(":checked[name='datasource']").val();
        var width = $("#width").val();
        var radios = [];
        var dictid = "";
        var sql = "";
        if ("1" == datasource)
        {
            $("#custom_sort>ul").each(function ()
            {
                var $spans = $(this).children('span');
                var title = $spans.eq(0).text();
                var value = $spans.eq(1).text();
                radios.push({ title: title, value: value });
            });
        }
        else if ("0" == datasource)
        {
            dictid = $("#ds_dict_value").val();
        }
        else if ("2" == datasource)
        {
            sql = $("#ds_sql_value").val();
        }

        var html = '<input type="text" type1="flow_select" id="' + id + '" name="' + id + '" datasource="' + datasource + '" dictid="' + dictid + '" value="下拉列表框" ';
        if (width)
        {
            html += 'style="width:' + width + '" ';
            html += 'width1="' + width + '" ';
        }
        if ("1" == datasource)
        {
            html += "customopts='" + JSON.stringify(radios) + "' ";
        }
        if ("2" == datasource)
        {
            html += 'sql="' + sql.replaceAll('"', '&quot;') + '" ';
        }

        if (events.length > 0)
        {
            html += 'eventsid="' + eventsid + '" ';
            setEvents(eventsid);
        }

        html += ' />';
        if (oNode)
        {
            $(oNode).after(html);
            domUtils.remove(oNode, false);
        }
        else
        {
            editor.execCommand('insertHtml', html);
        }
        delete UE.plugins[thePlugins].editdom;
    }
</script>
</body>
</html>