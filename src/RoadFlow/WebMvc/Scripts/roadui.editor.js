//编辑器
; RoadUI.Editor = function ()
{
    var instance = this;
    this.init = function ($editors)
    {
        $editors.each(function ()
        {
            var id = $(this).attr('id');
            var width = $(this).attr('width') || "100%";
            var height = $(this).attr('height') || "300";
            var readonly = "readonly" == $(this).attr('readonly') || "1" == $(this).attr('readonly') ? true : false;
            UE.getEditor(id, {
                initialFrameWidth: width,
                initialFrameHeight: height,
                readonly: readonly
            });
        });

    };
}