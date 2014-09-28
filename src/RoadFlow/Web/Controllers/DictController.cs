using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class DictController : MyController
    {
        //
        // GET: /Dict/

        public ActionResult Index()
        {
            return View();
        }

        public string Tree1()
        {
            Business.Platform.Dictionary BDict = new Business.Platform.Dictionary();

            string rootid = Request.QueryString["root"];
            Guid rootID = Guid.Empty;
            if (!rootid.IsNullOrEmpty())
            {
                if (!rootid.IsGuid(out rootID))
                {
                    var dict = BDict.GetByCode(rootid);
                    if (dict != null)
                    {
                        rootID = dict.ID;
                    }
                }
            }

            var root = rootID != Guid.Empty ? BDict.Get(rootID) : BDict.GetRoot();
            System.Text.StringBuilder json = new System.Text.StringBuilder("[", 1000);
            json.Append("{");
            json.AppendFormat("\"id\":\"{0}\",", root.ID);
            json.AppendFormat("\"parentID\":\"{0}\",", root.ParentID);
            json.AppendFormat("\"title\":\"{0}\",", root.Title);
            json.AppendFormat("\"ico\":\"{0}\",", Url.Content("~/images/ico/role.gif"));
            json.AppendFormat("\"hasChilds\":\"{0}\",", BDict.HasChilds(root.ID) ? "1" : "0");
            json.Append("\"childs\":[");

            var childs = BDict.GetChilds(root.ID);
            int i = 0;
            int count = childs.Count;
            foreach (var child in childs)
            {
                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", child.ID);
                json.AppendFormat("\"parentID\":\"{0}\",", child.ParentID);
                json.AppendFormat("\"title\":\"{0}\",", child.Title);
                json.AppendFormat("\"ico\":\"{0}\",", "");
                json.AppendFormat("\"hasChilds\":\"{0}\",", BDict.HasChilds(child.ID) ? "1" : "0");
                json.Append("\"childs\":[");
                json.Append("]");
                json.Append("}");
                if (i++ < count - 1)
                {
                    json.Append(",");
                }
            }

            json.Append("]");
            json.Append("}");
            json.Append("]");
            return json.ToString();
        }

        public string TreeRefresh()
        {
            string id = Request.QueryString["refreshid"];
            Guid gid;
            if (!id.IsGuid(out gid))
            {
                Response.Write("[]");
            }
            System.Text.StringBuilder json = new System.Text.StringBuilder("[", 1000);
            Business.Platform.Dictionary BDict = new Business.Platform.Dictionary();
            var childs = BDict.GetChilds(gid).OrderBy(p => p.Sort);
            int i = 0;
            int count = childs.Count();
            foreach (var child in childs)
            {
                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", child.ID);
                json.AppendFormat("\"parentID\":\"{0}\",", child.ParentID);
                json.AppendFormat("\"title\":\"{0}\",", child.Title);
                json.AppendFormat("\"ico\":\"{0}\",", "");
                json.AppendFormat("\"hasChilds\":\"{0}\",", BDict.HasChilds(child.ID) ? "1" : "0");
                json.Append("\"childs\":[");
                json.Append("]");
                json.Append("}");
                if (i++ < count - 1)
                {
                    json.Append(",");
                }
            }
            json.Append("]");
            return json.ToString();
        }


        public ActionResult Tree()
        {
            return View();
        }

        public ActionResult Body()
        {
            return Body(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Body(FormCollection collection)
        {
            Business.Platform.Dictionary bdict = new Business.Platform.Dictionary();
            Data.Model.Dictionary dict = null;
            string id = Request.QueryString["id"];
            if (id.IsGuid())
            {
                dict = bdict.Get(id.ToGuid());
            }
            if (dict == null)
            {
                dict = bdict.GetRoot();
            }

            if (collection != null)
            {
                string refreshID = dict.ParentID == Guid.Empty ? dict.ID.ToString() : dict.ParentID.ToString();
                //删除
                if (!Request.Form["Delete"].IsNullOrEmpty())
                {
                    int i = bdict.DeleteAndAllChilds(dict.ID);
                    bdict.RefreshCache();
                    Business.Platform.Log.Add("删除了数据字典及其下级共" + i.ToString() + "项", dict.Serialize(), Business.Platform.Log.Types.数据字典);
                    ViewBag.Script = "alert('删除成功!');parent.frames[0].reLoad('" + refreshID + "');window.location='Body?id=" + dict.ParentID.ToString() + "&appid=" + Request.QueryString["appid"] + "';";
                    return View(dict);
                }

                string title = Request.Form["Title"];
                string code = Request.Form["Code"];
                string values = Request.Form["Values"];
                string note = Request.Form["Note"];
                string other = Request.Form["Other"];
                string oldXML = dict.Serialize();

                dict.Code = code.IsNullOrEmpty() ? null : code.Trim();
                dict.Note = note.IsNullOrEmpty() ? null : note.Trim();
                dict.Other = other.IsNullOrEmpty() ? null : other.Trim();
                dict.Title = title.Trim();
                dict.Value = values.IsNullOrEmpty() ? null : values.Trim();

                bdict.Update(dict);
                bdict.RefreshCache();
                Business.Platform.Log.Add("修改了数据字典项", "", Business.Platform.Log.Types.数据字典, oldXML, dict.Serialize());
                ViewBag.Script = "alert('保存成功!');parent.frames[0].reLoad('" + refreshID + "');";
            }

            return View(dict);
        }

        public string CheckCode()
        { 
            string code = Request.Form["value"];
            string id = Request["id"];
            return new Business.Platform.Dictionary().HasCode(code, id) ? "唯一代码重复" : "1";
        }

        public ActionResult Add()
        {
            return add1(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(FormCollection collection)
        {
            return add1(collection);
        }

        public ActionResult add1(FormCollection collection)
        {
            Data.Model.Dictionary dict = new Data.Model.Dictionary();
            Business.Platform.Dictionary bdict = new Business.Platform.Dictionary();
            string id = Request.QueryString["id"];
            if (!id.IsGuid())
            {
                var dictRoot = bdict.GetRoot();
                id = dictRoot != null ? dictRoot.ID.ToString() : "";
            }
            if (!id.IsGuid())
            {
                throw new Exception("未找到父级");
            }

            if (collection != null)
            {
                string title = Request.Form["Title"];
                string code = Request.Form["Code"];
                string values = Request.Form["Values"];
                string note = Request.Form["Note"];
                string other = Request.Form["Other"];

                dict.ID = Guid.NewGuid();
                dict.Code = code.IsNullOrEmpty() ? null : code.Trim();
                dict.Note = note.IsNullOrEmpty() ? null : note.Trim();
                dict.Other = other.IsNullOrEmpty() ? null : other.Trim();
                dict.ParentID = id.ToGuid();
                dict.Sort = bdict.GetMaxSort(id.ToGuid());
                dict.Title = title.Trim();
                dict.Value = values.IsNullOrEmpty() ? null : values.Trim();

                bdict.Add(dict);
                bdict.RefreshCache();
                Business.Platform.Log.Add("添加了数据字典项", dict.Serialize(), Business.Platform.Log.Types.数据字典);
                ViewBag.Script = "alert('添加成功!');parent.frames[0].reLoad('" + id + "');";
            }

            return View(dict);
        }


        public ActionResult Sort()
        {
            return Sort(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Sort(FormCollection collection)
        {
            Business.Platform.Dictionary BDict = new Business.Platform.Dictionary();
            string id = Request.QueryString["id"];
            string refreshID = "";
            Guid dictid;
            List<Data.Model.Dictionary> dicts = new List<Data.Model.Dictionary>();
            if (id.IsGuid(out dictid))
            {
                var dict = BDict.Get(dictid);
                if (dict != null)
                {
                    dicts = BDict.GetChilds(dict.ParentID);
                    refreshID = dict.ParentID.ToString();
                }
            }

            if (collection != null)
            {
                string sortdict = Request.Form["sort"];
                if (sortdict.IsNullOrEmpty())
                {
                    return View(dicts);
                }
                string[] sortArray = sortdict.Split(',');

                int i = 1;
                foreach (string id1 in sortArray)
                {
                    Guid gid;
                    if (id1.IsGuid(out gid))
                    {
                        BDict.UpdateSort(gid, i++);
                    }
                }
                BDict.RefreshCache();

                Business.Platform.Log.Add("保存了数据字典排序", "保存了ID为：" + id + "的同级排序", Business.Platform.Log.Types.数据字典);
                ViewBag.Script = "parent.frames[0].reLoad('" + refreshID + "');";
                dicts = BDict.GetChilds(refreshID.ToGuid());
            }

            return View(dicts);
        }

    }
}
