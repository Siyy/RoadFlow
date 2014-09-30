//右键菜单
; RoadUI.Menu = function (options)
{
    var defaults = {
        srcElement: null,
        id: "",
        clickClose: true //是否点击后立即关闭

    };
    this.opts = $.extend(defaults, options);
    this.$srcObj = null;
    if (this.opts.id.isNullOrEmpty() && this.opts.srcElement == null)
    {
        throw "要添加右键菜单的对象或对象ID为空!"; return true;
    }
    else
    {
        this.$srcObj = this.opts.srcElement != null ? $(this.opts.srcElement) : $("#" + this.opts.id);
        if (this.$srcObj == null || this.$srcObj.size() == 0)
        {
            throw "要添加右键菜单的对象为空!"; return true;
        }
    }
    if (!this.opts.id)
    {
        this.opts.id = this.$srcObj.attr("id");
    }
    var instance = this;
    var isHide = true;
    var $contextMenuDiv = $('<div id="roadui_contextmenu_' + this.opts.id + '" class="ctxmenu"></div>');
    var $contextMenuTable = $('<table cellpadding="0" cellspacing="0" border="0" ></table>');
    $contextMenuDiv.append($contextMenuTable);
    $contextMenuDiv.bind("mouseout", function () { isHide = true; window.setTimeout(hide, 1); })
    .bind("mouseover", function () { isHide = false; });

    $("body").append($contextMenuDiv);
    $contextMenuDiv.hide();
    this.$srcObj.contextmenu(function (e)
    {
        var $menu = $("#roadui_contextmenu_" + instance.opts.id);
        if ($menu == null || $menu.size() == 0)
        {
            return false;
        }

        var left = e ? e.clientX : event.clientX;
        var top = e ? e.clientY : event.clientY;
        var menuwidth = $menu.width();
        var bodywidth = $("body").width();
        if (left + menuwidth > bodywidth)
        {
            left = bodywidth - menuwidth - 5;
        }
        $menu.css({ "top": top, "left": left });
        $menu.focus();
        $menu.show();
        return false;
    });
    //添加菜单项
    this.addItem = function (options)
    {
        var defaults = {
            type: 0,
            ico: "",
            title: "",
            enabled: true, //是否可用
            onclick: null //点击事件
        };
        var opts = $.extend(defaults, options);
        if (!opts.title && opts.type == 0)
        {
            return false;
        }

        if (opts.type == 0)
        {
            var $item = $('<tr type="menu"><td class="ctxmenuimg">' + (opts.ico ? '<img align="absmiddle" src="' + opts.ico + '" />' : '') + '</td><td class="' + (opts.enabled ? 'ctxmenutxt' : 'ctxmenutxt_disabled') + '">' + opts.title + '</td></tr>');
            if (opts.enabled)
            {
                $item.bind("click", function ()
                {
                    if (!opts.enabled)
                    {
                        return;
                    }
                    if ($.isFunction(opts.onclick))
                    {
                        opts.onclick();
                    }
                    if (instance.opts.clickClose)
                    {
                        $contextMenuDiv.hide();
                    }
                });
            }
            $item.bind("mouseover", function ()
            {
                isHide = false;
                if (opts.enabled)
                {
                    $(this).children("td:first").removeClass("ctxmenuimg").addClass("ctxmenuimg1");
                    $(this).children("td:last").removeClass("ctxmenutxt").addClass("ctxmenutxt1");
                }
            })
            .bind("mouseout", function ()
            {
                isHide = true;
                if (opts.enabled)
                {
                    $(this).children("td:first").removeClass("ctxmenuimg1").addClass("ctxmenuimg");
                    $(this).children("td:last").removeClass("ctxmenutxt1").addClass("ctxmenutxt");
                }
            });

            $contextMenuTable.append($item);
            $item.data("opts", opts);
        }
        else
        {
            var $item = $('<tr><td class="ctxmenuimg_disabled">' + (opts.ico ? '<img align="absmiddle" src="' + opts.ico + '" />' : '') + '</td><td style="padding:0 4px 0 0;height:15px;"><div class="ctxmenu_itemsplit"></div></td></tr>');
            $item.bind("mouseover", function () { isHide = false; })
            .bind("mouseout", function () { isHide = true; });
            $contextMenuTable.append($item);
        }
    };
    //设置菜单项是否可用
    this.setDisabled = function (index, disabled)
    {
        var $tr = $contextMenuTable.children().children("tr[type]:eq(" + index + ")");
        if ($tr == null || $tr.size() == 0)
        {
            return false;
        }
        if (disabled)
        {
            var opts = $tr.data("opts");
            $tr.unbind("click").bind("click", function ()
            {
                if (!opts.enabled)
                {
                    return;
                }
                if ($.isFunction(opts.onclick))
                {
                    opts.onclick();
                }
                if (instance.opts.clickClose)
                {
                    $contextMenuDiv.hide();
                }
            })
            .bind("mouseover", function ()
            {
                isHide = false;
                $(this).children("td:first").removeClass("ctxmenuimg").addClass("ctxmenuimg1");
                $(this).children("td:last").removeClass("ctxmenutxt").addClass("ctxmenutxt1");
            })
            .bind("mouseout", function ()
            {
                isHide = true;
                $(this).children("td:first").removeClass("ctxmenuimg1").addClass("ctxmenuimg");
                $(this).children("td:last").removeClass("ctxmenutxt1").addClass("ctxmenutxt");
            });
            $tr.children("td:first").removeClass("ctxmenuimg1").addClass("ctxmenuimg");
            $tr.children("td:last").removeClass("ctxmenutxt1").addClass("ctxmenutxt");
        }
        else
        {
            $tr.unbind("click").unbind("mouseover").unbind("mouseout").bind("mouseover", function () { isHide = false; }).bind("mouseout", function () { isHide = true; });
            $tr.children("td:first").removeClass().addClass("ctxmenuimg_disabled");
            $tr.children("td:last").removeClass().addClass("ctxmenutxt_disabled");
        }
    };
    var hide = function ()
    {
        if (isHide)
        {
            $contextMenuDiv.hide();
        }
    };
}