
//Tab标签
;RoadUI.Tab = function (options)
{
    var defaults = {
        id: "",
        srcElement: null, //源对象,当此为空时则用ID获取
        replace: false, //如果打开相同ID的标签，则替换掉原标签
        dblclickclose: true //是否双击关闭
    };
    this.opts = $.extend(defaults, options);
    this.$tabDiv = null;
    if (this.opts.id.isNullOrEmpty() && this.opts.srcElement == null)
    {
        throw "要初始化为tab的对象或对象ID为空!"; return false;
    }
    else
    {
        this.$tabDiv = this.opts.srcElement != null ? $(this.opts.srcElement) : $("#" + this.opts.id);
        if (this.$tabDiv == null || this.$tabDiv.size() == 0)
        {
            throw "要初始化为tab的对象!"; return false;
        }
    }
    var instance = this;
    //是否显示了滚动条, 只有显示了滚动条在关闭按钮时才调整滚动
    this.scrollbar = false;
    this.opts.srcElement = this.$tabDiv;
    if (!this.opts.id)
    {
        this.opts.id = this.$srcObj.attr("id");
    }
    var contextMenu;

    //初始化标签
    this.init = function ()
    {
        var $contents = this.$tabDiv.children("div");
        var $tabTitle = $('<div class="tab_title"></div>');
        var $tabTitleLeft = $('<div class="tab_title_left"></div>');
        var $tabTitleRight = $('<div class="tab_title_right"></div>');
        var $tabTitleUL = $('<ul class="tab_title_ul" id="tab_ul_' + instance.opts.id + '"></ul>');
        var tabDivHeight = parseInt(this.$tabDiv.get(0).style.height) || 0;
        $tabTitleLeft.hide();
        $tabTitleRight.hide();

        for (var i = 0; i < $contents.size(); i++)
        {
            var $tab = $contents.eq(i);
            var liID = this.getTabID($tab.attr("id"));
            var tabtitle = $tab.attr("title");
            var isTitle = tabtitle > 14;
            var fullTitle = tabtitle;
            tabtitle = isTitle ? tabtitle(0, 12) + "…" : tabtitle;
            //是否显示关闭按钮
            var isClose = $tab.attr("close") && ($tab.attr("close").toLowerCase() == "1" || $tab.attr("close").toLowerCase() == "true");
            var $li = $('<li class="tab_title_ul_li" itemid="' + liID + '" close="' + (isClose ? "1" : "0") + '"></li>');
            var $divText = $('<div class="tab_title_ul_li_txt" ' + (isClose ? ' style="padding-right:2px;"' : '') + ' ' + (isTitle ? 'title="' + fullTitle + '"' : '') + '>' + tabtitle + '</div>');
            $li.bind("click", function () { instance.setActive($(this).attr("itemid")); });
            if (this.opts.dblclickclose)
            {
                $li.bind("dblclick", function () { instance.closeTab($(this).attr("itemid")); });
            }
            var $divClose = $('<div class="tab_title_ul_li_close"><div class="tab_title_ul_li_close_div"></div></div>');
            if (isClose)
            {
                $divClose.bind("mouseover", function () { $(this).children("div").removeClass().addClass("tab_title_ul_li_close_div_over"); })
                .bind("mouseout", function () { $(this).children("div").removeClass().addClass("tab_title_ul_li_close_div"); })
                .bind("click", function () { instance.closeTab($(this).parent().attr("itemid")); });
            }
            else
            {
                $divClose.hide();
            }
            $li.append($divText, $divClose);
            $tabTitleUL.append($li);
            $tab.attr("title", "");
            $li.contextmenu(function (e)
            {
                instance.setActive($(this).attr("itemid"));
                if (contextMenu)
                {
                    contextMenu.setDisabled(0, $(this).attr("close") && $(this).attr("close") == "1");
                }
            });
            //如果规定了高度，则限制溢出后显示滚动条
            if (tabDivHeight > 0 && !$tab.attr("isiframe"))
            {
                $tab.css({ "height": (tabDivHeight - 26) + "px", "overflow": "auto" });
            }
        }
        $tabTitleLeft.bind("mouseover", function ()
        {
            $(this).removeClass().addClass("tab_title_left_over");
        }).bind("mouseout", function ()
        {
            $(this).removeClass().addClass("tab_title_left");
        }).bind("click", function ()
        {
            instance.moveLeft(); ;
        });

        $tabTitleRight.bind("mouseover", function ()
        {
            $(this).removeClass().addClass("tab_title_right_over");
        }).bind("mouseout", function ()
        {
            $(this).removeClass().addClass("tab_title_right");
        }).bind("click", function ()
        {
            instance.moveRight()
        });

        $tabTitle.append($tabTitleLeft, $tabTitleUL, $tabTitleRight);
        $tabTitle.append('<div style="clear:both;"></div>');

        if ($contents.size() > 0)
        {
            $contents.first().before($tabTitle);
            this.setActive($contents.eq(0).attr("id")); //初始化时设置第一个标签为活动
        }
        else
        {
            this.$tabDiv.append($tabTitle);
        }

        try
        {
            var baseurl = top.rootdir;
            contextMenu = new RoadUI.Menu({ srcElement: $tabTitleUL });
            contextMenu.addItem({ ico: baseurl + "images/ico/cross.png", title: "关闭", onclick: function () { instance.closeCurrent() } });
            contextMenu.addItem({ ico: "", title: "除此之外全部关闭", onclick: function () { instance.closeOther(); } });
            contextMenu.addItem({ ico: "", title: "全部关闭", onclick: function () { instance.closeAll(); } });
            contextMenu.addItem({ type: 1 });
            contextMenu.addItem({ ico: baseurl + "images/ico/Refresh.png", title: "刷新", onclick: function () { instance.refresh(); } });
        }
        catch (e) { }
        this.checkMore(true, false, false, false);
    };
    //设置活动标签
    //tabID 要设置的标签id
    this.setActive = function (tabID)
    {
        var $lis = this.$tabDiv.children(".tab_title").children("ul").children("li");
        var $contents = this.$tabDiv.children("div[id]");

        for (var i = 0; i < $lis.size(); i++)
        {
            var isCurrent = $lis.eq(i).attr("itemid") == tabID;
            $lis.eq(i).removeClass().addClass(isCurrent ? "tab_title_ul_li_over" : "tab_title_ul_li");
            $lis.eq(i).children("div:first").removeClass().addClass(isCurrent ? "tab_title_ul_li_txt_over" : "tab_title_ul_li_txt");
        }
        for (var i = 0; i < $contents.size(); i++)
        {
            var isCurrent = $contents.eq(i).attr("id") == tabID;
            if (isCurrent)
            {
                $contents.eq(i).show();
            }
            else
            {
                $contents.eq(i).hide();
            }
        }

    };
    //添加标签
    //id:"" 标签id如果为空，则自动生成
    //title:标签标题
    //close:是否可以关闭
    //html:标签显示的html
    //domid:标签显示的某个元素的id
    //src:标签显示的url地址，以iframe形式加载
    //callbakc:回调函数
    this.addTab = function (options)
    {
        var defaults = {
            id: "",
            title: "新标签", //标签标题
            close: true, //是否显示关闭按钮
            html: "",
            domid: "",
            src: "",
            callback: null //添加后回调函数
        };

        var opts = $.extend(defaults, options);
        var $ul = this.$tabDiv.children(".tab_title").children("ul");
        var tabHeight = parseInt(this.$tabDiv.get(0).style.height) || 0;

        if (this.opts.replace && opts.id && $ul.children("li[itemid='" + opts.id + "']").size() > 0)
        {
            this.closeTab(opts.id, false);
        }
        var fulltitle = opts.title;
        var isTitle = opts.title.length > 14;
        opts.title = isTitle ? opts.title.substr(0, 12) + "…" : opts.title;
        var tabID = this.getTabID(opts.id);
        var $li = $('<li class="tab_title_ul_li" itemid="' + tabID + '" close="' + (opts.close ? "1" : "0") + '"></li>');
        var $divText = $('<div class="tab_title_ul_li_txt"' + (opts.close ? ' style="padding-right:2px;"' : '') + ' ' + (isTitle ? 'title="' + fulltitle + '"' : '') + '>' + opts.title + '</div>');
        var $divClose = $('<div class="tab_title_ul_li_close"><div class="tab_title_ul_li_close_div"></div></div>');
        $divClose.bind("mouseover", function () { $(this).children("div").removeClass().addClass("tab_title_ul_li_close_div_over"); })
        .bind("mouseout", function () { $(this).children("div").removeClass().addClass("tab_title_ul_li_close_div"); })
        .bind("click", function () { instance.closeTab(tabID); });
        if (!opts.close)
        {
            $divClose.hide();
        }
        $li.append($divText, $divClose);
        $li.bind("click", function () { instance.setActive(tabID); });
        if (this.opts.dblclickclose)
        {
            $li.bind("dblclick", function () { instance.closeTab(tabID); });
        }

        var $content = $('<div id="' + tabID + '"></div>');
        if (opts.html)
        {
            $content.html(opts.html);
        }
        else if (opts.domid)
        {
            var $dom = $("#" + opts.domid);
            if ($dom != null)
            {
                $content.append($dom);
            }
        }
        else if (opts.src)
        {
            $content.attr("isiframe", "1");
            var iframdHeight = parseInt(this.$tabDiv.height());
            var iframeSrc = opts.src.indexOf('?') >= 0 ? opts.src + "&tabid=" + tabID : opts.src + "?tabid=" + tabID;
            var $iframe = $('<iframe id="' + tabID + '_iframe" name="' + tabID + '_iframe" frameborder="0" scrolling="auto" style="width:100%;' + (iframdHeight ? "height:" + (iframdHeight - 26).toString() + "px" : "") + '" src="' + iframeSrc + '"></iframe>');
            $content.append($iframe);
        }
        $li.contextmenu(function (e)
        {
            instance.setActive($(this).attr("itemid"));
            contextMenu.setDisabled(0, $(this).attr("close") && $(this).attr("close") == "1");
        });
        $ul.append($li);
        this.$tabDiv.append($content);
        this.setActive(tabID);
        this.checkMore(true, false, false, false);
        if ($.isFunction(opts.callback))
        {
            window.setTimeout(opts.callback, 1);
        }
        return tabID;
    };
    //关闭标签 
    //id: 要关闭的标签id
    this.closeTab = function (id)
    {
        if (!id)
        {
            id = this.getActiveID();
        }
        var $li = this.$tabDiv.children(".tab_title").children("ul").children("li[itemid='" + id + "']");
        var $content = this.$tabDiv.children("#" + id);
        var isCurrent = $li.attr("class") == "tab_title_ul_li_over";
        if (isCurrent)
        {
            if ($li.prev().size() > 0)
            {
                this.setActive($li.prev().attr("itemid"));
            }
            else if ($li.next().size() > 0)
            {
                this.setActive($li.next().attr("itemid"));
            }
        }
        $li.remove();
        $content.find("iframe").attr("src", "about:blank");
        $content.find("iframe").remove();
        $content.remove();
        try { CollectGarbage(); } catch (e) { }
        if (this.scrollbar)
        {
            this.checkMore(true, true, false, false);
        }
    };
    //关闭全部可关闭的标签
    this.closeAll = function ()
    {
        var $lis = this.$tabDiv.children(".tab_title").children("ul").children("li[itemid]");
        for (var i = 0; i < $lis.size(); i++)
        {
            var close = $lis.eq(i).attr("close");
            if (close && close == "1")
            {
                this.closeTab($lis.eq(i).attr("itemid"));
            }
        }
        if (this.scrollbar)
        {
            this.checkMore(true, true, false, false);
        }
    };
    //关闭当前活动标签
    this.closeCurrent = function ()
    {
        var $li = this.$tabDiv.children(".tab_title").children("ul").children(".tab_title_ul_li_over");
        if ($li.size() > 0)
        {
            if ($li.attr("close") && $li.attr("close") == "1")
            {
                this.closeTab($li.attr("itemid"));
            }
            else
            {

            }
        }
        if (this.scrollbar)
        {
            this.checkMore(true, true, false, false);
        }
    };
    //关闭除当前标签以外的所有标签
    this.closeOther = function ()
    {
        var $lis = this.$tabDiv.children(".tab_title").children("ul").children("li[itemid][class!='tab_title_ul_li_over']");
        for (var i = 0; i < $lis.size(); i++)
        {
            var close = $lis.eq(i).attr("close");
            if (close && close == "1")
            {
                this.closeTab($lis.eq(i).attr("itemid"));
            }
        }
        if (this.scrollbar)
        {
            this.checkMore(true, true, false, false);
        }
    };
    //刷新标签
    this.refresh = function (id)
    {
        if (!id)
        {
            id = this.getActiveID();
        }
        var $content = this.$tabDiv.children("#" + id);
        if ($content.size() > 0 && $content.attr("isiframe") == "1")
        {
            var src = $content.children("iframe").attr("src");
            $content.children("iframe").attr("src", src);
        }
    };
    //得到当前活动标签ID
    this.getActiveID = function ()
    {
        var $li = this.$tabDiv.children(".tab_title").children("ul").children(".tab_title_ul_li_over");
        if ($li.size() > 0)
        {
            return $li.attr("itemid");
        }
        else
        {
            return "";
        }
    };
    //主窗口大小改变时调用
    this.topResize = function (height)
    {
        var $contents = this.$tabDiv.children("div[id][class!='ctxmenu']");
        for (var i = 0; i < $contents.size(); i++)
        {
            if ($contents.eq(i).attr("isiframe"))
            {
                $contents.eq(i).find("iframe").height(height);
            }
        }
    };
    //改变大小
    this.resize = function (options)
    {
        var defaults = {
            width: null,
            height: null
        };
        var opts = $.extend(defaults, options);
        if (opts.width)
        {
            this.$tabDiv.css("width", opts.width);
        }
        if (opts.height)
        {
            this.$tabDiv.css("height", opts.height);
        }
        if (opts.width || opts.height)
        {
            var $contents = this.$tabDiv.children("div[id][class!='ctxmenu']");
            for (var i = 0; i < $contents.size(); i++)
            {
                if (opts.height)
                {
                    $contents.eq(i).height(opts.height - 26);
                    if ($contents.eq(i).attr("isiframe"))
                    {
                        $contents.eq(i).find("iframe").height(opts.height - 26);
                    }
                }
                if (opts.width)
                {
                    $contents.eq(i).width(opts.width);
                    if ($contents.eq(i).attr("isiframe"))
                    {
                        $contents.eq(i).find("iframe").width(opts.width);
                    }
                }
            }
            this.checkMore(true, false, false, true);
        }
    };
    //检查移动 
    //isMove:是否移动 
    //isClose：是否执行的是close操作 
    //isInit: 是否是第一次初始化，如果是则初始化应显示第一个标签
    //isResize:是否是调整大小
    this.checkMore = function (isMove, isClose, isInit, isResize)
    {
        var tabWidth = (parseInt(this.$tabDiv.width()) || 36) - 36;
        var ulWidth = 0;
        var $tabTitle = this.$tabDiv.children(".tab_title");
        var $tabUL = $tabTitle.children("ul");
        var $lis = $tabUL.children("li");
        for (var i = 0; i < $lis.size(); i++)
        {
            ulWidth += parseInt($lis.eq(i).width()) || 0;
            ulWidth += 2;
        }
        var $tabLeft = $tabTitle.children(".tab_title_left");
        var $tabRight = $tabTitle.children(".tab_title_right");
        if (ulWidth > tabWidth)
        {
            //是移动 并且 (不是关闭 或者 关闭到tab宽度的1/3时调整显示标签)
            if (isMove && (!isClose || ulWidth - Math.abs(parseInt($tabUL.css("left")) || 0) <= tabWidth / 3))
            {
                //如果是初始化则left应该在起始位置
                var left = isInit ? 19 : tabWidth - ulWidth;
                $tabLeft.show();
                $tabRight.show();
                $tabUL.animate({ left: left });
                this.scrollbar = true;
            }
            return ulWidth;
        }
        else
        {
            this.scrollbar = false;
            $tabLeft.hide();
            $tabRight.hide();
            if (isMove && (isClose || isResize))
            {
                $tabUL.animate({ left: 2 });
            }
            return 0;
        }
    };
    //左移动
    this.moveLeft = function ()
    {
        var ulWidth = this.checkMore(false, false, false, false);
        if (ulWidth == 0)
        {
            return;
        }

        var $tabTitle = this.$tabDiv.children(".tab_title");
        var $tabUL = $tabTitle.children("ul");
        var tabLeft = parseInt($tabUL.css("left")) || 0;
        if (ulWidth - Math.abs(tabLeft) < (parseInt($tabTitle.width()) || 36))
        {
            return;
        }
        var left = tabLeft - 200;
        $tabUL.animate({ left: left });
    };
    //右移动
    this.moveRight = function ()
    {
        var ulWidth = this.checkMore(false, false, false, false);
        if (ulWidth == 0)
        {
            return;
        }
        var $tabUL = this.$tabDiv.children(".tab_title").children("ul");
        var tabLeft = parseInt($tabUL.css("left")) || 0;
        var left = tabLeft + 200;
        if (left > 19)
        {
            left = 19;
        }
        else if (tabLeft == 19)
        {
            return;
        }
        $tabUL.animate({ left: left });
    };
    //得到tab ID
    this.getTabID = function (id)
    {
        return id && this.$tabDiv.children(".tab_title").children("ul").children("li[itemid='" + id + "']").size() == 0 ? id : "tab_" + RoadUI.Core.newid(false);
    };

    this.init();
}

