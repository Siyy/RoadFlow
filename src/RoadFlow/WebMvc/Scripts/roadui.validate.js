
//验证
; RoadUI.Validate = function ()
{
    var instance = this;
    this.bind = function ($elements)
    {
        if (!$elements || $elements.size() == 0)
        {
            return;
        }
        $elements.each(function ()
        {
            var $this = $(this);
            var type = $this.attr("type");
            if ((typeof type) == "string" && !type.isNullOrEmpty())
            {
                if (type.toLowerCase() == "radio" || type.toLowerCase() == "checkbox")
                {
                    $this.bind("change", function () { instance.validateElement($this); });
                }
                else
                {
                    $this.bind("blur", function () { instance.validateElement($this); });
                }
            }

        });
    };
    this.unbind = function ()
    {
        $("[validate]").each(function ()
        {
            var $this = $(this);
            var type = $this.attr("type");
            if ((typeof type) == "string" && !type.isNullOrEmpty())
            {
                if (type.toLowerCase() == "radio" || type.toLowerCase() == "checkbox")
                {
                    $this.unbind("change");
                }
                else
                {
                    $this.unbind("blur");
                }
            }

        });
    };
    // form1 要验证的form,对象或id  promptType提示方式 0:window.alert 1:输入框后面提示 2:输入框后面提示后显示图标，不显示文字
    this.validateForm = function (form1, promptType)
    {
        var $f;
        if ((typeof form1) == 'string')
        {
            $f = $("#" + $.trim(form1));
        }
        else
        {
            $f = $(form1);
        }
        if (!$f || $f.size() == 0)
        {
            return;
        }

        var flag = true;
        $("[validate]", $f).each(function ()
        {
            var flag1 = instance.validateElement($(this), promptType);
            if (!flag1 && promptType == 0)
            {
                flag = false;
                return false;
            }
            if (flag && !flag1)
            {
                flag = flag1;
            }
        });
        var e = arguments.callee.caller.arguments[0] || window.event;
        if (flag && e && e.srcElement != null)
        {
            var $submits = $("input[type='submit']", $f);
            $submits.prop("disabled", true);
            var eventElement = e.srcElement;
            if (eventElement)
            {
                $submits.each(function ()
                {
                    if ($(this).get(0) === e.srcElement)
                    {
                        $f.append('<input type="hidden" name="' + $(this).attr("name") + '" value="' + $(this).val() + '" />');
                    }
                });
                if ("INPUT" == e.srcElement.tagName)
                {
                    $f.submit();
                }
            }
        }
       
        return flag;
    };
    this.validateElement = function ($element, promptType)
    {
        if (!$element)
        {
            return false;
        }
        var $ele = $($element);
        if (!$ele || $ele.size() == 0)
        {
            return false;
        }
        var validateType = $ele.attr("validate");
        if (validateType.isNullOrEmpty())
        {
            return false;
        }
        var validateArray = validateType.split(',');
        if (validateArray.length > 1)
        {

            var cannullFlag = false;
            var arrIndex = null;
            for (var j = 0; j < validateArray.length; j++)
            {
                if (validateArray[j].toLowerCase() == "canempty" || validateArray[j].toLowerCase() == "cannull")
                {
                    cannullFlag = true;
                    arrIndex = j;
                }
            }
            if (cannullFlag)
            {
                if (!isNaN(arrIndex))
                {
                    validateArray.splice(arrIndex, 1);
                }
                var errmsg = "";
                var vflag = $ele.val() == null || $ele.val() == undefined || $.trim($ele.val()).length == 0;
                this.validateCompleted($ele, validateFlag1, promptType, errmsg, false);
                if (vflag)
                {
                    return true;
                }
            }
        }

        for (var i = 0; i < validateArray.length; i++)
        {
            if ($.trim(validateArray[i].toString()).length == 0)
            {
                continue;
            }
            var validateFlag1 = true;
            switch (validateArray[i].toString().trim().toLowerCase())
            {
                case "notnull":
                case "notempty":
                case "null":
                case "empty":
                    var errmsg = $ele.attr("errmsg") || "不能为空";
                    validateFlag1 = this.isNotEmpty($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "int":
                case "integer":
                    var errmsg = $ele.attr("errmsg") || "只能是整数";
                    validateFlag1 = this.isInt($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "positiveint":
                    var errmsg = $ele.attr("errmsg") || "只能是正整数"; 
                    validateFlag1 = this.isPositiveInt($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "negativeint":
                    var errmsg = $ele.attr("errmsg") || "只能是负整数";
                    validateFlag1 = this.isNegativeInt($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "decimal":
                case "numeric":
                case "float":
                case "double":
                    var errmsg = $ele.attr("errmsg") || "只能是有效数字";
                    validateFlag1 = this.isDigital($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "positivefloat":
                    var errmsg = $ele.attr("errmsg") || "只能是正实数";
                    validateFlag1 = this.isPositiveFloat($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "negativefloat":
                    var errmsg = $ele.attr("errmsg") || "只能是负实数";
                    validateFlag1 = this.isNegativeFloat($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "chinese":
                    var errmsg = $ele.attr("errmsg") || "只能是汉字";
                    validateFlag1 = this.isChinese($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "mail":
                case "email":
                    var errmsg = $ele.attr("errmsg") || "邮箱格式错误";
                    validateFlag1 = this.isEmail($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "phone":
                case "mobile":
                case "phonenumber":
                case "mobilenumber":
                    var errmsg = $ele.attr("errmsg") || "手机号码错误";
                    validateFlag1 = this.isPhoneNumber($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "ip":
                    var errmsg = $ele.attr("errmsg") || "IP地址格式错误";
                    validateFlag1 = this.isIp($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "datetime":
                    var errmsg = $ele.attr("errmsg") || "日期时间格式错误";
                    validateFlag1 = this.isDateTime($ele.val());
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "let":
                    var let = $ele.attr("validate_let") || "0";
                    let = parseInt(let);
                    if (!let) let = 0;
                    var errmsg = $ele.attr("errmsg") || "不能小于" + let + "个字符";
                    validateFlag1 = this.isLet($ele.val(), let);

                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "get":
                    var get = $ele.attr("validate_get") || "0";
                    get = parseInt(get);
                    if (!get) get = 0;
                    var errmsg = $ele.attr("errmsg") || "不能大于" + get + "个字符";
                    validateFlag1 = this.isGet($ele.val(), get);
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "ajax":
                    var url = $ele.attr("validate_url");
                    validateFlag1 = this.isAjax($ele.val(), url);
                    var errmsg = $ele.attr("errmsg") || validateFlag1[1];
                    this.validateCompleted($ele, validateFlag1[0], promptType, errmsg, true);
                    break;
                case "equal":
                    var equalid = $ele.attr("validate_equalfor");
                    var $equalobj = $("#" + equalid.trim());
                    var val = $equalobj != null && $equalobj.size() > 0 ? $equalobj.val() : "";
                    validateFlag1 = this.isEqual($ele.val(), val);
                    var errmsg = $ele.attr("errmsg") || "验证错误";
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "checkbox":
                    var errmsg = $ele.attr("errmsg") || "至少选择一项";
                    validateFlag1 = this.validateCheclbox($ele);
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "radio":
                    var errmsg = $ele.attr("errmsg") || "必须选择一项";
                    validateFlag1 = this.validateRadio($ele);
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
                case "editor":
                    var errmsg = $ele.attr("errmsg") || "不能为空";
                    validateFlag1 = UE.getEditor($element.attr("id")).hasContents();
                    //validateFlag1 = $.trim(html).length > 0;
                    this.validateCompleted($ele, validateFlag1, promptType, errmsg, true);
                    break;
            }

            if (!validateFlag1)
            {
                return false;
            }
        }
        return true;
    };
    this.validateCompleted = function ($element, isSuccess, promptType, errMessage, showInfo)
    {
        if (promptType == undefined)
        {
            promptType = 1;
        }
        switch (promptType)
        {
            case 0:
                if (!isSuccess)
                {
                    window.alert(errMessage);
                    try { $element.focus(); } catch (e) { }
                }
                break;
            case 1:
            case 2:
                var $span = $element.nextAll(".validate,.validate1,.validate2");
                if ($span.size() > 0)
                {
                    $span.first()
                }
                else
                {
                    $span = $('<span class="validate"></span>');
                    $element.parent().append($span);
                }
                if (promptType == 1)
                {
                    $span.text(isSuccess ? "" : errMessage);
                    if (showInfo)
                    {
                        //如果验证成功则不显示任何信息，如果要显示则将 validate改为validate1
                        $span.removeClass().addClass(isSuccess ? "validate" : promptType == 1 ? "validate2" : "validate3");
                    }
                    else
                    {
                        $span.removeClass().addClass("validate");
                    }
                }
                else
                {
                    if (!isSuccess)
                    {
                        $span.text("").attr("title", errMessage);;
                        $span.removeClass("").addClass("validate3");
                    }
                    else
                    {
                        $span.removeClass("").addClass("validate").remove();
                    }
                }
                break;
        }
    };
    this.isNotEmpty = function (val)
    {
        return val != null && val != undefined && $.trim(val.toString()).length > 0;
    };
    this.isDigital = function (val)
    {
        return this.isInt(val) || this.isFloat(val);
    };
    this.isInt = function (val)
    {
        var reg = /^(-|\+)?\d+$/;
        return reg.test(val);
    };
    this.isPositiveInt = function (val)
    {
        return this.isInt(val) && parseInt(val) >= 0;
    };
    this.isNegativeInt = function (val)
    {
        return this.isInt(val) && parseInt(val) < 0;
    };
    this.isFloat = function (val)
    {
        var reg = new RegExp("^[0-9]*\.[0-9]+$");
        return reg.exec(val) && this.isInt($.trim(val).substring(0, 1));
    };
    this.isPositiveFloat = function (val)
    {
        return (this.isFloat(val) || this.isInt(val)) && parseFloat(val) >= 0;
    };
    this.isNegativeFloat = function (val)
    {
        return (this.isFloat(val) || this.isInt(val)) && parseFloat(val) < 0;
    };
    this.isChinese = function (val)//是否为中文
    {
        var reg = /^[\u0391-\uFFE5]+$/;
        return reg.test(val);
    };
    this.isEmail = function (val)//是否为email
    {
        var reg = /^[-_A-Za-z0-9\.]+@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
        return reg.test(val);
    };
    this.isIp = function (val)//是否为IP
    {
        var check = function (v) { try { return (v <= 255 && v >= 0); } catch (x) { return false; } }
        var re = val.split("."); return (re.length == 4) ? (check(re[0]) && check(re[1]) && check(re[2]) && check(re[3])) : false;
    };
    this.isPhoneNumber = function (val)//是否为手机号码
    {
        return /^13\d{9}$/g.test(val) || (/^15[0-35-9]\d{8}$/g.test(val)) || (/^18[00-9]\d{8}$/g.test(val))
    };
    this.isDateTime = function (val)
    {
        return true;
    };

    this.isAjax = function (val, url)
    {
        var txt = "";
        $.ajax({ url: url, async: false, type: "POST", data: { "value": val }, cache: false, complete: function (response)
        {
            txt = $.trim(response.responseText);
        }
        });
        return ["1" == txt || "true" == txt, txt];
    };
    this.isLet = function (val, let)
    {
        if (!this.isNotEmpty(val) || !this.isInt(let))
        {
            return false;
        }
        return $.trim(val).length >= parseInt(let);
    };
    this.isGet = function (val, get)
    {
        if (!this.isNotEmpty(val) || !this.isInt(get))
        {
            return true;
        }
        return $.trim(val).length <= parseInt(get);
    };
    this.isEqual = function (val, val1)
    {
        return val === val1;
    };
    this.validateCheclbox = function ($e)
    {
        var name = $e.attr('name');
        return $(":checkbox:checked[name='" + $.trim(name) + "']").size() > 0;
    };
    this.validateRadio = function ($e)
    {
        var name = $e.attr('name'); var flag = true;
        return $(":radio:checked[name='" + $.trim(name) + "']").size() > 0;
    };
}