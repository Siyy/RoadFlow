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
            var daybefor = $(this).attr("daybefor");
            var dayafter = $(this).attr("dayafter");
            var currentmonth = $(this).attr("currentmonth");
            
            if (istime != null && (istime.toLowerCase() == "true" || istime == "1"))
            {
                format = "yyyy/MM/dd HH:mm";
            }
            var opts = { dateFmt: format };
            if (minDate)
            {
                opts.minDate = minDate;
            }
            if (maxDate)
            {
                opts.maxDate = maxDate;
            }
            if (daybefor != null && (daybefor.toLowerCase() == "true" || daybefor == "1"))
            {
                opts.maxDate = '%y-%M-%d';
            }
            if (dayafter != null && (dayafter.toLowerCase() == "true" || dayafter == "1"))
            {
                opts.minDate = '%y-%M-{%d}';
            }
            if (currentmonth != null && (currentmonth.toLowerCase() == "true" || currentmonth == "1"))
            {
                opts.minDate = '%y-%M-01';
                opts.maxDate = '%y-%M-%ld';
            }
            $(this).removeClass().addClass("mytext").bind("click", function ()
            {
                WdatePicker(opts);
            });
        });
    };

}