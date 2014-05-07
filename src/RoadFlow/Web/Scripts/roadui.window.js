//弹出层
;RoadUI.Window = function ()
{
    this.opts = {};
    var instance = this;
    this.open = function (options)
    {
        var defaults = {
            id: "",
            title: "",
            url: "",
            ico: "",
            showico: true,
            showclose: true,
            left: 0,
            top: 0,
            height: 300,
            width: 600,
            ismodal: true, //是否模态窗口
            zindex: 9999,
            resize: true,
            opener: null,
            openerid: ""
        };
        this.opts = $.extend(defaults, options);
        this.opts.opener = this.getOpener();

        this.opts.id = this.getID();
        var $opener = $(this.opts.opener);
        if ($opener == null || $opener.size() == 0)
        {
            throw "父窗口为空!"; return false;
        }

        var $openerBody = $(this.opts.opener.document.body);
        var $openerDocument = $(this.opts.opener.document);
        if ($openerBody == null || $openerBody.size() == 0)
        {
            throw "父窗口body为空!"; return false;
        }

        if (this.opts.left == 0)
        {
            this.opts.left = ($opener.width() - this.opts.width) / 2;
        }
        if (this.opts.top == 0)
        {
            this.opts.top = ($opener.height() - this.opts.height) / 2 + $(this.opts.opener.document).scrollTop();
        }

        if (this.opts.ismodal)//如果是模态窗口，则添加遮罩层
        {
            var $maskdiv = $('<div id="' + this.opts.id + '_maskdiv" class="window_maskdiv" style="z-index:' + (this.opts.zindex - 1) + ';"></div>', $openerDocument);
            $maskdiv.width($opener.width()).height(Math.max($openerBody.get(0).clientHeight, $opener.height()));
            $openerBody.append($maskdiv);
        }

        var $maindiv = $('<div id="' + this.opts.id + '" class="window_maindiv" style="left:' + this.opts.left + 'px;top:' + this.opts.top + 'px;width:' + this.opts.width + 'px;height:' + this.opts.height + 'px;z-index:' + this.opts.zindex + ';"></div>', $openerDocument);
        var $titlediv = $('<div id="' + this.opts.id + '_titlediv" class="window_title"></div>', $openerDocument);
        var $bodydiv = $('<div class="window_body"></div>', $openerDocument);
        var $resizediv = null;

        var $titlediv_title = $('<div class="' + (this.opts.showico ? 'window_title_title_ico' : 'window_title_title') + '">' + this.opts.title + '</div>', $openerDocument);
        if (this.opts.showico && this.opts.ico && $.trim(this.opts.ico).length > 0)
        {
            $titlediv_title.css({ 'background-image': 'url(' + this.opts.ico + ')' });
        }
        //双击关闭窗口
        $titlediv_title.bind("dblclick", function () { instance.close($(this).parent().parent().attr("id")); });

        var $titlediv_button = $();
        if (this.opts.showclose)
        {
            $titlediv_button = $('<div class="window_title_button">&nbsp;</div>', $openerDocument);
            $titlediv_button.bind("mouseover", function ()
            {
                $(this).removeClass().addClass("window_title_button1");
            }).bind("mouseout", function ()
            {
                $(this).removeClass().addClass("window_title_button");
            }).bind("click", function ()
            {
                instance.close($(this).parent().parent().attr("id"));
            });
        }
        $titlediv.append($titlediv_title, $titlediv_button, '<div style="clear:both;"></div>');

        var bodydivHeight = this.opts.height - (this.opts.resize ? 39 : 26);
        $bodydiv.css({ "height": bodydivHeight + "px" });
        if (this.opts.url && $.trim(this.opts.url).length > 0)
        {
            var url = this.opts.url;
            if (url.indexOf('?') >= 0)
            {
                url += "&iframeid=" + this.opts.id + "&openerid=" + this.opts.openerid;
            }
            else
            {
                url += "?iframeid=" + this.opts.id + "&openerid=" + this.opts.openerid;
            }
            var $iframe = $('<iframe id="' + this.opts.id + '_iframe" name="' + this.opts.id + '_iframe" src="' + url + '" frameborder="0" marginheight="0" marginwidth="0" border="0" style="border:none 0;margin:0;padding:0;width:100%;height:' + bodydivHeight + 'px;"></iframe>', $openerDocument);
            if (this.opts.title.isNullOrEmpty())
            {
                $iframe.bind("load", function ()
                {
                    if (!instance.opts.title || $.trim(instance.opts.title).length == 0)
                    {
                        var title = "";
                        try
                        {
                            title = $("head title", $(this).contents()).html();
                        } catch (e) { }
                        instance.setTitle(title);
                    }
                });
            }
            $bodydiv.append($iframe);
        }

        $maindiv.append($titlediv, $bodydiv);
        if (this.opts.resize)
        {
            $resizediv = $('<div class="window_resize"><div class="window_resize_img">&nbsp;</div></div>', $openerDocument);
            $maindiv.append($resizediv);
        }

        $openerBody.append($maindiv);

        var maindiv = $maindiv.get(0);
        var titlediv = $titlediv.get(0);
        var resizediv = $resizediv ? $resizediv.get(0) : null;
        new draging
	    (
		    titlediv,
		    function ()
		    {
		        return { x: maindiv.offsetLeft, y: maindiv.offsetTop };
		    },
		    function (x, y)
		    {
		        win = instance.opts.opener || top;
		        var iSTop = win.document.body.scrollTop || win.document.documentElement.scrollTop;
		        if (x < 0)
		        {
		            x = 0;
		        }
		        else if (x + maindiv.offsetWidth > win.document.documentElement.clientWidth)
		        {
		            x = win.document.body.clientWidth - maindiv.offsetWidth;
		        }
		        if (y < iSTop)
		        {
		            y = iSTop;
		        }
		        else if (y + maindiv.offsetHeight > win.document.documentElement.clientHeight + iSTop)
		        {
		            y = win.document.documentElement.clientHeight - maindiv.offsetHeight + iSTop;
		        }
		        maindiv.style.left = x + 'px';
		        maindiv.style.top = y + 'px';
		    },
            instance.opts.opener
	    );
        if (this.opts.resize)
        {
            var resizediv = $resizediv.get(0);
            new draging
		    (
			    resizediv,
			    function ()
			    {
			        g_orgTop = maindiv.offsetTop;
			        g_orgHeight = maindiv.offsetHeight;
			        g_orgLeft = maindiv.offsetLeft;
			        g_orgWidth = maindiv.offsetWidth;
			        return { x: maindiv.offsetWidth, y: maindiv.offsetHeight };
			    },
                function (x, y)
                {
                    doBothDrag(x, y, maindiv);
                },
                instance.opts.opener
		    );
        };
        return this.opts.id;
    };

    this.getOpener = function ()
    {
        return this.opts.opener || window.top;
    };

    this.getID = function ()
    {
        var id = this.opts.id != null && this.opts.id != undefined && $.trim(this.opts.id).length > 0 ? this.opts.id : "roadui_window_" + Math.random().toString();
        return id.replaceAll('.', '');
    };
    this.setTitle = function (title)
    {
        this.opts.title = title;
        var mainid = this.opts.id;
        var $titlediv = $(">div:first", $("#" + mainid + "_titlediv", $(this.opts.opener.document)));
        if ($titlediv == null || $titlediv.size() == 0)
        {
            return false;
        }
        $titlediv.text(title);
        return true;
    };
    this.close = function (id)
    {
        if (!id || id.trim().length == 0)
        {
            id = RoadUI.Core.query("iframeid");
        }
        return closeWindow(id);
    };
    this.closeAll = function ()
    {
        return closeWindow();
    };
    function closeWindow(id)
    {
        var amount = 0;
        var $maindiv = !id || id.trim().length == 0 ? $("div[id^='roadui_window_']", top.document) : $("#" + id, top.document);
        for (var x = 0; x < $maindiv.size(); x++)
        {
            try
            {
                $maindiv.eq(x).find("iframe").attr("src", "about:blank");
                CollectGarbage();
            } catch (e) { }
            try
            {
                $("#" + $maindiv.eq(x).attr("id") + "_maskdiv", top.document).remove();
		        $maindiv.eq(x).find("iframe").remove();
                $maindiv.eq(x).remove();
                amount++;
            } catch (e) { }
        }

        for (var i = 0; i < top.frames.length; i++)
        {
            var $maindiv1 = !id || id.trim().length == 0 ? $("div[id^='roadui_window_']", top.frames[i].document) : $("#" + id, top.frames[i].document);
            for (var j = 0; j < $maindiv1.size(); j++)
            {
                try
                {
                    $maindiv1.eq(j).find("iframe").attr("src", "about:blank");
                    CollectGarbage();
                } catch (e) { }
                try
                {

                    $("#" + $maindiv1.eq(j).attr("id") + "_maskdiv", top.frames[i].document).remove();
		            $maindiv1.eq(j).find("iframe").remove();                    
		            $maindiv1.eq(j).remove();
                    amount++;
                } catch (e) { }
            }
        }
        return amount;
    };

    var iframesArray = new Array();
    this.getOpenerElement = function (id)
    {
        iframesArray = new Array();
        var openerid = RoadUI.Core.query("openerid") || "";
        if (openerid && openerid.length > 0)
        {
            openerid += "_iframe";
        }
        var ele = $();
        var iframes = $(top.document).find("iframe");
        if (openerid && openerid.length > 0)
        {
            for (var i = iframes.size() - 1; i >= 0; i--)
            {
                if (openerid && openerid.length > 0 && openerid == iframes.eq(i).attr("id"))
                {
                    var obj = iframes.eq(i).get(0).contentWindow.document.getElementById(id);
                    if (obj)
                    {
                        return $(obj);
                    }
                }
            }
        }
        if (ele.size() == 0)
        {
            addIframe(top.document);
            for (var i = iframesArray.length - 1; i >= 0; i--)
            {
                var obj = iframesArray[i].contentWindow.document.getElementById(id);
                if (obj)
                {
                    iframesArray = [];
                    return $(obj);
                }
            }
        }
        return ele;
    };

    var addIframe = function (doc)
    {
        var iframes = $(doc).find("iframe");
        for (var i = 0; i < iframes.size(); i++)
        {
            iframesArray.push(iframes.eq(i).get(0));
            addIframe(iframes.eq(i).get(0).contentWindow.document);
        }
    };

    this.reloadOpener = function (url, id)
    {
        if (!id || id.trim().length == 0)
        {
            id = RoadUI.Core.query("openerid");
        }
        id += "_iframe";
        $("iframe", top.document).each(function ()
        {
            if (id == $(this).attr("id"))
            {
                var win = $(this).get(0).contentWindow;
                win.location = !url || $.trim(url).length == 0 ? win.location : url;
            }
        });
        for (var i = 0; i < top.frames.length; i++)
        {
            $("iframe", top.frames[i].document).each(function ()
            {
                if (id == $(this).attr("id"))
                {

                    var win = $(this).get(0).contentWindow;
                    win.location = !url || $.trim(url).length == 0 ? win.location : url;
                }
            });
        }
    };
    this.resize = function (width, height)
    {
        if (!width || !height)
        {
            return;
        }
        var $maindiv = $("#" + this.opts.id, $(this.opts.opener.document));
        if ($maindiv == null || $maindiv.size() == 0)
        {
            return;
        }
        $maindiv.css({ "height": height + "px", "width": width + "px" });
        var $bodydiv = $(".window_body", $maindiv);
        if ($bodydiv == null || $bodydiv.size() == 0)
        {
            return;
        }
        var bodydivHeight = height - (this.opts.resize ? 39 : 26);
        $bodydiv.css({ "height": bodydivHeight + "px" });
        var $iframe = $bodydiv.children().first();
        if ($iframe && $iframe.size() > 0 && $iframe.get(0).nodeName.toLowerCase() == "iframe")
        {
            $iframe.css({ "height": bodydivHeight + "px" });
        }
    }
    var doBothDrag = function (x, y, maindiv)
    {
        if (x < 110)
        {
            x = 110;
        }

        maindiv.style.width = (x - 8) + 'px';
        if (y < 35)
        {
            y = 35;
        }

        maindiv.style.height = (y - 8) + 'px';
        instance.resize(x - 8, y - 8);
    };

    var draging = function (oElement, fnGetPos, fnOnDrag, win)
    {
        win = win || window;
        var obj = this;
        this.oElement = oElement;
        this.fnGetPos = fnGetPos;
        this.fnOnDrag = fnOnDrag;
        this.__oStartOffset__ = { x: 0, y: 0 };

        this.fnOnMouseUp = function (ev)
        {
            obj.stopDrag(win.event || ev);
        };

        this.fnOnMouseMove = function (ev)
        {
            obj.doDrag(win.event || ev);
        };

        this.oElement.onmousedown = function (ev)
        {
            obj.startDrag(win.event || ev);
        };
    }

    draging.prototype.startDrag = function (oEvent)
    {
        var oPos = this.fnGetPos();
        var x = oEvent.clientX;
        var y = oEvent.clientY;

        this.__oStartOffset__.x = x - oPos.x;
        this.__oStartOffset__.y = y - oPos.y;

        if (this.oElement.setCapture)
        {
            this.oElement.setCapture();

            this.oElement.onmouseup = this.fnOnMouseUp;
            this.oElement.onmousemove = this.fnOnMouseMove;
        }
        else
        {
            document.addEventListener("mouseup", this.fnOnMouseUp, true);
            document.addEventListener("mousemove", this.fnOnMouseMove, true);

            window.captureEvents(Event.MOUSEMOVE | Event.MOUSEUP);
        }
    };

    draging.prototype.stopDrag = function (oEvent)
    {
        if (this.oElement.releaseCapture)
        {
            this.oElement.releaseCapture();

            this.oElement.onmouseup = null;
            this.oElement.onmousemove = null;
        }
        else
        {
            document.removeEventListener("mouseup", this.fnOnMouseUp, true);
            document.removeEventListener("mousemove", this.fnOnMouseMove, true);

            window.releaseEvents(Event.MOUSE_MOVE | Event.MOUSE_UP);
        }
    };

    draging.prototype.doDrag = function (oEvent)
    {
        var x = oEvent.clientX;
        var y = oEvent.clientY;

        this.fnOnDrag(x - this.__oStartOffset__.x, y - this.__oStartOffset__.y);
    };
}