//文件上传
; RoadUI.File = function ()
{
    var instance = this;
    this.init = function ($files)
    {
        $files.each(function ()
        {
            var id = $(this).attr("id") || "";
            var name = $(this).attr("name") || "";
            var filetype = $(this).attr("filetype") || "";
            var value = $(this).val();

            if (name.length == 0)
            {
                name = id;
            }
            var $hide = $('<input type="hidden" id="' + id + '" name="' + name + '" value="" />');
            var $but = $('<input type="button" class="mybutton" style="border-left:none;" value="管理" />');
            $(this).attr("id", id + "_text");
            $(this).attr("name", name + "_text");
            $(this).removeClass().addClass("mytext");
            $hide.val(value);
            $but.bind("click", function ()
            {
                var val = $(this).prev().prev().val();
                new RoadUI.Window().open({ id: "file_" + id, url: "/Content/Controls/Files/Default?eid=" + id + "&files=" + val, width: 500, height: 400, title: "附件管理" });
            });
            $(this).after($but).before($hide);


        });
    };
}