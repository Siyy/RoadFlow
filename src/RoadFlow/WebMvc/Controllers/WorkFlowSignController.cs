using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class WorkFlowSignController : Controller
    {
        //
        // GET: /WorkFlowSign/

        public ActionResult Index()
        {
            if (Request.Files.Count > 0)
            {
　　　　　　      var file = Request.Files[0];
                if (file.ContentLength > 0)
                {
                    HttpPostedFileBase file1 = Request.Files[0];
                    string extname = System.IO.Path.GetExtension(file1.FileName);
                    if(extname.IsNullOrEmpty() || (extname.ToLower()!=".gif" && extname.ToLower()!=".jpg") && extname.ToLower()!=".png")
                    {
                        Response.Write("<script>alert('只能上传gif,jpg,png类型的图片文件!'); window.location = window.location;</script>");
                        Response.End();
                    }
                    string filename = string.Concat(Server.MapPath(Url.Content("~/Content/UserSigns/")), Business.Platform.Users.CurrentUserID, ".gif");
                    file1.SaveAs(filename);
                    Business.Platform.Log.Add("修改了签名", filename, Business.Platform.Log.Types.流程相关);
                    ViewBag.Script="alert('上传成功!'); window.location = window.location;";
                }
            }

            if (!Request.Form["reset"].IsNullOrEmpty())
            {
                string filename = string.Concat(Server.MapPath(Url.Content("~/Content/UserSigns/")), Business.Platform.Users.CurrentUserID, ".gif");
                if (System.IO.File.Exists(filename))
                {
                    System.IO.File.Delete(filename);
                    Business.Platform.Log.Add("恢复了签名", filename, Business.Platform.Log.Types.流程相关);
                }
                ViewBag.Script="alert('已恢复为默认签名!'); window.location = window.location;";
            }
            return View();
        }

    }
}
