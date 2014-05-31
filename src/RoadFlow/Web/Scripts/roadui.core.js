RoadUI = function () { };
RoadUI.Core = {
    newid: function (isMiddline)
    {
        var guid = "";
        isMiddline = isMiddline == undefined ? true : isMiddline;
        for (var i = 1; i <= 32; i++)
        {
            var n = Math.floor(Math.random() * 16.0).toString(16);
            guid += n;
            if (isMiddline && (i == 8 || i == 12 || i == 16 || i == 20))
            {
                guid += "-";
            }
        }
        //$.ajax({
        //    url: "/Platform/System/GetGuid", async: false, cache: false, success: function (txt)
        //    {
        //        guid = txt;
        //    }
        //});
        //if (!isMiddline)
        //{
        //    guid = guid.replaceAll('-', '');
        //}
        return guid;
    },
    query: function (name)
    {
        var search = document.location.search;
        var pattern = new RegExp("[?&]" + name + "\=([^&]+)", "g");
        var matcher = pattern.exec(search);
        var items = null;
        if (null != matcher)
        {
            try
            {
                items = decodeURIComponent(decodeURIComponent(matcher[1]));
            } catch (e)
            {
                try
                {
                    items = decodeURIComponent(matcher[1]);
                } catch (e)
                {
                    items = matcher[1];
                }
            }
        }
        return items;
    },

    open: function (url, width, height, name)//弹出居中窗口
    {
        //弹出窗口的宽度
        var iWidth = width || 700;
        //弹出窗口的高度
        var iHeight = height || 500;
        var y = (window.screen.availHeight - 30 - iHeight) / 2;    //获得窗口的垂直位置;
        var x = (window.screen.availWidth - 10 - iWidth) / 2;      //获得窗口的水平位置;
        return window.open(url, name || "newwindow_" + RoadUI.Core.newid(false), 'height=' + iHeight + ',width=' + iWidth + ',top=' + y + ',left=' + x + ',toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no');
    },

    accDiv: function (arg1, arg2)//返回值：arg1除以arg2的精确结果
    {
        var t1 = 0, t2 = 0, r1, r2;
        try { t1 = arg1.toString().split(".")[1].length } catch (e) { }
        try { t2 = arg2.toString().split(".")[1].length } catch (e) { }
        with (Math)
        {
            r1 = Number(arg1.toString().replace(".", ""))
            r2 = Number(arg2.toString().replace(".", ""))
            return (r1 / r2) * pow(10, t2 - t1);
        }
    },

    accMul: function (arg1, arg2)//返回值：arg1乘以 arg2的精确结果
    {
        var m = 0, s1 = arg1.toString(), s2 = arg2.toString();
        try { m += s1.split(".")[1].length } catch (e) { }
        try { m += s2.split(".")[1].length } catch (e) { }
        return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m)
    },

    accAdd: function (arg1, arg2)// 返回值：arg1加上arg2的精确结果
    {
        var r1, r2, m, c;
        try { r1 = arg1.toString().split(".")[1].length } catch (e) { r1 = 0 }
        try { r2 = arg2.toString().split(".")[1].length } catch (e) { r2 = 0 }
        c = Math.abs(r1 - r2);
        m = Math.pow(10, Math.max(r1, r2))
        if (c > 0)
        {
            var cm = Math.pow(10, c);
            if (r1 > r2)
            {
                arg1 = Number(arg1.toString().replace(".", ""));
                arg2 = Number(arg2.toString().replace(".", "")) * cm;
            }
            else
            {
                arg1 = Number(arg1.toString().replace(".", "")) * cm;
                arg2 = Number(arg2.toString().replace(".", ""));
            }
        }
        else
        {
            arg1 = Number(arg1.toString().replace(".", ""));
            arg2 = Number(arg2.toString().replace(".", ""));
        }
        return (arg1 + arg2) / m
    },

    accSub: function (arg1, arg2)// 返回值：arg1减去arg2的精确结果
    {
        var r1, r2, m, n;
        try { r1 = arg1.toString().split(".")[1].length } catch (e) { r1 = 0 }
        try { r2 = arg2.toString().split(".")[1].length } catch (e) { r2 = 0 }
        m = Math.pow(10, Math.max(r1, r2));
        //last modify by deeka
        //动态控制精度长度
        n = (r1 >= r2) ? r1 : r2;
        return ((arg1 * m - arg2 * m) / m).toFixed(n);
    },
    intDiv: function (number1, number2)//整除
    {
        var num1 = Math.round(number1);
        var num2 = Math.round(number2);
        var result = num1 / num2;
        if (result >= 0)
        {
            result = Math.floor(result);
        }
        else
        {
            result = Math.ceil(result);
        }
        return result;
    }
};

