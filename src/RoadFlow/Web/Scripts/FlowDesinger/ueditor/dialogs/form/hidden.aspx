<%@ Page Language="C#" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="../internal.js"></script>
    <script type="text/javascript" src="../common.js"></script>
    <%=WebMvc.Common.Tools.IncludeFiles %>
</head>
<body>
<% 
    WebMvc.Common.Tools.CheckLogin();
    Business.Platform.WorkFlowForm workFlowFrom = new Business.Platform.WorkFlowForm(); 
%>
<br />
<table cellpadding="0" cellspacing="1" border="0" width="95%" class="formtable">
    <tr>
        <th style="width:80px;">绑定字段：</th>
        <td><select class="myselect" id="bindfiled" style="width:227px"></select></td>
    </tr>
    <tr>
        <th>默认值：</th>
        <td><select class="myselect" id="defaultvalue" style="width:227px"><%=workFlowFrom.GetDefaultValueSelect("") %></select> </td>
    </tr>
</table>
<script type="text/javascript">
    var text = getElement(editor, "flow_hidden", "formhiddenDialog");
    var attJSON = parent.formattributeJSON;
    var textid = text ? text.id : "";
    $(function ()
    {
        biddingFileds(attJSON, textid, $("#bindfiled"));
        if (text)
        {
            $text = $(text);
            $("#defaultvalue").val($text.attr('defaultvalue'));
        }
    });
    dialog.onok = function ()
    {
        var bindfiled = $("#bindfiled").val();
        var id = attJSON.dbconn && attJSON.dbtable && bindfiled ? attJSON.dbtable + '.' + bindfiled : "";
        var defaultvalue = $("#defaultvalue").val();

        var html = '<input ondblclick="if(editor.ui._dialogs.formhiddenDialog.iframeUrl.indexOf(\'?\')==-1){editor.ui._dialogs.formhiddenDialog.iframeUrl=editor.ui._dialogs.formhiddenDialog.iframeUrl+\'?edit=1\';}editor.ui._dialogs.formhiddenDialog.open();" title="双击可设置属性" type="text" style="width:45px;" readonly="readonly" type1="flow_hidden" id="' + id + '" name="' + id + '" value="隐藏域" ';
        html += 'defaultvalue="' + defaultvalue + '" ';

        html += '/>';
        if (text)
        {
            $(text).remove();
        }
        editor.execCommand("formhidden", html);
        dialog.close();
    }
</script>
</body>
</html>