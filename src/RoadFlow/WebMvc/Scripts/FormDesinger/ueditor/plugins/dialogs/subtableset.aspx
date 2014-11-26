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
    string defaultOptions = workFlowFrom.GetDefaultValueSelect("");
%>
<script type="text/javascript" src="../common.js"></script>
<table cellpadding="0" cellspacing="1" border="0" width="98%" style="margin-top:6px;" class="formtable" id="maintable">
    <tr>
        <th style="width:100px;">编辑模式：</th>
        <td><select class="myselect" id="editmode" style="width:227px" onchange="editmode_change(this.value);"><%=workFlowFrom.GetEditmodeOptions("") %></select></td>
    </tr>
    <tr id="mode_text" style="display:none;">
        <td colspan="2">
            <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
                <tr>
                    <th style="width:100px;">默认值：</th>
                    <td><input type="text" class="mytext" id="text_defaultvalue" style="width:250px; margin-right:6px;"/><select class="myselect" onchange="setDefaultValue(document.getElementById('text_defaultvalue'), this.value);" style="width:100px"><%=workFlowFrom.GetDefaultValueSelect("") %></select></td>
                </tr>
                <tr>
                    <th>值类型：</th>
                    <td><select class="myselect" id="text_valuetype" ><%=workFlowFrom.GetValueTypeOptions("") %></select></td>
                </tr>
                <tr>
                    <th>最大字符数：</th>
                    <td><input type="text" id="text_maxlength" class="mytext" style="width:150px" /></td>
                </tr>
                <tr>
                    <th>宽度：</th>
                    <td><input type="text" id="text_width" class="mytext" style="width:150px" /></td>
                </tr>
            </table>
        </td>
    </tr>
    
    <tr id="mode_textarea" style="display:none;">
        <td colspan="2">
            <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
                <tr>
                    <th style="width:100px;">默认值：</th>
                    <td><input type="text" class="mytext" id="textarea_defaultvalue" style="width:250px; margin-right:6px;"/><select class="myselect" onchange="setDefaultValue(document.getElementById('textarea_defaultvalue'), this.value);" style="width:100px"><%=workFlowFrom.GetDefaultValueSelect("") %></select></td>
                </tr>
                <tr>
                    <th>值类型：</th>
                    <td><select class="myselect" id="textarea_valuetype" ><%=workFlowFrom.GetValueTypeOptions("") %></select></td>
                </tr>
                <tr>
                    <th>最大字符数：</th>
                    <td><input type="text" id="textarea_maxlength" class="mytext" style="width:150px" /></td>
                </tr>
                <tr>
                    <th>宽度：</th>
                    <td><input type="text" id="textarea_width" class="mytext" style="width:150px" /></td>
                </tr>
                <tr>
                    <th>高度：</th>
                    <td><input type="text" id="textarea_height" class="mytext" style="width:150px" /></td>
                </tr>
            </table>
        </td>
    </tr>

    <tr id="mode_select" style="display:none;">
        <td colspan="2">
            <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
                <tr>
                    <th style="width:110px;">宽度：</th>
                    <td><input type="text" id="select_width" class="mytext" style="width:150px" /></td>
                </tr>
                <tr>
                    <th><input type="radio" value="select_dsdict" name="select_ds" style="vertical-align:middle;" id="select_ds1" /><label style="vertical-align:middle;" for="select_ds1">数据源(字典):</label></th>
                    <td><input type="text" class="mydict" id="select_ds_dict" more="0" value="" /></td>
                </tr>
                <tr>
                    <th><input type="radio" value="select_dssql" name="select_ds" style="vertical-align:middle;" id="select_ds2"/><label style="vertical-align:middle;" for="select_ds2">数据源(SQL):</label></th>
                    <td>
                        <div><textarea cols="1" rows="1" class="mytextarea"  id="select_ds_sql" style="width:99%; height:70px;"></textarea></div>
                        <div style="margin:3px 0;">格式：SELECT 值字段,标题字段 FROM 表名 WHERE 条件</div>
                    </td>
                </tr>
                <tr>
                    <th><input type="radio" value="select_dsstring" name="select_ds" style="vertical-align:middle;" id="select_ds3"/><label style="vertical-align:middle;" for="select_ds3">数据源(表达式):</label></th>
                    <td>
                        <div><textarea cols="1" rows="1" class="mytextarea" id="select_ds_string" style="width:99%; height:70px;"></textarea></div>
                        <div>
                            <div style="margin:3px 0;">格式：值0,标题0;值1,标题1</div>
                            <div>示例：0,事假;1,病假;2,年假;3,婚假</div> 
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <tr id="mode_checkbox" style="display:none;">
        <td colspan="2">
            <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
                <tr>
                    <th style="width:110px;"><input type="radio" value="checkbox_dsdict" name="checkbox_ds" style="vertical-align:middle;" id="checkbox_ds1" /><label style="vertical-align:middle;" for="checkbox_ds1">数据源(字典):</label></th>
                    <td><input type="text" class="mydict" id="checkbox_ds_dict" more="0" value="" /></td>
                </tr>
                <tr>
                    <th><input type="radio" value="checkbox_dssql" name="checkbox_ds" style="vertical-align:middle;" id="checkbox_ds2"/><label style="vertical-align:middle;" for="checkbox_ds2">数据源(SQL):</label></th>
                    <td>
                        <div><textarea cols="1" rows="1" class="mytextarea"  id="checkbox_ds_sql" style="width:99%; height:70px;"></textarea></div>
                        <div style="margin:3px 0;">格式：SELECT 值字段,标题字段 FROM 表名 WHERE 条件</div>
                    </td>
                </tr>
                <tr>
                    <th><input type="radio" value="checkbox_dsstring" name="checkbox_ds" style="vertical-align:middle;" id="checkbox_ds3"/><label style="vertical-align:middle;" for="checkbox_ds3">数据源(表达式):</label></th>
                    <td>
                        <div><textarea cols="1" rows="1" class="mytextarea" id="checkbox_ds_string" style="width:99%; height:70px;"></textarea></div>
                        <div>
                            <div style="margin:3px 0;">格式：值0,标题0;值1,标题1</div>
                            <div>示例：0,事假;1,病假;2,年假;3,婚假</div> 
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <tr id="mode_datetime" style="display:none;">
        <td colspan="2">
            <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
                <tr>
                    <th style="width:100px;">默认值：</th>
                    <td><input type="text" class="mytext" id="datetime_defaultvalue" style="width:250px; margin-right:6px;"/><select class="myselect" onchange="setDefaultValue(document.getElementById('datetime_defaultvalue'), this.value);" style="width:100px"><%=workFlowFrom.GetDefaultValueSelect("") %></select></td>
                </tr>
               
                <tr>
                    <th>宽度：</th>
                    <td><input type="text" id="datetime_width" class="mytext" style="width:150px" /></td>
                </tr>
                <tr>
                    <th>选择范围：</th>
                    <td>
                        <input type="text" id="datetime_min" class="mycalendar" style="width:100px;" />
                        &nbsp;至&nbsp;<input type="text" id="datetime_max" class="mycalendar" style="width:100px;" />
                    </td>
                </tr>
                <tr>
                    <th>是否选时间：</th>
                    <td><input type="checkbox" id="datetime_istime" value="1" style="vertical-align:middle;" /><label for="datetime_istime" style="vertical-align:middle;">是否允许选择时间</label></td>
                </tr>
            </table>
        </td>
    </tr>

    <tr id="mode_org" style="display:none;">
        <td colspan="2">
            <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
                <tr>
                    <th style="width:100px;">默认值：</th>
                    <td><select class="myselect" id="org_defaultvalue" style="width:227px"><%=defaultOptions %></select></td>
                </tr>
                <tr>
                    <th>宽度：</th>
                    <td><input type="text" id="org_width" class="mytext" style="width:150px" /></td>
                </tr>
                <tr>
                    <th>选择范围：</th>
                    <td>
                        <div>
                            <%=workFlowFrom.GetOrgRangeRadios("org_rang","") %>
                        
                        <input type="radio" name="org_rang" value="2" id="org_rang_3" style="vertical-align:middle;"/><label for="org_rang_3" style="vertical-align:middle;">自定义</label>：<input type="text" id="org_rang1" class="mymember" style="width:150px;"/></div>
                    </td>
                </tr>
                <tr>
                    <th>选择类型：</th>
                    <td><%=workFlowFrom.GetOrgSelectTypeCheckboxs("org_type","") %></td>
                </tr>
                <tr>
                    <th>多选：</th>
                    <td><input type="checkbox" value="1" id="org_more"  style="vertical-align:middle;" /><label for="org_more" style="vertical-align:middle;">是否可以多选</label></td>
                </tr>
            </table>
        </td>
    </tr>

    <tr id="mode_dict" style="display:none;">
        <td colspan="2">
            <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
                <tr>
                    <th style="width:100px;">宽度：</th>
                    <td><input type="text" id="dict_width" class="mytext" style="width:150px" /></td>
                </tr>
                <tr>
                    <th>选择范围：</th>
                    <td>
                        <div style="padding-top:5px;"><input type="text" id="dict_rang" class="mydict" style="width:200px;"/></div>
                    </td>
                </tr>
                <tr>
                    <th>是否多选：</th>
                    <td><input type="checkbox" id="dict_more" value="1" style="vertical-align:middle;" /><label for="dict_more" style="vertical-align:middle;">是否允许多选</label></td>
                </tr>
            </table>
        </td>
    </tr>

    <tr id="mode_files" style="display:none;">
        <td colspan="2">
            <table cellpadding="0" cellspacing="1" border="0" width="100%" class="formtable">
                <tr>
                    <th style="width:100px;">宽度：</th>
                    <td><input type="text" id="files_width" class="mytext" style="width:150px" /></td>
                </tr>
                <tr>
                    <th>文件类型：</th>
                    <td>
                        <div style="margin-top:3px;"><input type="text" id="files_filetype" class="mytext" style="width:97%" /></div>
                        <div style="margin-top:3px;">格式：*.jpg;*.png;*.gif;*.doc;*.docx</div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

