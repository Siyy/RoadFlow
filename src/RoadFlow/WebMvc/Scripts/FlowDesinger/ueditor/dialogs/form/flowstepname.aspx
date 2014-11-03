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
        <th style="width:80px;">字号：</th>
        <td><input type="text" class="mytext" id="fontsize" style="width:227px" /></td>
    </tr>
    <tr>
        <th style="width:80px;">颜色：</th>
        <td><input type="text" class="mytext" id="fontcolor" style="width:227px" /></td>
    </tr>
</table>
<script type="text/javascript">
    var text = getElement(editor, "flow_formflowstepname", "formflowstepnameDialog");
    var attJSON = parent.formattributeJSON;
    var textid = text ? text.id : "";
    $(function ()
    {
        if (text)
        {
            $text = $(text);
            if ($text.attr('fontcolor')) $("#fontcolor").val($text.attr('fontcolor'));
            if ($text.attr('fontsize')) $("#fontsize").val($text.attr('fontsize'));
        }
    });
    dialog.onok = function ()
    {
        var fontcolor = $("#fontcolor").val();
        var fontsize = $("#fontsize").val();
        var html = '<input type="text" ondblclick="if(editor.ui._dialogs.formflowstepnameDialog.iframeUrl.indexOf(\'?\')==-1){editor.ui._dialogs.formflowstepnameDialog.iframeUrl=editor.ui._dialogs.formflowstepnameDialog.iframeUrl+\'?edit=1\';}editor.ui._dialogs.formflowstepnameDialog.open();" title="双击可设置属性" value="流程当前步骤名称" isflow="1" type1="flow_flowstepname" fontcolor="' + fontcolor + '" fontsize="' + fontsize + '" />';
        editor.execCommand("formflowstepname", html);
        dialog.close();
    }
</script>
</body>
</html>