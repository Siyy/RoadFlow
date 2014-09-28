using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class WorkFlowDelegationController : MyController
    {
        //
        // GET: /WorkFlowDelegation/

        public ActionResult Index()
        {
            return Index(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(FormCollection collection)
        {
            Business.Platform.WorkFlowDelegation bworkFlowDelegation = new Business.Platform.WorkFlowDelegation();
            Business.Platform.Organize borganize = new Business.Platform.Organize();
            Business.Platform.Users busers = new Business.Platform.Users();
            Business.Platform.WorkFlow bworkFlow = new Business.Platform.WorkFlow();
            IEnumerable<Data.Model.WorkFlowDelegation> workFlowDelegationList;

            string startTime = string.Empty;
            string endTime = string.Empty;
            string query1 = string.Format("&appid={0}&tabid={1}&isoneself={2}", Request.QueryString["appid"], Request.QueryString["tabid"], Request.QueryString["isoneself"]);
            if (collection != null)
            {
                if (!Request.Form["DeleteBut"].IsNullOrEmpty())
                {
                    string ids = Request.Form["checkbox_app"];
                    foreach (string id in ids.Split(','))
                    {
                        Guid bid;
                        if (!id.IsGuid(out bid))
                        {
                            continue;
                        }
                        var comment = bworkFlowDelegation.Get(bid);
                        if (comment != null)
                        {
                            bworkFlowDelegation.Delete(bid);
                            Business.Platform.Log.Add("删除了流程意见", comment.Serialize(), Business.Platform.Log.Types.流程相关);
                        }
                    }
                    bworkFlowDelegation.RefreshCache();
                }
            }

            string pager;
            bool isOneSelf = "1" == Request.QueryString["isoneself"];
            if (isOneSelf)
            {
                workFlowDelegationList = bworkFlowDelegation.GetPagerData(out pager, query1, Business.Platform.Users.CurrentUserID.ToString(), startTime, endTime);
            }
            else
            {
                workFlowDelegationList = bworkFlowDelegation.GetPagerData(out pager, query1, "", startTime, endTime);
            }
            ViewBag.Query1 = query1;
            return View(workFlowDelegationList);
        }

        public ActionResult Edit()
        {
            return Edit(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(FormCollection collection)
        {
            Business.Platform.WorkFlowDelegation bworkFlowDelegation = new Business.Platform.WorkFlowDelegation();
            Data.Model.WorkFlowDelegation workFlowDelegation = null;
            string id = Request.QueryString["id"];

            string UserID = string.Empty;
            string ToUserID = string.Empty;
            string StartTime = string.Empty;
            string EndTime = string.Empty;
            string FlowID = string.Empty;
            string Note = string.Empty;

            bool isOneSelf = "1" == Request.QueryString["isoneself"];

            if (isOneSelf)
            {
                UserID = Business.Platform.Users.PREFIX + Business.Platform.Users.CurrentUserID.ToString();
                workFlowDelegation.UserID = Business.Platform.Users.CurrentUserID;
            }

            Guid delegationID;
            if (id.IsGuid(out delegationID))
            {
                workFlowDelegation = bworkFlowDelegation.Get(delegationID);
                if (workFlowDelegation != null)
                {
                    FlowID = workFlowDelegation.FlowID.ToString();
                }
            }
            string oldXML = workFlowDelegation.Serialize();

            if (collection != null)
            {
                UserID = Request.Form["UserID"];
                ToUserID = Request.Form["ToUserID"];
                StartTime = Request.Form["StartTime"];
                EndTime = Request.Form["EndTime"];
                FlowID = Request.Form["FlowID"];
                Note = Request.Form["Note"];

                bool isAdd = !id.IsGuid();
                if (workFlowDelegation == null)
                {
                    workFlowDelegation = new Data.Model.WorkFlowDelegation();
                    workFlowDelegation.ID = Guid.NewGuid();
                }
                workFlowDelegation.UserID = Business.Platform.Users.RemovePrefix(UserID).ToGuid();
                workFlowDelegation.EndTime = EndTime.ToDateTime();
                if (FlowID.IsGuid())
                {
                    workFlowDelegation.FlowID = FlowID.ToGuid();
                }
                workFlowDelegation.Note = Note.IsNullOrEmpty() ? null : Note;
                workFlowDelegation.StartTime = StartTime.ToDateTime();
                workFlowDelegation.ToUserID = Business.Platform.Users.RemovePrefix(ToUserID).ToGuid();
                workFlowDelegation.WriteTime = Utility.DateTimeNew.Now;



                if (isAdd)
                {
                    bworkFlowDelegation.Add(workFlowDelegation);
                    Business.Platform.Log.Add("添加了工作委托", workFlowDelegation.Serialize(), Business.Platform.Log.Types.流程相关);
                }
                else
                {
                    bworkFlowDelegation.Update(workFlowDelegation);
                    Business.Platform.Log.Add("修改了工作委托", "", Business.Platform.Log.Types.流程相关, oldXML, workFlowDelegation.Serialize());
                }
                bworkFlowDelegation.RefreshCache();
                ViewBag.Script = "alert('保存成功!');new RoadUI.Window().reloadOpener();";
            }
            ViewBag.FlowOptions = new Business.Platform.WorkFlow().GetOptions(FlowID);
            return View(workFlowDelegation == null ? new Data.Model.WorkFlowDelegation() : workFlowDelegation);
        }

    }
}
