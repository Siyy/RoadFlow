using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Config 的摘要说明
/// </summary>
public class UEConfigHandler : UEHandler
{
    public UEConfigHandler(HttpContext context) : base(context) { }

    public override void Process()
    {
        WriteJson(Config.Items);
    }
}