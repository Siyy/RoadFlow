using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class DBConnectionController : MyController
    {
        //
        // GET: /DBConnection/

        public ActionResult Index()
        {
            string query1 = string.Format("&appid={0}&tabid={1}", Request.QueryString["appid"], Request.QueryString["tabid"]);
            Business.Platform.DBConnection bdbconn = new Business.Platform.DBConnection();

            if (!Request.Form["DeleteBut"].IsNullOrEmpty())
            {
                string deleteID = Request.Form["checkbox_app"];
                System.Text.StringBuilder delxml = new System.Text.StringBuilder();
                foreach (string id in deleteID.Split(','))
                {
                    Guid gid;
                    if (id.IsGuid(out gid))
                    {
                        delxml.Append(bdbconn.Get(gid).Serialize());
                        bdbconn.Delete(gid);
                    }
                }
                bdbconn.ClearCache();
                Business.Platform.Log.Add("删除了数据连接", delxml.ToString(), Business.Platform.Log.Types.流程相关);
            }
            

            var connList = bdbconn.GetAll();
            ViewBag.Query1 = query1;
            return View(connList);
        }

        public ActionResult Edit()
        {
            return Edit(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(FormCollection collection)
        {
            string editid = Request.QueryString["id"];
            Business.Platform.DBConnection bdbConn = new Business.Platform.DBConnection();
            Data.Model.DBConnection dbconn = null;
            if (editid.IsGuid())
            {
                dbconn = bdbConn.Get(editid.ToGuid());
            }
            bool isAdd = !editid.IsGuid();
            string oldXML = string.Empty;
            if (dbconn == null)
            {
                dbconn = new Data.Model.DBConnection();
                dbconn.ID = Guid.NewGuid();
            }
            else
            {
                oldXML = dbconn.Serialize();
            }

            if (collection != null)
            {
                string Name = Request.Form["Name"];
                string LinkType = Request.Form["LinkType"];
                string ConnStr = Request.Form["ConnStr"];
                string Note = Request.Form["Note"];
                dbconn.Name = Name.Trim();
                dbconn.Type = LinkType;
                dbconn.ConnectionString = ConnStr;
                dbconn.Note = Note;

                if (isAdd)
                {
                    bdbConn.Add(dbconn);
                    Business.Platform.Log.Add("添加了应用程序库", dbconn.Serialize(), Business.Platform.Log.Types.角色应用);
                    ViewBag.Script = "alert('添加成功!');new RoadUI.Window().reloadOpener();new RoadUI.Window().close();";
                }
                else
                {
                    bdbConn.Update(dbconn);
                    Business.Platform.Log.Add("修改了应用程序库", "", Business.Platform.Log.Types.角色应用, oldXML, dbconn.Serialize());
                    ViewBag.Script = "alert('修改成功!');new RoadUI.Window().reloadOpener();new RoadUI.Window().close();";
                }
                bdbConn.ClearCache();
            }

            ViewBag.TypeOptions = bdbConn.GetAllTypeOptions(dbconn.Type);

            return View(dbconn);
        }

        public string Test()
        {
            string connid = Request.QueryString["id"];
            Guid cid;
            if (!connid.IsGuid(out cid))
            {
                return "参数错误";
            }
            return new Business.Platform.DBConnection().Test(cid);
        }
    }
}
