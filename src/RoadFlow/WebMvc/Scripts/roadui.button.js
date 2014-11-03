//按钮
; RoadUI.Button = function ()
{
    var instance = this;
    this.init = function ($buttons)
    {
        if (!$buttons || $buttons.size() == 0)
        {
            return false;
        }
        $buttons.addClass("button1").bind("mouseover", function ()
        {
            $(this).removeClass().addClass("button2");
        }).bind("mouseout", function ()
        {
            $(this).removeClass().addClass("button1");
        });
        
    };

}
