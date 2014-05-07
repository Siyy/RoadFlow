; RoadUI.DragSort = function (elements)
{
    var container = elements;
    $(container).children().off("mousedown").mousedown(function (e)
    {
        if (e.which != 1 || $(e.target).is("input, textarea") || window.dragsort_only) return;
        e.preventDefault();

        var x = e.pageX;
        var y = e.pageY;
        var _this = $(this);
        var w = _this.width();
        var h = _this.height();
        var w2 = w / 2;
        var h2 = h / 2;
        var p = _this.offset();
        var left = p.left;
        var top = p.top;
        window.dragsort_only = true;

        // 添加虚线框
        _this.before('<div id="roadui_dragsort_dasheddiv"></div>');
        var wid = $("#roadui_dragsort_dasheddiv");
        wid.css({ "border": "1px dashed #e8e8e8", "height": h + 2, "width": w, "padding": "4px 0 0 10px", "margin": "5px 0", "list-style": "none" });

        _this.css({ "width": w, "height": h, "position": "absolute", "opacity": 0.8, "z-index": 999, "left": left, "top": top });

        $(document).mousemove(function (e)
        {
            e.preventDefault();

            // 移动选中块
            var l = left + e.pageX - x;
            var t = top + e.pageY - y;
            _this.css({ "left": l, "top": t });

            var ml = l + w2;
            var mt = t + h2;

            $(container).children().not(_this).not(wid).each(function (i)
            {
                var obj = $(this);
                var p = obj.offset();
                var a1 = p.left;
                var a2 = p.left + obj.width();
                var a3 = p.top;
                var a4 = p.top + obj.height();

                if (a1 < ml && ml < a2 && a3 < mt && mt < a4)
                {
                    if (!obj.next("#roadui_dragsort_dasheddiv").length)
                    {
                        wid.insertAfter(this);
                    } else
                    {
                        wid.insertBefore(this);
                    }
                    return;
                }
            });
        });

        $(document).mouseup(function ()
        {
            $(document).off('mouseup').off('mousemove');
            $(container).each(function ()
            {
                var obj = $(this).children();
                var len = obj.length;
                if (len == 1 && obj.is(_this))
                {
                    $("<div></div>").appendTo(this).attr("class", "roadui_dragsort_block").css({ "height": 100 });
                } else if (len == 2 && obj.is(".roadui_dragsort_block"))
                {
                    $(this).children(".roadui_dragsort_block").remove();
                }
            });

            var p = wid.offset();
            _this.animate({ "left": p.left, "top": p.top }, 100, function ()
            {
                _this.removeAttr("style");
                wid.replaceWith(_this);
                window.dragsort_only = null;
            });
        });
    });
}