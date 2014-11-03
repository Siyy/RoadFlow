using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class WorkFlowArchivesController : MyController
    {
        //
        // GET: /WorkFlowArchives/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Tree()
        {
            return View();
        }

        public ActionResult List()
        {
            return List(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult List(FormCollection collection)
        {
            string appid = Request.QueryString["appid"];
            string tabid = Request.QueryString["tabid"];
            string typeid = Request.QueryString["typeid"];
            string title = string.Empty;

            Business.Platform.WorkFlowArchives BWFA = new Business.Platform.WorkFlowArchives();
            Business.Platform.WorkFlow BWF = new Business.Platform.WorkFlow();
            if (collection != null)
            {
                title = Request.Form["Title"];
            }
            else
            {
                title = Request.QueryString["Title"];
            }

            string query = string.Format("&appid={0}&tabid={1}&Title={2}&typeid={3}",
                        Request.QueryString["appid"],
                        Request.QueryString["tabid"],
                        title.UrlEncode(), typeid
                        );
            string query1 = string.Format("{0}&pagesize={1}&pagenumber={2}", query, Request.QueryString["pagesize"], Request.QueryString["pagenumber"]);
            string pager;
            System.Data.DataTable Dt = BWFA.GetPagerData(out pager, query, title, BWF.GetFlowIDFromType(typeid.ToGuid()));

            ViewBag.Pager = pager;
            ViewBag.Title1 = title;
            ViewBag.appid = appid;
            ViewBag.tabid = tabid;
            ViewBag.typeid = typeid;
            ViewBag.Query1 = query1;

            return View(Dt);
        }

        public ActionResult Show()
        {
            string id = Request.QueryString["id"];
            if (!id.IsGuid())
            {
                return View();
            }
            var archives = new Business.Platform.WorkFlowArchives().Get(id.ToGuid());
            if (archives == null)
            {
                return View();
            }
            return View(archives);
        }
    }
}