;   RoadUI.Tab1 = function (options)
{
    var defaults = {
        id: '', //对象ID
        obj: null, //对象
        x: true
    };
    this.opts = $.extend(defaults, options);
    var $tab = this.opts.obj == null ? $("#" + this.opts.id) : $(this.opts.obj);
    $("ul li", $tab).bind('click', function ()
    {
        var $li = $(this);
        $("ul li", $tab).each(function ()
        {
            var forid = $(this).attr('for');
            if ($(this).get(0) !== $li.get(0))
            {
                $(this).removeClass().addClass('mytabli1');
                if (forid != undefined)
                {
                    $('#' + forid).hide();
                }
            }
            else
            {
                $(this).removeClass().addClass('mytabli2');
                if (forid != undefined)
                {
                    $('#' + forid).show();
                }
            }
        });
    });

    $("span", $tab).each(function ()
    {
        $(this).addClass('mytabli1');
        $(this).bind('click', function ()
        {
            var $li = $(this);

            $("span", $tab).each(function ()
            {
                var forid = $(this).attr('id').toString().substr(6); ;
                if ($(this).get(0) !== $li.get(0))
                {
                    $(this).removeClass().addClass('mytabli1');
                    if (forid != undefined)
                    {
                        $('#' + forid).hide();
                    }
                }
                else
                {
                    $(this).removeClass().addClass('mytabli2');
                    if (forid != undefined)
                    {
                        $('#' + forid).show();
                    }
                }
            });
        });
    });
}