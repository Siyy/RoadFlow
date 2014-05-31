formrun = {
    getValidateType: function (valueType)//得到验证类型
    {
        valueType = valueType || "";
        var vtype = "empty";
        if (!valueType || $.trim(valueType).length == 0)
        {
            return vtype;
        }
        switch (parseInt(valueType))
        {
            case 0:
                vtype = "empty";
                break;
            case 1:
                vtype = "int";
                break;
            case 2:
                vtype = "decimal";
                break;
            case 3:
                vtype = "positiveint";
                break;
            case 4:
                vtype = "positivefloat";
                break;
            case 5:
                vtype = "negativeint";
                break;
            case 6:
                vtype = "negativefloat";
                break;
            case 7:
                vtype = "mobile";
                break;
        }
        return vtype;
    },
    initData: function (jsonData, dbtable, jsonStatus, displayModel)
    {
        if (!jsonData || !dbtable)
        {
            return;
        }
       
        if ("1" == $("#Form_HasUEditor").val())
        {
            $(".edui-default[id^='" + dbtable + "']").each(function ()
            {
                var id = $(this).attr("id");
                var filed = id.split('.')[1];
                var filedshow = 1;//字段显示状态
                var filedcheck = 0;//字段检查方式
                if ("1" != displayModel)
                {
                    var fieldstatus = '';
                    try { fieldstatus = eval("jsonStatus." + dbtable + "_" + filed); } catch (e) { }
                    if (fieldstatus.length > 0)
                    {
                        var fieldstatusArray = fieldstatus.split('_');
                        if (fieldstatusArray.length == 2)
                        {
                            filedshow = parseInt(fieldstatusArray[0]);
                            filedcheck = parseInt(fieldstatusArray[1]);
                        }
                    }
                }
                if (1 == filedcheck)
                {

                }
                else if (2 == filedcheck)
                {
                    $(this).attr("validate", "editor");
                }

                if (filedshow == 0)
                {

                }
                else if (filedshow == 1)
                {
                    var value = '';
                    try { value = eval("jsonData." + dbtable + "_" + filed); } catch (e) { }
                    $(this).after(value).remove();
                }
                else if (filedshow == 2)
                {
                    $(this).remove();
                }
            });
        }

        $("[isflow='1']").each(function ()
        {
            var $control = $(this);
            var type1 = ($control.attr("type1") || "").toLowerCase();
            var name = $control.attr("name");
            if (type1 == "flow_org" || type1 == "flow_dict" || type1 == "flow_files")//某些特定控件在原控件name上加了 _text
            {
                name = name.substr(0, name.lastIndexOf("_text"));
            }
            var field = (name || "").split('.');
            if (field.length != 2)
            {
                return true;
            }
            var fieldName = field[1];

            var fieldstatus = "1" != displayModel ? eval("jsonStatus." + dbtable + "_" + fieldName) : "";
            var validatetype = formrun.getValidateType($control.attr("valuetype"));
            var initValue = initValue = eval("jsonData." + dbtable + "_" + fieldName);

            //验证类型
            var validate = formrun.initFlowControl(type1, $control, initValue, validatetype, fieldstatus);
            if (validate && $.trim(validate).length > 0)
            {
                $control.attr("validate", validate);
            }
            
        });
        $("[issubflowtable='1']").each(function ()
        {
            var $table = $(this);
            var id = $("input[name='flowsubtable_id']", $table).val();
            var secondtable = $("input[name='flowsubtable_" + id + "_secondtable']", $table).val();
            var primarytablefiled = $("input[name='flowsubtable_" + id + "_primarytablefiled']", $table).val();
            var secondtableprimarykey = $("input[name='flowsubtable_" + id + "_secondtableprimarykey']", $table).val();
            var secondtablerelationfield = $("input[name='flowsubtable_" + id + "_secondtablerelationfield']", $table).val();
            var dbconnid = $("#Form_DBConnID").val();
            var primarytablefiledvalue = eval("jsonData." + dbtable + "_" + primarytablefiled);
            if (!primarytablefiledvalue)
            {
                var $ctls = $("tbody tr[type1='listtr'] [issubflow='1']", $table);
                for (var i = 0; i < $ctls.size() ; i++)
                {
                    var $ctl = $ctls.eq(i);
                    var subtype = $ctl.attr("type1");
                    var colname = $ctl.attr("colname");
                    var valtype = formrun.getValidateType($ctl.attr("valuetype"));
                    var subfieldstatus = "1" != displayModel ? eval("jsonStatus." + colname) : "";
                    var subvalidate = formrun.initFlowControl(subtype, $ctl, "", valtype, subfieldstatus);
                    if (subvalidate && $.trim(subvalidate).length > 0)
                    {
                        $ctl.attr("validate", subvalidate);
                    }
                }
            }
            else
            {
                var ajaxUrl = "/Platform/WorkFlow/FormDesigner/Forms/Public/GetSubTableData?secondtable=" + secondtable + "&primarytablefiled=" + primarytablefiled +
                    "&secondtableprimarykey=" + secondtableprimarykey + "&secondtablerelationfield=" + secondtablerelationfield +
                    "&primarytablefiledvalue=" + primarytablefiledvalue + "&dbconnid=" + dbconnid;
                $.ajax({
                    url: ajaxUrl, cache: false, async: false, dataType: "JSON", success: function (json)
                    {
                        var isReadonly = "1" == displayModel;//从表里只要有一个字段为只读，则隐藏最后一列添加删除行按钮
                        var countCols = [];//要计算合计的列

                        for (var i = 0; i < json.length; i++)
                        {
                            var secondtableprimarykeyvalue = eval("json[i]." + secondtable + "_" + secondtableprimarykey);
                            var $newtr = formrun.subtableNewRow($("tbody tr:first td:last input[type='button']:first", $table), secondtableprimarykeyvalue, 1, true);
                            var $tds = $("td[colname]", $newtr);
                            for (var j = 0; j < $tds.length; j++)
                            {
                                var colname = $tds.eq(j).attr("colname");
                                var colvalue = eval("json[i]." + colname);
                                var subfieldstatus = "1" != displayModel ? eval("jsonStatus." + colname) : "";
                                if (!isReadonly)
                                {
                                    var subfieldstatusArray = (subfieldstatus || "").split('_');
                                    if (subfieldstatusArray.length == 2 && subfieldstatusArray[0] == "1")
                                    {
                                        isReadonly = true;
                                    }
                                }

                                var $ctl = $("[issubflow='1']", $tds.eq(j));
                                if ($ctl.size() == 0)
                                {
                                    continue;
                                }

                                var subtype = $ctl.attr("type1");
                                var subvalidate = formrun.initFlowControl(subtype, $ctl, colvalue, "", subfieldstatus);
                                if ("1" == $ctl.attr("iscount"))
                                {
                                    countCols.push(colname);
                                }
                                if (subvalidate && $.trim(subvalidate).length > 0)
                                {
                                    $ctl.attr("validate", subvalidate);
                                }
                            }
                        }

                        //计算列合计
                        countCols = countCols.unique();
                        for (var i = 0; i < countCols.length; i++)
                        {
                            formrun.subtableCount(id, countCols[i], null, isReadonly);
                        }
                        //从表里只要有一个字段为只读，则隐藏最后一列添加删除行按钮
                        if (isReadonly)
                        {
                            $("thead tr td:last", $table).remove();
                            $("td:last", $("tbody tr[type1='listtr']", $table)).remove();
                        }
                        if (json.length > 0)
                        {
                            $("tbody tr[type1='listtr']:first", $table).remove();
                        }

                    }
                });
            }
        });
    },
    initFlowControl: function (type, $control, initValue, validatetype, fieldstatus)
    {
        var validate = "";
        var filedshow = 1;//字段显示状态
        var filedcheck = 0;//字段检查方式
        if (fieldstatus && fieldstatus.length > 0)
        {
            var fieldstatusArray = fieldstatus.split('_');
            if (fieldstatusArray.length == 2)
            {
                filedshow = parseInt(fieldstatusArray[0]);
                filedcheck = parseInt(fieldstatusArray[1]);
            }
        }
        
        switch (type)
        {
            case "flow_text":
            case "flow_hidden":
            case "subflow_text":
                if (initValue != undefined && initValue != null)
                {
                    if (filedshow == 0)
                    {
                        $control.val(initValue);
                    }
                    else if (filedshow == 1)
                    {
                        $control.after(initValue).remove();
                    }
                    else if (filedshow == 2)
                    {
                        $control.remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty," + (validatetype || "empty");
                }
                else if (2 == filedcheck)
                {
                    validate = validatetype || "empty";
                }
                break;
            case "flow_textarea":
            case "subflow_textarea":
                if (initValue != undefined && initValue != null)
                {
                    if (filedshow == 0)
                    {
                        $control.html(initValue);
                    }
                    else if (filedshow == 1)
                    {
                        $control.after('<span>' + initValue + '</span>').remove();
                    }
                    else if (filedshow == 2)
                    {
                        $control.remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty," + (validatetype || "empty");
                }
                else if (2 == filedcheck)
                {
                    validate = validatetype || "empty";
                }
                break;
            case "flow_html":
                break;
            case "flow_datetime":
            case "subflow_datetime":
                if (initValue != undefined && initValue != null)
                {
                    var value1 = "";
                    if (initValue && initValue.trim().length > 0)
                    {
                        var date = new Date(initValue);
                        if ("1" == $control.attr("istime"))
                        {
                            value1 = date.format("yyyy/MM/dd hh:mm");
                        }
                        else
                        {
                            value1 = date.format("yyyy/MM/dd");
                        }
                    }
                    if (filedshow == 0)
                    {
                        $control.val(value1);
                    }
                    else if (filedshow == 1)
                    {
                        $control.after('<span>' + value1 + '</span>').remove();
                    }
                    else if (filedshow == 2)
                    {
                        $control.remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty," + (validatetype || "empty");
                }
                else if (2 == filedcheck)
                {
                    validate = validatetype || "empty";
                }
                break;
            case "flow_org":
            case "subflow_org":
                if (initValue != undefined && initValue != null)
                {
                    if (filedshow == 0)
                    {
                        $control.prev().val(initValue);
                        new RoadUI.Member().setValue($control.prev());
                    }
                    else if (filedshow == 1)
                    {
                        $control.prev().val(initValue);
                        new RoadUI.Member().setValue($control.prev());
                        $control.prev().remove();
                        $control.next().remove();
                        $control.after('<span>' + $control.val() + '</span>');
                        $control.remove();
                    }
                    else if (filedshow == 2)
                    {
                        $control.prev().remove();
                        $control.next().remove();
                        $control.remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty,empty";
                }
                else if (2 == filedcheck)
                {
                    validate = "empty";
                }
                break;
            case "flow_dict":
            case "subflow_dict":
                if (initValue != undefined && initValue != null)
                {
                    if (filedshow == 0)
                    {
                        $control.prev().val(initValue);
                        new RoadUI.Dict().setValue($control.prev());
                    }
                    else if (filedshow == 1)
                    {
                        $control.prev().val(initValue);
                        new RoadUI.Dict().setValue($control.prev());
                        $control.prev().remove();
                        $control.next().remove();
                        $control.after('<span>' + $control.val() + '</span>');
                        $control.remove();
                    }
                    else if (filedshow == 2)
                    {
                        $control.prev().remove();
                        $control.next().remove();
                        $control.remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty,empty";
                }
                else if (2 == filedcheck)
                {
                    validate = "empty";
                }
                break;
            case "flow_radio":
            case "subflow_radio":
                if (initValue != undefined && initValue != null)
                {
                    if (filedshow == 0)
                    {
                        if (initValue == $control.val())
                        {
                            $control.prop("checked", true);
                        }
                    }
                    else if (filedshow == 1)
                    {
                        if (initValue == $control.val())
                        {
                            $control.remove();
                        }
                        else
                        {
                            $control.remove();
                            $("label[for='" + $control.attr("id") + "']").remove();
                        }
                    }
                    else if (filedshow == 2)
                    {
                        $control.remove();
                        $("label[for='" + $control.attr("id") + "']").remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty,radio";
                }
                else if (2 == filedcheck)
                {
                    validate = "radio";
                }
                break;
            case "flow_checkbox":
            case "subflow_checkbox":
                if (initValue != undefined && initValue != null)
                {
                    if (filedshow == 0)
                    {
                        if (("," + initValue + ",").indexOf("," + $control.val() + ",") >= 0)
                        {
                            $control.prop("checked", true);
                        }
                    }
                    else if (filedshow == 1)
                    {
                        if (("," + initValue + ",").indexOf("," + $control.val() + ",") >= 0)
                        {
                            $control.remove();
                        }
                        else
                        {
                            $control.remove();
                            $("label[for='" + $control.attr("id") + "']").remove();
                        }
                    }
                    else if (filedshow == 2)
                    {
                        $control.remove();
                        $("label[for='" + $control.attr("id") + "']").remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty,checkbox";
                }
                else if (2 == filedcheck)
                {
                    validate = "checkbox";
                }
                break;
            case "flow_select":
            case "subflow_select":
                if (initValue != undefined && initValue != null)
                {
                    if (filedshow == 0)
                    {
                        $control.val(initValue);
                    }
                    else if (filedshow == 1)
                    {
                        var $opts = $control.children();
                        for (var i = 0; i < $opts.size() ; i++)
                        {
                            if ($opts.eq(i).val() == initValue)
                            {
                                $control.after($opts.eq(i).text());
                                $control.remove();
                                break;
                            }
                        }
                    }
                    else if (filedshow == 2)
                    {
                        $control.remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty,empty";
                }
                else if (2 == filedcheck)
                {
                    validate = "empty";
                }
                break;
            case "flow_files":
            case "subflow_files":
                if (initValue != undefined && initValue != null)
                {
                    if (filedshow == 0)
                    {
                        if ($.trim(initValue).length > 0)
                        {
                            $control.val('共' + initValue.split('|').length + '个文件');
                        }
                        $control.prev().val(initValue);
                    }
                    else if (filedshow == 1)
                    {
                        var links = '';
                        if ($.trim(initValue).length > 0)
                        {
                            var filesArray = initValue.split('|');
                            for (var i = 0; i < filesArray.length; i++)
                            {
                                links += '<span style="margin-right:5px;"><a target="_blank" href="' + filesArray[i] + '" class="blue">' + filesArray[i].substr(filesArray[i].lastIndexOf('/') + 1) + '</a></sapn>';
                            }
                        }
                        else
                        {
                            links = "无";
                        }
                        $control.next().remove();
                        $control.prev().remove();
                        $control.after(links);
                        $control.remove();
                    }
                    else if (filedshow == 2)
                    {
                        $control.prev().remove();
                        $control.next().remove();
                        $control.remove();
                    }
                }
                if (1 == filedcheck)
                {
                    validate = "canempty,empty";
                }
                else if (2 == filedcheck)
                {
                    validate = "empty";
                }
                    
                break;
        }
        return validate;
    },
    subtableNewRow: function (but, pkValue, isAppend, isLoad)//pkValue：主键值 isAppend 0：为在当前行后增加 1：为在最后一行增加 isLoad:是否为二次加载
    {
        var $tr = $(but).parent().parent();
        var $newtr = $tr.clone(true);
        var guid = pkValue || RoadUI.Core.newid(false);
        var id = $("input[name='flowsubid']", $tr).val();
        $("[type1='subflow_text']", $newtr).each(function ()
        {
            var colname = $(this).attr("colname");
            $(this).attr("name", id + "_" + guid + "_" + colname).val("");
        });
        $("[type1='subflow_textarea']", $newtr).each(function ()
        {
            var colname = $(this).attr("colname");
            $(this).attr("name", id + "_" + guid + "_" + colname).html("");
        });
        $("[type1='subflow_select']", $newtr).each(function ()
        {
            var colname = $(this).attr("colname");
            $(this).attr("name", id + "_" + guid + "_" + colname).val("");
        });
        $("[type1='subflow_checkbox']", $newtr).each(function ()
        {
            var colname = $(this).attr("colname");
            $(this).attr("name", id + "_" + guid + "_" + colname).prop("checked", false);
        });
        $("[type1='subflow_datetime']", $newtr).each(function ()
        {
            var colname = $(this).attr("colname");
            $(this).attr("name", id + "_" + guid + "_" + colname).val("");
            new RoadUI.Calendar().init($(this));
        });
        $("[type1='subflow_dict']", $newtr).each(function ()
        {
            $(this).prev().remove();
            $(this).next().remove();
            $(this).removeClass().addClass("mydict");
            var colname = $(this).attr("colname");
            $(this).attr("name", id + "_" + guid + "_" + colname).val("");
            new RoadUI.Dict().init($(this));
        });
        $("[type1='subflow_org']", $newtr).each(function ()
        {
            var colname = $(this).attr("colname");
            $(this).attr("name", id + "_" + guid + "_" + colname).val("");
            $(this).prev().remove();
            $(this).next().remove();
            $(this).removeClass().addClass("mymember");
            new RoadUI.Member().init($(this));
        });

        $("[type1='subflow_file']", $newtr).each(function ()
        {
            var colname = $(this).attr("colname");
            $(this).attr("name", id + "_" + guid + "_" + colname).attr("value1","");
            $(this).prev().remove();
            $(this).next().remove();
            $(this).removeClass().addClass("myfile");
            new RoadUI.File().init($(this));
        });
        $("input[name^='hidden_guid_']", $newtr).val(guid);
        new RoadUI.Text().init($(".mytext", $newtr));
        new RoadUI.Button().init($(".mybutton", $newtr));
        if (1 == isAppend)
        {
            var $table = $(but).parent().parent().parent().parent();
            $("tr[type1='listtr']:last", $table).after($newtr);
        }
        else
        {
            $tr.after($newtr);
        }
        return $newtr;
    },
    subtableDeleteRow: function (but)
    {
        var $table = $(but).parent().parent().parent().parent();
        var $tr = $(but).parent().parent();
        var $tds = $("td[iscount='1']", $tr);
        if ($("tbody tr[type1='listtr']", $table).size() > 1)
        {
            $tr.remove();
        }
        //重新计算合计
        if ($tds.size() > 0)
        {
            var id = $("input[name='flowsubtable_id']", $table).val();
            for (var i = 0; i < $tds.size() ; i++)
            {
                formrun.subtableCount(id, $tds.eq(i).attr("colname"));
            }
        }
    },
    subtableCount: function (id, colname, showid, isReadonly)//从表计算合计 id:从表ID, colname:列, showid：显示合计值的label id, isReadonly:是否为只读状态
    {
        var $table = $("#subtable_" + id);
        var $tds = $("tbody td[colname='" + colname + "']", $table);
        var count = 0;
        for (var i = 0; i < $tds.size() ; i++)
        {
            var val = isReadonly ? $.trim($tds.eq(i).text()) : $("input[type1='subflow_text']", $tds.eq(i)).val();
            if (val && !isNaN(val))
            {
                count = RoadUI.Core.accAdd(count, parseFloat(val));
            }
        }
        showid = showid || "countspan_" + id + "_" + colname;
        $("#" + showid).text(count);
    }
};
