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
        <th style="width:80px;">绑定字段:</th>
        <td><select class="myselect" id="bindfiled" style="width:227px"></select></td>
    </tr>
    <tr>
        <th>默认值:</th>
        <td><select class="myselect" id="defaultvalue" style="width:227px"><%=workFlowFrom.GetDefaultValueSelect("") %></select> </td>
    </tr>
    <tr>
        <th>最大字符数:</th>
        <td><input type="text" id="maxlength" class="mytext" style="width:150px" /> // maxlength属性</td>
    </tr>
    <tr>
        <th>宽度:</th>
        <td><input type="text" id="width" class="mytext" style="width:150px" /> </td>
    </tr>
    <tr>
        <th>高度:</th>
        <td><input type="text" id="height" class="mytext" style="width:150px" /> </td>
    </tr>
    <tr>
        <th>值类型:</th>
        <td><select class="myselect" id="valuetype" ><%=workFlowFrom.GetValueTypeOptions("") %></select></td>
    </tr>
    
</table>
<script type="text/javascript">
    var text = getElement(editor, "flow_textarea", "formtextareaDialog");
    var attJSON = parent.formattributeJSON;
    var textid = text ? text.id : "";
    $(function ()
    {
        biddingFileds(attJSON, textid, $("#bindfiled"));
        if (text)
        {
            $text = $(text);
            $("#defaultvalue").val($text.attr('defaultvalue'));
            //$("input[name='model'][value='" + $text.attr('model') + "']").prop('checked', true);
            $("#width").val($text.attr('width1'));
            $("#height").val($text.attr('height1'));
            $("#maxlength").val($text.attr('maxlength'));
            $("#valuetype").val($text.attr('valuetype'));
        }
    });
    dialog.onok = function ()
    {
        var bindfiled = $("#bindfiled").val();
        var id = attJSON.dbconn && attJSON.dbtable && bindfiled ? attJSON.dbtable + '.' + bindfiled : "";
        var defaultvalue = $("#defaultvalue").val();
        var maxlength = $("#maxlength").val();
        //var model = $(":checked[name='model']").val();
        var width = $("#width").val();
        var height = $("#height").val(); 
        var valuetype = $("#valuetype").val();

        var html = '<input ondblclick="if(editor.ui._dialogs.formtextareaDialog.iframeUrl.indexOf(\'?\')==-1){editor.ui._dialogs.formtextareaDialog.iframeUrl=editor.ui._dialogs.formtextareaDialog.iframeUrl+\'?edit=1\';}editor.ui._dialogs.formtextareaDialog.open();" title="双击可设置属性" type="text" id="' + id + '" name="' + id + '" type1="flow_textarea" isflow="1" value="文本域" ';
        if (width && height)
        {
            html += 'style="width:' + width + ';height:' + height + '" ';
            html += 'width1="' + width + '" ';
            html += 'height1="' + height + '" ';
        }
        else if (width || height)
        {
            if (width)
            {
                html += 'style="width:' + width + '" ';
                html += 'width1="' + width + '" ';
            }
            if (height)
            {
                html += 'style="height:' + height + '" ';
                html += 'height1="' + height + '" ';
            }
        }
        else
        {
            html += 'style="width:80%; height:40px;" ';
        }
        if (valuetype)
        {
            html += 'valuetype="' + valuetype + '" ';
        }
        html += 'defaultvalue="' + defaultvalue + '" ';
        if (parseInt(maxlength) > 0)
        {
            html += 'maxlength="' + maxlength + '" ';
        }
        
        html += '/>';
        if (text)
        {
            $(text).remove();
        }
        editor.execCommand("formtextarea", html);
        dialog.close();
    }
</script>
</body>
</html>