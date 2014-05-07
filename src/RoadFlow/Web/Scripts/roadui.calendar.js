//日期
; RoadUI.Calendar = function ()
{
    var instance = this;
    this.init = function ($cts)
    {
        $.each($cts, function ()
        {
            var istime = $(this).attr("istime");
            var format = "yyyy/MM/dd";
            var minDate = $(this).attr("mindate");
            var maxDate = $(this).attr("maxdate");
            if (istime != null && (istime.toLowerCase() == "true" || istime == "1"))
                format = "yyyy/MM/dd HH:mm";
            $(this).addClass("mytext").bind("click", function ()
            {
                var opts = { dateFmt: format };
                if (minDate)
                {
                    opts.minDate = minDate;
                }
                if (maxDate)
                {
                    opts.maxDate = maxDate;
                }
                WdatePicker(opts);
            });
        });
    };

}