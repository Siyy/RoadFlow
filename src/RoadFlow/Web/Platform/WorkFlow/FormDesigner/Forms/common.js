formrun = {
    //得到验证类型
    getValidateType: function (valueType)
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
            var field = name.split('.');
            if (field.length != 2)
            {
                return true;
            }
            var fieldName = field[1];

            var filedshow = 1;//字段显示状态
            var filedcheck = 0;//字段检查方式
            if ("1" != displayModel)
            {
                var fieldstatus = '';
                try { fieldstatus = eval("jsonStatus." + dbtable + "_" + fieldName); } catch (e) { }
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

            var validate = "";//验证类型
            var validatetype = formrun.getValidateType($control.attr("valuetype"));
            var initValue = '';
            try { initValue = eval("jsonData." + dbtable + "_" + fieldName); } catch (e) {}

            switch (type1)
            {
                case "flow_text":
                case "flow_hidden":
                    if (initValue != undefined && initValue != null)
                    {
                        if (filedshow == 0)
                        {
                            $control.html(initValue);
                        }
                        else if (filedshow == 1)
                        {
                            $control.remove();
                        }
                        else if (filedshow == 2)
                        {
                            $control.remove();
                        }
                    }
                    if (1 == filedcheck)
                    {
                        validate = "canempty," + validatetype;
                    }
                    else if (2 == filedcheck)
                    {
                        validate = "empty";
                    }
                    break;
                case "flow_textarea":
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
                        validate = "canempty," + validatetype;
                    }
                    else if (2 == filedcheck)
                    {
                        validate = "empty";
                    }
                    break;
                case "flow_html":
                    break;
                case "flow_datetime":
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
                            $control.after('<span>' + initValue + '</span>').remove();
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
                case "flow_org":
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
                    if (initValue != undefined && initValue != null)
                    {
                        if (filedshow == 0)
                        {
                            $control.val(initValue);
                        }
                        else if (filedshow == 1)
                        {
                            var opts = $control.children();
                            for (var i = 0; i < opts.size() ; i++)
                            {
                                if (opts.eq(i).val == initValue)
                                {
                                    $control.after(opts.eq(i).text());
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
            
            if (validate && $.trim(validate).length > 0)
            {
                $control.attr("validate", validate);
            }
            
        });

    }
};