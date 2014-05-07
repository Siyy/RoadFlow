//树形控件
;RoadUI.Tree = function (options)
{
    var defaults = {
        srcElement: null,
        id: "",
        showline: true,
        showico: true,
        showroot: true, //是否显示根节点
        animation: 0, //显示速度
        path: "", //json路径
        refreshpath: "", //刷新加载路径
        focusnode: null, //当前焦点节点
        onclick: null,
        ondblclick: null
    };
    this.opts = $.extend(defaults, options);
    this.$srcObj = null;
    if (this.opts.id.isNullOrEmpty() && this.opts.srcElement == null)
    {
        throw "要初始化为Tree的对象或对象ID为空!"; return false;
    }
    else
    {
        this.$srcObj = this.opts.srcElement != null ? $(this.opts.srcElement) : $("#" + this.opts.id);
        if (this.$srcObj == null || this.$srcObj.size() == 0)
        {
            throw "要初始化为Tree的对象为空!"; return false;
        }
    }
    if (this.opts.path.isNullOrEmpty())
    {
        throw "json路径无效!"; return false;
    }
    if (!this.opts.id)
    {
        this.opts.id = this.$srcObj.attr("id");
    }
    var instance = this;
    var $rootObj = this.$srcObj;

    this.init = function ()
    {
        instance.$srcObj.html('');
        $.ajax({
            type: "get", url: this.opts.path, dataType: "json", async: true, cache: false,
            success: function (json)
            {
                instance.addNodes(json, $rootObj, false, true);
            },
            error: function (obj, msg) { throw "json加载错误!" + msg; }
        });

        //添加右键
        //try
        //{
        //    var contextMenu = new RoadUI.Menu({ srcElement: this.$srcObj });
        //    contextMenu.addItem({ ico: "/images/ico/refresh.gif", title: "刷&nbsp;&nbsp;新", onclick: function () { instance.refresh(instance.focusnode); } });
        //}
        //catch (e) { }
    };
    //添加节点 isRefresh:是否二次加载 isInit:是否初始化
    this.addNodes = function (json, $node, isRefresh, isInit)
    {
        if ($node == undefined || $node == null || $node.size() == 0)
        {
            return;
        }
        json = json.childs || json;
        if (json.length == 0)
        {
            return;
        }
        var $preDiv = $(">ul>li", $node);

        for (var i = 0; i < json.length; i++)
        {
            var jsoni = json[i];
            var id = jsoni.id || RoadUI.Core.newid(false);
            var title = jsoni.title || " ";
            var ico = jsoni.ico || "";
            var link = jsoni.link || "";
            var hasChilds = jsoni.childs && jsoni.childs.length > 0;
            var hasChildsInDB = jsoni.hasChilds && parseInt(jsoni.hasChilds) > 0;
            var isLast = i == json.length - 1;
            var istop = isInit && i == 0;
            var isroot = istop && this.opts.showroot && json.length == 1; //是否为根节点

            json[i].id = id;

            var $div = $('<div id="roadui_tree_' + id + '" class="tree_div"></div>');
            var $ul = $('<ul class="tree_ul"></ul>');
            $div.data("json", jsoni);
            if (isroot)
            {
                $div.attr("isroot", "1");
                $ul.css("padding-left", "0");
            }

            var jian = 1;
            if (this.opts.showico) jian++;
            if (this.opts.showline) jian++;
            for (var j = 0; j < $preDiv.size() - jian; j++)
            {
                $ul.append($preDiv.eq(j).clone());
            }

            if ("1" != $node.attr("isroot") && !isroot && !isInit)
            {
                var lineClass = this.opts.showline && $node.next().size() > 0 ? "tree_line_conn" : "tree_empty";
                var $line = $('<li class="tree_li"><span class="' + lineClass + '"></span></li>');
                $ul.append($line);
            }

            if (this.opts.showline && !isroot)
            {
                var line1Class = "";
                if (hasChilds)
                {
                    if (istop)
                    {
                        line1Class = isLast ? "tree_minus_bottom_noprev" : "tree_minus_top_noprev";
                    }
                    else
                    {
                        line1Class = isLast ? "tree_minus_bottom" : "tree_minus_center";
                    }
                }
                else if (hasChildsInDB)
                {

                    if (istop)
                    {
                        line1Class = isLast ? "tree_plus_bottom_noprev" : "tree_plus_top_noprev";

                    }
                    else
                    {
                        line1Class = isLast ? "tree_plus_bottom" : "tree_plus_center";
                    }
                }
                else
                {
                    if (istop)
                    {
                        line1Class = isLast ? "tree_minus_bottom_noprev" : "tree_minus_top_noprev";
                    }
                    else
                    {
                        line1Class = isLast ? "tree_line_bottom" : "tree_line_center";
                    }
                }
                var $line1 = $('<li class="tree_li"><span class="' + line1Class + '"></span></li>');
                if (line1Class != "tree_line_bottom" && line1Class != "tree_line_center")
                {
                    $line1.bind("click", function () { instance.toggleNode($(this).parent()); });
                }
                $ul.append($line1);
            }

            if (this.opts.showico || isroot)
            {
                var icoClass = "tree_leaf";
                if (isroot)
                {
                    icoClass = "tree_root";
                }
                else
                {
                    if (hasChilds)
                    {
                        icoClass = "tree_open";
                    }
                    else if (hasChildsInDB)
                    {
                        icoClass = "tree_close";
                    }
                }
                var $ico = $('<li class="tree_li"><span class="' + icoClass + '"' + (ico.trim().length > 0 ? ' style="background:url(' + ico + ') no-repeat left center;"' : '') + '></span></li>');
                if (icoClass != "tree_leaf")
                {
                    $ico.bind("click", function () { instance.toggleNode($(this).parent()); return false; });
                }
                $ul.append($ico);
            }

            var $title = $('<li class="tree_li"><span class="tree_title">' + title + '</span></li>');
            $ul.append($title);
            if ($.isFunction(this.opts.onclick))
            {

                $title.bind("click", function ()
                {
                    var jid = $(this).parent().parent().data("json");
                    instance.opts.onclick(jid);
                });
            }
            if ($.isFunction(this.opts.ondblclick))
            {

                $title.bind("dblclick", function ()
                {
                    var jid = $(this).parent().parent().data("json");
                    instance.opts.ondblclick(jid);
                });
            }

            $ul.bind("mouseover", function ()
            {
                $(this).removeClass().addClass("tree_ul_over");
            }).bind("mouseout", function ()
            {
                if (instance.focusnode == null || instance.focusnode.size() == 0 || instance.focusnode.get(0) !== $(this).get(0))
                {
                    $(this).removeClass().addClass("tree_ul");
                }
            }).bind("click", function ()
            {
                if (instance.focusnode != null && instance.focusnode.size() > 0)
                {
                    instance.focusnode.removeClass().addClass("tree_ul");
                }
                instance.focusnode = $(this);
                $(this).removeClass().addClass("tree_ul_over");
            }); //.bind("contextmenu", function () { $(this).click(); });

            $div.append($ul);
            $node.append($div);
        }

        for (var i = 0; i < json.length; i++)
        {
            var jsoni = json[i];
            if (jsoni.childs && jsoni.childs.length > 0)
            {
                this.addNodes(jsoni, $("#roadui_tree_" + jsoni.id, $rootObj), isRefresh, false);
            }
        }
    };

    this.toggleNode = function ($ul, isRefresh)
    {

        if (!$ul || $ul.size() == 0)
        {
            return;
        }
        var $div = $ul.parent();
        if ($div.size() == 0)
        {
            return;
        }
        var $childNodes = $(">div", $div);

        //从数据库加载
        if (isRefresh || $childNodes.size() == 0)
        {
            toggleLoading($div, true);
            var id = $div.attr("id").replace("roadui_tree_", "");
            var url = instance.opts.refreshpath;
            if (url.indexOf('?') >= 0)
            {
                url += "&refreshid=" + id;
            }
            else
            {
                url += "?refreshid=" + id;
            }

            $.ajax({
                type: "get", url: url, dataType: "json", async: true, cache: false,
                success: function (json)
                {

                    if ($childNodes.length > 0)
                    {
                        $childNodes.remove();
                    }

                    instance.addNodes(json, $div, true, false);
                    toggleLoading($div, false);

                    if (json.length > 0)
                    {
                        toggleIco($ul, true);
                    }
                },
                error: function (obj, msg) { throw "json加载错误!" + msg; }
            });
        }
        else
        {
            if ($childNodes.eq(0).is(":hidden"))
            {
                $childNodes.show(this.opts.animation || 0);
                toggleIco($ul, true);
            }
            else
            {
                $childNodes.hide(this.opts.animation || 0);
                toggleIco($ul, false);
            }
        }
    };
    var toggleIco = function ($ul, isShow)
    {
        var $spans = $(">li>span", $ul);
        if (isShow)
        {
            $spans.filter(".tree_close").removeClass().addClass("tree_open");
            $spans.filter(".tree_plus_bottom").removeClass().addClass("tree_minus_bottom");
            $spans.filter(".tree_plus_center").removeClass().addClass("tree_minus_center");
            $spans.filter(".tree_plus_top").removeClass().addClass("tree_minus_top");
            $spans.filter(".tree_plus_top_noprev").removeClass().addClass("tree_minus_top_noprev");
            $spans.filter(".tree_plus_bottom_noprev").removeClass().addClass("tree_minus_bottom_noprev");
            if ($(">li", $ul).length > 0)
            {
                $spans.filter(".tree_leaf").removeClass().addClass("tree_open").parent().bind("click", function () { instance.toggleNode($(this).parent()); });
                $spans.filter(".tree_line_bottom").removeClass().addClass("tree_minus_bottom").parent().bind("click", function () { instance.toggleNode($(this).parent()); });
                $spans.filter(".tree_line_center").removeClass().addClass("tree_minus_center").parent().bind("click", function () { instance.toggleNode($(this).parent()); });
                $spans.filter(".tree_line_top").removeClass().addClass("tree_minus_top").parent().bind("click", function () { instance.toggleNode($(this).parent()); });
            }
        }
        else
        {
            $spans.filter(".tree_open").removeClass().addClass("tree_close");
            $spans.filter(".tree_minus_bottom").removeClass().addClass("tree_plus_bottom");
            $spans.filter(".tree_minus_center").removeClass().addClass("tree_plus_center");
            $spans.filter(".tree_minus_top").removeClass().addClass("tree_plus_top");
            $spans.filter(".tree_minus_top_noprev").removeClass().addClass("tree_plus_top_noprev");
            $spans.filter(".tree_minus_bottom_noprev").removeClass().addClass("tree_plus_bottom_noprev");
        }

    };
    this.refresh = function (divOrID)
    {
        if (typeof (divOrID) == "string")
        {
            var $div = $("#roadui_tree_" + divOrID);
            if ($div.size() == 0)
            {
                return;
            }
            this.toggleNode($div.children("ul"), true);
        }
        else
        {
            this.toggleNode($(divOrID), true);
        }
    };
    var toggleLoading = function ($div, isLoading)
    {
        if (isLoading)
        {
            var $ico = $(".tree_close", $(">ul", $div));
            $ico.removeClass().addClass("tree_loading");
        }
        else
        {
            var $ico = $(".tree_loading", $(">ul", $div));
            $ico.removeClass().addClass("tree_open");
        }
    };
    this.init();
}