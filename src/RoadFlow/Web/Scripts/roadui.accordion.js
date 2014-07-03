//滑动菜单
; RoadUI.Accordion = function ()
{
    var instance = this;
    this.init = function ($divs, showIndex)
    {
        $divs.each(function ()
        {
            var $accordionTitles = $(".accordiontitle", $(this));
            var borderHeight = $(this).css("border").indexOf("none") >= 0 ? -1 : 0;//div是否有边框，没有边框内容高度要-1
            var contentHeight = $(this).height() - ($accordionTitles.size() * 27) + ($accordionTitles.size() - 1) + 2 + borderHeight;
            var defaultShowIndex = showIndex || 0;
            $accordionTitles.each(function (i)
            {
                if (i == 0)
                {
                    $(this).css({ "border-top": "none" });
                }
                else
                {
                    $(this).css({ "border-bottom": "none" });
                }
                $(this).next().css({ "height": contentHeight.toString() + "px", "display": i == defaultShowIndex ? "block" : "none" });
                $(this).bind("click", function ()
                {
                    var border = "";
                    $(".accordion div .accordiontitle").each(function ()
                    {
                        $(this).next().hide();
                        $(this).css({ "border-bottom": "none" });
                        if (border.length == 0 && $(this).css("border").indexOf("none") == 0)
                        {
                            border = $(this).css("border");
                        }
                    });
                    $(this).next().show(300);
                    $(this).css({ "border-bottom": border });
                });
            });
        });
    };

    this.resize = function ($div)
    {
        var $accordionTitles = $("div .accordiontitle", $div);
        var borderHeight = $div.css("border").indexOf("none") >= 0 ? -1 : 0;//div是否有边框，没有边框内容高度要-1
        var contentHeight = $div.height() - ($accordionTitles.size() * 27) + ($accordionTitles.size() - 1) + 2 + borderHeight;
        $(".accordioncontent", $div).height(contentHeight);
    }
}