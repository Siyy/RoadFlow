using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class WorkFlowTasksController : MyController
    {
        //
        // GET: /WorkFlowTasks/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Instance()
        {
            return View();
        }

        public ActionResult InstanceTree()
        {
            return View();
        }

        public ActionResult InstanceList()
        {
            return instanceList1(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult InstanceList(FormCollection collection)
        {
            return instanceList1(collection);
        }

        public ActionResult instanceList1(FormCollection collection)
        {
            Business.Platform.WorkFlowTask bworkFlowTask = new Business.Platform.WorkFlowTask();
            Business.Platform.WorkFlow bworkFlow = new Business.Platform.WorkFlow();

            string title = "";
            string flowid = "";
            string sender = "";
            string date1 = "";
            string date2 = "";
            string status = "";
            string typeid = Request.QueryString["typeid"];

            if (collection != null)
            {
                title = Request.Form["Title"];
                flowid = Request.Form["FlowID"];
                sender = Request.Form["SenderID"];
                date1 = Request.Form["Date1"];
                date2 = Request.Form["Date2"];
                status = Request.Form["Status"];
            }
            else
            {
                title = Request.QueryString["Title"];
                flowid = Request.QueryString["FlowID"];
                sender = Request.QueryString["SenderID"];
                date1 = Request.QueryString["Date1"];
                date2 = Request.QueryString["Date2"];
                status = Request.QueryString["Status"];
            }

            string query1 = string.Format("&appid={0}&tabid={1}&title={2}&flowid={3}&sender={4}&date1={5}&date2={6}&status={7}",
                Request.QueryString["appid"], Request.QueryString["tabid"], title.UrlEncode(), flowid, sender, date1, date2, status);

            string query = string.Format("{0}&pagesize={1}&pagenumber={2}", query1, Request.QueryString["pagesize"], Request.QueryString["pagenumber"]);

            string pager;

            List<SelectListItem> statusItems = new List<SelectListItem>();
            statusItems.Add(new SelectListItem() { Text = "==全部==", Value = "0", Selected = "0" == status });
            statusItems.Add(new SelectListItem() { Text = "未完成", Value = "1", Selected = "1" == status });
            statusItems.Add(new SelectListItem() { Text = "已完成", Value = "2", Selected = "2" == status });



            //可管理的流程ID数组
            var flows = bworkFlow.GetInstanceManageFlowIDList(Business.Platform.Users.CurrentUserID, typeid);
            List<Guid> flowids = new List<Guid>();
            foreach (var flow in flows.OrderBy(p => p.Value))
            {
                flowids.Add(flow.Key);
            }
            Guid[] manageFlows = flowids.ToArray();

            string flowOptions = bworkFlow.GetOptions(flows, typeid, flowid);

            var taskList = bworkFlowTask.GetInstances(manageFlows, new Guid[] { },
                sender.IsNullOrEmpty() ? new Guid[] { } : new Guid[] { sender.Replace(Business.Platform.Users.PREFIX, "").ToGuid() },
                out pager, query1, title, flowid, date1, date2, status.ToInt());

            ViewBag.Query = query;
            ViewBag.Pager = pager;
            ViewBag.StatusItems = statusItems;
            ViewBag.Title1 = title;
            ViewBag.FlowOptions = flowOptions;
            ViewBag.Sender = sender;
            ViewBag.Date1 = date1;
            ViewBag.Date2 = date2;

            return View(taskList);
        }


        public ActionResult InstanceManage()
        {
            return View();
        }

        public ActionResult Designate()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Designate(FormCollection collection)
        {
            string taskid = Request.QueryString["taskid"];
            Guid taskID;
            if (taskid.IsGuid(out taskID))
            {
                string user = Request.Form["user"];
                string openerid = Request.QueryString["openerid"];

                Business.Platform.WorkFlowTask btask = new Business.Platform.WorkFlowTask();
                var users = new Business.Platform.Organize().GetAllUsers(user);
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                foreach (var user1 in users)
                {
                    btask.DesignateTask(taskID, user1);

                    Business.Platform.Log.Add("管理员指派了流程任务", "将任务" + taskID + "指派给了：" + user1.Name + user1.ID, Business.Platform.Log.Types.流程相关);

                    sb.Append(user1.Name);
                    sb.Append(",");
                }
                string userNames = sb.ToString().TrimEnd(',');
                ViewBag.Script = "alert('已成功指派给：" + userNames + "!');new RoadUI.Window().reloadOpener();new RoadUI.Window().close();";
            }
            return View();
        }

        public string Delete()
        {
            string flowid = Request.QueryString["flowid1"];
            string groupid = Request.QueryString["groupid"];

            Guid fid, gid;
            if (flowid.IsGuid(out fid) && groupid.IsGuid(out gid))
            {
                System.Text.StringBuilder delxml = new System.Text.StringBuilder();
                var tasks = new Business.Platform.WorkFlowTask().GetTaskList(fid, gid);
                foreach (var task in tasks)
                {
                    delxml.Append(task.Serialize());
                }
                new Business.Platform.WorkFlowTask().DeleteInstance(fid, gid);
                Business.Platform.Log.Add("管理员删除了流程实例", delxml.ToString(), Business.Platform.Log.Types.流程相关);
                return "删除成功!";
            }
            else
            {
                return "参数错误!";
            }
        }

        public ActionResult WaitList()
        {
            return WaitList(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult WaitList(FormCollection collection)
        {
            Business.Platform.WorkFlowTask bworkFlowTask = new Business.Platform.WorkFlowTask();
            Business.Platform.WorkFlow bworkFlow = new Business.Platform.WorkFlow();

            string title = "";
            string flowid = "";
            string sender = "";
            string date1 = "";
            string date2 = "";

            if (collection != null)
            {
                title = Request.Form["Title"];
                flowid = Request.Form["FlowID"];
                sender = Request.Form["SenderID"];
                date1 = Request.Form["Date1"];
                date2 = Request.Form["Date2"];
            }
            else
            {
                title = Request.QueryString["title"];
                flowid = Request.QueryString["flowid"];
                sender = Request.QueryString["sender"];
                date1 = Request.QueryString["date1"];
                date2 = Request.QueryString["date2"];
            }
            ViewBag.title = title;
            ViewBag.flowid = flowid;
            ViewBag.sender = sender;
            ViewBag.date1 = date1;
            ViewBag.date2 = date2;

            string query = string.Format("&appid={0}&tabid={1}&title={2}&flowid={3}&sender={4}&date1={5}&date2={6}",
                Request.QueryString["appid"], Request.QueryString["tabid"], title.UrlEncode(), flowid, sender, date1, date2);
            string pager;

            var taskList = bworkFlowTask.GetTasks(Business.Platform.Users.CurrentUserID,
               out pager, query, title, flowid, sender, date1, date2);
            ViewBag.query = query;
            ViewBag.flowOptions = bworkFlow.GetOptions(flowid);
            return View(taskList);
        }

        public ActionResult CompletedList()
        {
            return CompletedList(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CompletedList(FormCollection collection)
        {
            Business.Platform.WorkFlowTask bworkFlowTask = new Business.Platform.WorkFlowTask();
            Business.Platform.WorkFlow bworkFlow = new Business.Platform.WorkFlow();


            string title = "";
            string flowid = "";
            string sender = "";
            string date1 = "";
            string date2 = "";

            if (collection!=null)
            {
                title = Request.Form["Title"];
                flowid = Request.Form["FlowID"];
                sender = Request.Form["SenderID"];
                date1 = Request.Form["Date1"];
                date2 = Request.Form["Date2"];
            }
            else
            {
                title = Request.QueryString["title"];
                flowid = Request.QueryString["flowid"];
                sender = Request.QueryString["sender"];
                date1 = Request.QueryString["date1"];
                date2 = Request.QueryString["date2"];
            }
            ViewBag.title = title;
            ViewBag.flowid = flowid;
            ViewBag.sender = sender;
            ViewBag.date1 = date1;
            ViewBag.date2 = date2;

            string query2 = string.Format("&appid={0}&tabid={1}&title={2}&flowid={3}&sender={4}&date1={5}&date2={6}",
                Request.QueryString["appid"], Request.QueryString["tabid"], title.UrlEncode(), flowid, sender, date1, date2
                );

            string query = string.Format("{0}&pagesize={1}&pagenumber={2}",
                query2,
                Request.QueryString["pagesize"], Request.QueryString["pagenumber"]
                );

            string pager;

            var taskList = bworkFlowTask.GetTasks(Business.Platform.Users.CurrentUserID,
               out pager, query2, title, flowid, sender, date1, date2, 1);
            ViewBag.pager = pager;
            ViewBag.flowOptions = bworkFlow.GetOptions(flowid);
            ViewBag.query = query;
            return View(taskList);
        }

        public ActionResult Detail()
        {
            Business.Platform.WorkFlowTask bworkFlowTask = new Business.Platform.WorkFlowTask();
            Business.Platform.WorkFlow bworkFlow = new Business.Platform.WorkFlow();

            string flowid = Request.QueryString["flowid1"] ?? Request.QueryString["flowid"];
            string groupid = Request.QueryString["groupid"];
            string displayModel = Request.QueryString["displaymodel"];

            var wfInstall = bworkFlow.GetWorkFlowRunModel(flowid);
            var tasks = bworkFlowTask.GetTaskList(flowid.ToGuid(), groupid.ToGuid()).OrderBy(p => p.Sort);
            string query = string.Format("&flowid1={0}&groupid={1}&appid={2}&tabid={3}&title={4}&flowid={5}&sender={6}&date1={7}&date2={8}&iframeid={9}&openerid={10}",
                flowid, groupid,
                Request.QueryString["appid"],
                Request.QueryString["tabid"],
                Request.QueryString["title"].UrlEncode(),
                Request.QueryString["flowid"],
                Request.QueryString["sender"],
                Request.QueryString["date1"],
                Request.QueryString["date2"],
                Request.QueryString["iframeid"],
                Request.QueryString["openerid"]
                );
            ViewBag.flowid = flowid;
            ViewBag.groupid = groupid;
            ViewBag.displayModel = displayModel;
            ViewBag.wfInstall = wfInstall;
            ViewBag.query = query;
            return View(tasks);
        }

        public string Withdraw()
        {
            string taskid = Request.QueryString["taskid"];
            Guid tid;
            if (!taskid.IsGuid(out tid))
            {
                return "参数错误!";
            }
            else if (new Business.Platform.WorkFlowTask().HasWithdraw(tid))
            {
                bool success = new Business.Platform.WorkFlowTask().WithdrawTask(tid);
                if (success)
                {
                    Business.Platform.Log.Add("收回了任务", "任务ID：" + taskid, Business.Platform.Log.Types.流程相关);
                    return "收回成功!";
                }
                else
                {
                    return "收回失败!";
                }
            }
            else
            {
                return "该任务不能收回!";
            }
        }

    }
}
