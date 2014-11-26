using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class WorkFlowRunController : Controller
    {
        //
        // GET: /WorkFlowRun/

        public ActionResult Index()
        {
            return View();
        }


        public ActionResult ShowComment()
        {
            return View();
        }

        public ActionResult Print()
        {
            return View();
        }

        public ActionResult Execute()
        {
            return View();
        }

        public ActionResult FlowBack()
        {
            return View();
        }

        public ActionResult FlowRedirect()
        {
            return View();
        }

        public ActionResult FlowSend()
        {
            return View();
        }

        public ActionResult Process()
        {
            return View();
        }

        public ActionResult Sign()
        {
            return View();
        }


        /// <summary>
        /// 查看流程图
        /// </summary>
        /// <returns></returns>
        public ActionResult ShowDesign()
        {
            return View();
        }
    }
}