</table>
<div class="buttondiv">
        <input type="submit" value=" 确 定 " onclick="confirm1();" class="mybutton" />
        <input type="button" class="mybutton" value=" 取 消 " style="margin-left: 5px;" onclick="closewin();" />
    </div>
<script type="text/javascript">
    var win = new RoadUI.Window();
    var eid = '<%=Request.QueryString["eid"]%>';
    var ele = win.getOpenerElement(eid);
    var elehidden = win.getOpenerElement(eid + "_hidden");
    $(function ()
    {
        if (elehidden.size() > 0)
        {
            var jsonstr = elehidden.val();
            if (jsonstr.length > 0)
            {
                var editjson = JSON.parse(jsonstr);
                var editmode = editjson.editmode;
                $("#editmode").val(editmode);
                $("#mode_" + editmode).show();
                switch (editmode)
                {
                    case "text":
                        $("#text_defaultvalue").val(editjson.text_defaultvalue);
                        $("#text_valuetype").val(editjson.text_valuetype);
                        $("#text_maxlength").val(editjson.text_maxlength);
                        $("#text_width").val(editjson.text_width);
                        break;
                    case "textarea":
                        $("#textarea_defaultvalue").val(editjson.textarea_defaultvalue);
                        $("#textarea_valuetype").val(editjson.textarea_valuetype);
                        $("#textarea_maxlength").val(editjson.textarea_maxlength);
                        $("#textarea_width").val(editjson.textarea_width);
                        $("#textarea_height").val(editjson.textarea_height);
                        break;
                    case "select":
                        $("#select_width").val(editjson.select_width);
                        $("input[name='select_ds'][value='" + editjson.select_ds + "']").prop("checked", true);
                        $("#select_ds_dict").val(editjson.select_ds_dict);
                        $("#select_ds_sql").val(editjson.select_ds_sql);
                        $("#select_ds_string").val(editjson.select_ds_string);
                        new RoadUI.Dict().setValue($("#select_ds_dict"));
                        break;
                    case "checkbox":
                        $("input[name='checkbox_ds'][value='" + editjson.checkbox_ds + "']").prop("checked", true);
                        $("#checkbox_ds_dict").val(editjson.checkbox_ds_dict);
                        $("#checkbox_ds_sql").val(editjson.checkbox_ds_sql);
                        $("#checkbox_ds_string").val(editjson.checkbox_ds_string);
                        new RoadUI.Dict().setValue($("#checkbox_ds_dict"));
                        break;
                    case "datetime":
                        $("#datetime_defaultvalue").val(editjson.datetime_defaultvalue);
                        $("#datetime_width").val(editjson.datetime_width);
                        $("#datetime_min").val(editjson.datetime_min);
                        $("#datetime_max").val(editjson.datetime_max);
                        $("#datetime_istime").prop("checked", "1" == editjson.datetime_istime);
                        break;
                    case "org":
                        $("#org_defaultvalue").val(editjson.org_defaultvalue);
                        $("#org_width").val(editjson.org_width);
                        $("input[name='org_rang'][value='" + editjson.org_rang + "']").prop("checked", true);
                        $("#org_rang1").val(editjson.org_rang1);
                        new RoadUI.Member().setValue($("#org_rang1"));
                        var org_type = editjson.org_type;
                        if (org_type)
                        {
                            $("input[name='org_type']").each(function ()
                            {
                                if (org_type.indexOf(',' + $(this).val() + ',') >= 0)
                                {
                                    $(this).prop('checked', true);
                                }
                            });
                        }
                        $("#org_more").prop("checked", "1" == editjson.org_more);
                        break;
                    case "dict":
                         $("#dict_width").val(editjson.dict_width);
                         $("#dict_rang").val(editjson.dict_rang);
                         new RoadUI.Dict().setValue($("#dict_rang"));
                         $("#dict_more").prop("checked", "1" == editjson.dict_more);
                         break;
                    case "files":
                         $("#files_width").val(editjson.files_width);
                         $("#files_filetype").val(editjson.files_filetype);
                         break;
                }
            }
        }
    });
    function editmode_change(mode)
    {
        $("#maintable tr[id^='mode_']").hide();
        $("#mode_" + mode).show();
    }
    function confirm1()
    {
        var mode = $("#editmode").val();
        var editjson = {};
        var edittxt = "";
        editjson.editmode = mode;
        switch (mode)
        {
            case "text":
                edittxt = "文本框";
                editjson.text_defaultvalue = $("#text_defaultvalue").val();
                editjson.text_valuetype = $("#text_valuetype").val();
                editjson.text_maxlength = $("#text_maxlength").val();
                editjson.text_width = $("#text_width").val();
                break;
            case "textarea":
                edittxt = "文本域";
                editjson.textarea_defaultvalue = $("#textarea_defaultvalue").val();
                editjson.textarea_valuetype = $("#textarea_valuetype").val();
                editjson.textarea_maxlength = $("#textarea_maxlength").val();
                editjson.textarea_width = $("#textarea_width").val();
                editjson.textarea_height = $("#textarea_height").val();
                break;
            case "select":
                edittxt = "下拉列表";
                editjson.select_width = $("#select_width").val();
                editjson.select_ds = $(":checked[name='select_ds']").val();
                editjson.select_ds_dict = $("#select_ds_dict").val();
                editjson.select_ds_sql = $("#select_ds_sql").val();
                editjson.select_ds_string = $("#select_ds_string").val();
                break;
            case "checkbox":
                edittxt = "复选框";
                editjson.checkbox_ds = $(":checked[name='checkbox_ds']").val();
                editjson.checkbox_ds_dict = $("#checkbox_ds_dict").val();
                editjson.checkbox_ds_sql = $("#checkbox_ds_sql").val();
                editjson.checkbox_ds_string = $("#checkbox_ds_string").val();
                break;
            case "datetime":
                edittxt = "日期时间";
                editjson.datetime_defaultvalue = $("#datetime_defaultvalue").val();
                editjson.datetime_width = $("#datetime_width").val();
                editjson.datetime_min = $("#datetime_min").val();
                editjson.datetime_max = $("#datetime_max").val();
                editjson.datetime_istime = $("#datetime_istime").prop("checked") ? "1" : "0";
                break;
            case "org":
                edittxt = "组织机构";
                editjson.org_defaultvalue = $("#org_defaultvalue").val();
                editjson.org_width = $("#org_width").val();
                editjson.org_rang = $(":checked[name='org_rang']").val();
                editjson.org_rang1 = $("#org_rang1").val();
                var org_type = ",";
                $(":checked[name='org_type']").each(function ()
                {
                    org_type += $(this).val() + ",";
                });
                editjson.org_type = org_type;
                editjson.org_more = $("#org_more").prop("checked") ? "1" : "0";
                break;
            case "dict":
                edittxt = "数据字典";
                editjson.dict_width = $("#dict_width").val();
                editjson.dict_rang = $("#dict_rang").val();
                editjson.dict_more = $("#dict_more").prop("checked") ? "1" : "0";
                break;
            case "files":
                edittxt = "附件";
                editjson.files_width = $("#files_width").val();
                editjson.files_filetype = $("#files_filetype").val();
                break;
        }

        editjson.title = edittxt;
        if(ele.size()>0) ele.val(edittxt);
        if(elehidden.size()>0) elehidden.val(JSON.stringify(editjson));
        win.close();
        return false;
    }
    function closewin()
    {
        win.close();
        return false;
    }
</script>
</body>
</html>