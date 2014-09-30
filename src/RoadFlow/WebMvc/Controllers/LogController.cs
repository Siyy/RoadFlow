using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class LogController : MyController
    {
        //
        // GET: /Log/

        public ActionResult Index()
        {
            return Index(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(FormCollection collection)
        {
            string title = string.Empty;
            string type = string.Empty;
            string date1 = string.Empty;
            string date2 = string.Empty;
            string userid = string.Empty;
            if (collection == null)
            {
                title = Request.QueryString["Title"];
                type = Request.QueryString["Type"];
                date1 = Request.QueryString["Date1"];
                date2 = Request.QueryString["Date2"];
                userid = Request.QueryString["UserID"];
            }
            else
            {
                title = collection["Title"];
                type = collection["Type"];
                date1 = collection["Date1"];
                date2 = collection["Date2"];
                userid = collection["UserID"];
            }

            ViewBag.Title1 = title;
            ViewBag.Type = type;
            ViewBag.Date1 = date1;
            ViewBag.Date2 = date2;
            ViewBag.UserID = userid;

            Business.Platform.Log blog = new Business.Platform.Log();
            string query = string.Format("&appid={0}&tabid={1}&Title={2}&Type={3}&Date1={4}&Date2={5}&UserID={6}",
                Request.QueryString["appid"],
                Request.QueryString["tabid"],
                title.UrlEncode(),
                type.UrlEncode(),
                date1,
                date2,
                userid
                );
            string pager;
            System.Data.DataTable dt = blog.GetPagerData(out pager, query, title, type, date1, date2, userid);
            ViewBag.TypeOptions = blog.GetTypeOptions(type);
            ViewBag.Pager = pager;
            ViewBag.Query = query;
            return View(dt);
        }

        public ActionResult Detail()
        {
            string id = Request.QueryString["id"];
            if (id.IsGuid())
            {
                return View(new Business.Platform.Log().Get(id.ToGuid()));
            }
            else
            {
                return View(new Data.Model.Log());
            }
        }
    }
}
