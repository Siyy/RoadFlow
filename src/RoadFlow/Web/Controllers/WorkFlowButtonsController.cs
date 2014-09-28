using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class WorkFlowButtonsController : MyController
    {
        //
        // GET: /WorkFlowButtons/

        public ActionResult Index()
        {
            return Index(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(FormCollection collection)
        {
            string name = string.Empty;
            ViewBag.Query1 = string.Format("&appid={0}&tabid={1}", Request.QueryString["appid"], Request.QueryString["tabid"]);
            Business.Platform.WorkFlowButtons bworkFlowButtons = new Business.Platform.WorkFlowButtons();
            IEnumerable<Data.Model.WorkFlowButtons> workFlowButtonsList;

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
                        var but = bworkFlowButtons.Get(bid);
                        if (but != null)
                        {
                            bworkFlowButtons.Delete(bid);
                            Business.Platform.Log.Add("删除了流程按钮", but.Serialize(), Business.Platform.Log.Types.流程相关);
                        }
                    }
                    bworkFlowButtons.ClearCache();

                }
                workFlowButtonsList = bworkFlowButtons.GetAll();

                if (!Request.Form["Search"].IsNullOrEmpty())
                {
                    name = Request.Form["Name"];
                    if (!name.IsNullOrEmpty())
                    {
                        workFlowButtonsList = workFlowButtonsList.Where(p => p.Title.IndexOf(name) >= 0);
                    }
                }
            }
            else
            {
                workFlowButtonsList = bworkFlowButtons.GetAll();
            }
            ViewBag.Name = name;
            return View(workFlowButtonsList);
        }


        public ActionResult Edit()
        {
            return Edit(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(FormCollection collection)
        {
            Business.Platform.WorkFlowButtons bworkFlowButtons = new Business.Platform.WorkFlowButtons();
            Data.Model.WorkFlowButtons workFlowButton = null;
            string id = Request.QueryString["id"];

            string title = string.Empty;
            string ico = string.Empty;
            string script = string.Empty;
            string note = string.Empty;

            Guid buttionID;
            if (id.IsGuid(out buttionID))
            {
                workFlowButton = bworkFlowButtons.Get(buttionID);
            }
            string oldXML = workFlowButton.Serialize();
            if (collection != null)
            {
                title = Request.Form["Title"];
                ico = Request.Form["Ico"];
                script = Request.Form["Script"];
                note = Request.Form["Note"];

                bool isAdd = !id.IsGuid();
                if (workFlowButton == null)
                {
                    workFlowButton = new Data.Model.WorkFlowButtons();
                    workFlowButton.ID = Guid.NewGuid();
                    workFlowButton.Sort = bworkFlowButtons.GetMaxSort();
                }

                workFlowButton.Ico = ico.IsNullOrEmpty() ? null : ico.Trim();
                workFlowButton.Note = note.IsNullOrEmpty() ? null : note.Trim();
                workFlowButton.Script = script.IsNullOrEmpty() ? null : script;
                workFlowButton.Title = title.Trim();

                if (isAdd)
                {
                    bworkFlowButtons.Add(workFlowButton);
                    Business.Platform.Log.Add("添加了流程按钮", workFlowButton.Serialize(), Business.Platform.Log.Types.流程相关);
                }
                else
                {
                    bworkFlowButtons.Update(workFlowButton);
                    Business.Platform.Log.Add("修改了流程按钮", "", Business.Platform.Log.Types.流程相关, oldXML, workFlowButton.Serialize());
                }
                bworkFlowButtons.ClearCache();
                ViewBag.Script = "new RoadUI.Window().reloadOpener();alert('保存成功!');new RoadUI.Window().close();";
            }
            return View(workFlowButton == null ? new Data.Model.WorkFlowButtons() : workFlowButton);
        }

    }
}
