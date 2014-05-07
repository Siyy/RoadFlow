//数据字典选择
; RoadUI.Dict = function ()
{
    var instance = this;
    this.init = function ($members)
    {
        $members.each(function (index)
        {
            var $_member = $members.eq(index);
            var id = $_member.attr("id") || "";
            var name = $_member.attr("name") || "";
            var value = $_member.val() || "";
            var title = $_member.attr("title") || "";

            var disabled = $_member.prop("disabled");

            $_member.prop("readonly", true);
            var $hide = $('<input type="hidden" id="' + id + '" name="' + name + '" value="' + (value || "") + '" />');
            var $but = $('<input type="button" ' + (disabled ? 'disabled="disabled"' : '') + ' title="' + title + '" class="mybutton" style="border-left:none;" value="选择" />');
            $_member.attr("id", id + "_text");
            $_member.attr("name", name + "_text");
            $_member.removeClass().addClass("mytext");

            if (value && value.length > 0)
            {
                $.ajax({
                    url: "/Content/Controls/Dict/GetNames?values=" + value, type: "get", async: false, cache: false, success: function (txt)
                {
                    $_member.val(txt);
                }
                });
            }

            $but.bind("click", function ()
            {
                var $obj = $(this).prev().prev();
                var val = $obj.val();
                var $obj1 = $(this).prev();
                var ismore = $obj1.attr("more") || "";
                var isparent = $obj1.attr("parent") || "";
                var root = $obj1.attr("rootid") || "";
                var ischild = $obj1.attr("child") || "";

                var params = "eid=" + id + "&ismore=" + ismore + "&isparent=" + isparent + "&root=" + root + "&ischild=" + ischild + "&values=" + val;
                new RoadUI.Window().open({ id: "dict_" + id, url: "/Content/Controls/Dict/Default?" + params, width: 500, height: 470, resize: false, title: "选择数据字典", openerid: RoadUI.Core.query("tabid")||"" });
            });

            $_member.after($but).before($hide);
        });
    };
    this.setValue = function (objorid)
    {
        var $obj;
        if (typeof (objorid) == "string")
        {
            $obj = $("#" + objorid);
        }
        else
        {
            $obj = $(objorid);
        }
        if (!$obj || $obj.size() == 0) return;
        var value = $obj.val();
        $obj.val(value);
        if (value && value.length > 0)
        {
            $.ajax({
                url: "/Content/Controls/Dict/GetNames?values=" + value, type: "get", async: false, cache: false, success: function (txt)
            {
                $obj.next().val(txt);
            }
            });
        }
        else
        {
            $obj.next().val('');
        }
    };
}