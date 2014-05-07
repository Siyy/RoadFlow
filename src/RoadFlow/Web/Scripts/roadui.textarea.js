//Text文本框
;RoadUI.Textarea = function ()
{
    var instance = this;
    this.init = function ($texts)
    {
        initElement($texts, "text");
        $texts.each(function ()
        {
            var model = $(this).attr("model");
            var id = $(this).attr('id');
            var name = $(this).attr('name');
            var validate = $(this).attr('validate');
            var value = $(this).text();
            if ("html" == model)
            {
                var html = '<script isflow="1" type1="flow_html" id="' + id + '" name="' + name +
                    '" type="text/plain" style="' + $(this).attr('style') + '" ' + (validate ? 'validate="' + validate + '"' : '') + '>' + value + '</script>';
                $(this).after(html).remove();

                UE.getEditor(id);
            }
        });

    };
}