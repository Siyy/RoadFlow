<%@ WebHandler Language="C#" Class="Upload" %>

using System;
using System.Web;
using System.IO;
using System.Web.SessionState;

public class Upload : IHttpHandler, IReadOnlySessionState
{
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string str1 = context.Request["str1"];
        string str2 = context.Request["str2"];
        if (!Check.CheckLogin(false))
        {
            context.Response.Write("您不能上传文件");
            context.Response.End();
            return;
        }
        
        //接收上传后的文件
        HttpPostedFile file = context.Request.Files["Filedata"];
        
        if (false && !"".Contains(Path.GetExtension(file.FileName), StringComparison.CurrentCultureIgnoreCase))
        {
            context.Response.Write("您上传的文件类型不被允许");
            context.Response.End();
            return;
        }

        //获取文件的保存路径
        string uploadPath;
        string uploadFullPath = context.Server.MapPath(getFilePath(out uploadPath));
        
        //判断上传的文件是否为空
        if (file != null)
        {
            if (!Directory.Exists(uploadFullPath))
            {
                Directory.CreateDirectory(uploadFullPath);
            }
            //保存文件
            string newFileName = getFileName(uploadFullPath, file.FileName);
            string newFileFullPath = uploadFullPath + newFileName;
            try
            {
                int fileLength = file.ContentLength;
                file.SaveAs(newFileFullPath);
                context.Response.Write("1|" + (uploadPath + newFileName) + "|" + fileLength.ToString("###,###") + "|" + newFileName);
                //context.Response.Write(newFileFullPath);
            }
            catch
            {
                context.Response.Write("上传文件发生了错误");
            }
        }
        else
        {
            context.Response.Write("上传文件为空");
        }  
    }

    /// <summary>
    /// 得到上传文件名
    /// </summary>
    /// <param name="fileName"></param>
    /// <returns></returns>
    private string getFileName(string filePath, string fileName)
    {
        while (File.Exists(filePath + fileName))
        {
            fileName = Path.GetFileNameWithoutExtension(fileName) + "_" + Utility.Tools.GetRandomString() + Path.GetExtension(fileName);
        }
        return fileName;
    }

    /// <summary>
    /// 得到文件保存路径
    /// </summary>
    /// <returns></returns>
    private string getFilePath(out string path1)
    {
        DateTime date = Utility.DateTimeNew.Now;
        path1 = "/Content/Upload/" + date.ToString("yyyyMM") + "/" + date.ToString("dd") + "/";
        return path1;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}