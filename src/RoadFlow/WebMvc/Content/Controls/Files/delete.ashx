<%@ WebHandler Language="C#" Class="Delete" %>

using System;
using System.Web;
using System.Web.SessionState;
using System.IO;

public class Delete : IHttpHandler, IReadOnlySessionState
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";


        string str1 = context.Request["str1"];
        string str2 = context.Request["str2"];
        string msg;
        if (!WebMvc.Common.Tools.CheckLogin(out msg))
        {
            context.Response.Write("var json = {\"success\":0,\"message\":\"您不能删除文件\"}");
            context.Response.End();
            return;
        }
        
        
        string file = context.Request.QueryString["file"];
        
        
        if (!file.IsNullOrEmpty())
        {
       
            try
            {
                File.Delete(context.Server.MapPath(Path.Combine("/Content/Controls/Files/", file)));
                context.Response.Write("var json = {\"success\":1,\"message\":\"\"}");
            }
            catch (Exception e)
            {
                context.Response.Write("var json = {\"success\":0,\"message\":\"" + e.Message + "\"}");
                
            }
        }

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}