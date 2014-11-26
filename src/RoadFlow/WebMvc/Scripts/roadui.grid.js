//Grid
; RoadUI.Grid = function ()
{
    var instance = this;
    this.init = function (opts)
    {
        instance.opts = opts;
        
        var $table = opts.table;
        if (!$table || $table.size() == 0)
        {
            throw "要初始化的表格为空";
            return;
        }
        var $gridcontainer = $table.parent();
        if (!$gridcontainer || $gridcontainer.size() == 0)
        {
            throw "要初始化的表格容器为空";
            return;
        }
        $gridcontainer.height(window.innerHeight - 40);
        $(window.document.body).css("overflow", "hidden");
        var cols = opts.cols;
        if (!$.isArray(cols) || cols.length == 0)
        {
            throw "要初始化的列错误";
            return;
        }
        
        this.initHead($gridcontainer, cols);
        var data = null;
        switch (opts.dataType)
        {
            case "url":
                data = opts.dataUrl;
                break;
        }
        this.loadData($table, opts.dataType, data, opts.uniqueIndex);
        
    };
    this.initHead = function ($gridcontainer, cols)
    {
        var thead = '<div class="gridheadcontainer"><table class="gridhead"><tr>';
        for (var i = 0; i < cols.length; i++)
        {
            thead += '<td style="width:100px;">';
            thead += '<div class="gridtitlediv">';
            thead += '<div class="gridtitle">';
            thead += cols[i].title;
            thead += '</div>';
            thead += '<div class="gridtitlesort"></div>';
            if (!cols[i].lockWidth) thead += '<div class="gridtitleresize"></div>';
            thead += '</div></td>';
        }
        thead += '</tr></table></div>';
        var $thead = $(thead);
        $gridcontainer.before($thead);
        $(".gridtitleresize", $thead).bind("mousedown", function (e)
        {
            var $line = $("<div id='moveLineDiv'></div>");
            var $headContainer = $(this).parent().parent().parent().parent().parent().parent();
            var $bodyContainer = $headContainer.next();
            $line.height($headContainer.height() + $bodyContainer.height());
            $line.css({ "border-left": "1px solid #333", "z-index": "50", "position": "absolute", "cursor": "col-resize", "box-shadow": "0 0px 4px #bbb" });
            $("#container").append($line);
            $(window.document.body).bind("mousemove", function (e)
            {
                var $moveLine = $("#moveLineDiv");
                var gridcontainerLeft = $moveLine.parent().offset().left;
                $moveLine.css({
                    "left": (event || e).clientX - gridcontainerLeft 
                }).bind("mouseup", function (e)
                {
                    var $th = $("#moveLineDiv").parent().parent().parent();
                    if ($th.size() > 0)
                    {
                        $th.css({ "width": (event || e).clientX - $th.offset().left });
                    }
                    $("#moveLineDiv").remove();
                    document.body.onselectstart = function () { return true; };
                    $(window.document.body).unbind("mousemove").unbind("mouseup");
                });
            });
        });
    };

    this.loadData = function ($table, dataType, data, uniqueIndex)
    {
        switch (dataType)
        {
            case "url":
                $.ajax({
                    url: data, dataType: "json", async: true, success: function (json)
                    {
                        loadJsonData(json);
                    }
                });
                break;
        }
        var loadJsonData = function (json)
        {
            var trs = '';
            for (var i = 0; i < json.length; i++)
            {
                trs += '<tr>';
                for (var j = 0; j < json[i].length; j++)
                {
                    if (j == uniqueIndex) continue;
                    trs += (i % 2 != 0 ? '<td class="gridtdrout" style="width:100px;">' : '<td class="gridtdrout" style="width:100px;">');
                    trs += json[i][j];
                    trs += '</td>';
                }
                trs += '</tr>';
            }
            $table.html("").append(trs);
        };
        
    };

    this.FixTable = function ($table, fixColumnNumber, width, height)
    {
        
    };
}