RoadUI.Xml = {
    getXmlDom: function ()
    {
        var xmldoc;
        if (window.ActiveXObject)
        {
            xmldoc = new ActiveXObject("Microsoft.XMLDOM");
        }
        else
        {
            if (document.implementation && document.implementation.createDocument)
            {
                xmldoc = document.implementation.createDocument("", "doc", null);
            }
        }
        return xmldoc;
    },
    loadXML: function (xml)
    {
        var xmldoc = RoadUI.Xml.getXmlDom();
        xmldoc.async = false;
        try
        {
            xmldoc.loadXML(xml);
        }
        catch (e)
        {
            xmldoc = new DOMParser().parseFromString(xml, "text/xml");
        }
        return xmldoc;
    },
    getElementValue: function (elements)
    {
        return elements && elements.length > 0 && elements[0].firstChild ? elements[0].firstChild.nodeValue : "";
    }
};

String.prototype.isInteger = function ()
{
    return (new RegExp(/^\d+$/).test(this));
};
String.prototype.isNumber = function (value, element)
{
    return (new RegExp(/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/).test(this));
};
String.prototype.trim = function ()
{
    return this.replace(/(^\s*)|(\s*$)/g, "");
};
String.prototype.isNullOrEmpty =function()
{
    return !this || this.length == 0 || this.trim().length == 0;
};
String.prototype.startWith = function (pattern)
{
    return this.indexOf(pattern) === 0;
};
String.prototype.endWith = function (pattern)
{
    var d = this.length - pattern.length;
    return d >= 0 && this.lastIndexOf(pattern) === d;
};
String.prototype.encodeTXT = function ()
{
    return (this).replaceAll('&', '&amp;').replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll(" ", "&nbsp;");
};
String.prototype.isMail = function ()
{
    return (new RegExp(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/).test(this.trim()));
};
String.prototype.isPhone = function ()
{
    return (new RegExp(/(^([0-9]{3,4}[-])?\d{3,8}(-\d{1,6})?$)|(^\([0-9]{3,4}\)\d{3,8}(\(\d{1,6}\))?$)|(^\d{3,8}$)/).test(this));
};
String.prototype.isUrl = function ()
{
    return (new RegExp(/^[a-zA-z]+:\/\/([a-zA-Z0-9\-\.]+)([-\w .\/?%&=:]*)$/).test(this));
};
String.prototype.isExternalUrl = function ()
{
    return this.isUrl() && this.indexOf("://" + document.domain) == -1;
};
String.prototype.replaceAll = function (s1,s2)
{
    var str = this;
    while (str.indexOf(s1) != -1)
    {
        str = str.replace(s1, s2);
    }
    return str;
};
Date.prototype.format = function (format)
{
    var o = {
        "M+": this.getMonth() + 1, 
        "d+": this.getDate(),
        "h+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        "S": this.getMilliseconds()
    }
    if (/(y+)/.test(format))
    {
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    for (var k in o)
    {
        if (new RegExp("(" + k + ")").test(format))
        {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
};
Array.prototype.unique = function ()
{
    var res = [];
    var json = {};
    for (var i = 0; i < this.length; i++)
    {
        if (!json[this[i]])
        {
            res.push(this[i]);
            json[this[i]] = 1;
        }
    }
    return res;
};

var currentFocusObj = null; //当前焦点对象
function initElement($elements, type)
{
    if (!$elements || $elements.size() == 0)
    {
        return;
    }
    var cssType = type;

    $elements.addClass(cssType + "1")
    .bind("mouseover", function ()
    {
        $(this).removeClass().addClass(cssType + "2");
    }).bind("mouseout", function ()
    {
        if (currentFocusObj == null || $(this).get(0) !== currentFocusObj)
        {
            $(this).removeClass().addClass(cssType + "1");
        }
    }).bind("focus", function ()
    {
        if (currentFocusObj != null)
        {
            var css = $(currentFocusObj).attr("class").replace("1", "").replace("2", "");
            $(currentFocusObj).removeClass().addClass(css + "1");
        }
        $(this).removeClass().addClass(cssType + "2");

        currentFocusObj = $(this).get(0);
    });
}







 