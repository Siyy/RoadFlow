using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text;
using System.IO;

namespace WebMvc.Controllers
{
    public class WorkFlowFormDesignerController : Controller
    {
        //
        // GET: /WorkFlowFormDesigner/

        public ActionResult Index()
        {
            return View();
        }

        public string GetHtml()
        {
            string id = Request["id"];
            Guid gid;
            if (!id.IsGuid(out gid))
            {
                return "";
            }

            var wff = new Business.Platform.WorkFlowForm().Get(gid);
            if (wff == null)
            {
                return "";
            }
            else
            {
                return wff.Html;
            }
        }

        public string GetAttribute()
        {
            string id = Request["id"];
            Guid gid;
            if (!id.IsGuid(out gid))
            {
                return "";
            }

            var wff = new Business.Platform.WorkFlowForm().Get(gid);
            if (wff == null)
            {
                return "";
            }
            else
            {
                return wff.Attribute;
            }
        }

        public string Getsubtable()
        {
            string id = Request["id"];
            Guid gid;
            if (!id.IsGuid(out gid))
            {
                return "";
            }

            var wff = new Business.Platform.WorkFlowForm().Get(gid);
            if (wff == null)
            {
                return "";
            }
            else
            {
                return wff.SubTableJson;
            }
        }

        public string TestSql()
        {
            string sql = Request["sql"];
            string dbconn = Request["dbconn"];

            if (sql.IsNullOrEmpty() || !dbconn.IsGuid())
            {
                return "SQL语句为空或未设置数据连接";
            }

            Business.Platform.DBConnection bdbconn = new Business.Platform.DBConnection();
            var dbconn1 = bdbconn.Get(dbconn.ToGuid());
            if (bdbconn.TestSql(dbconn1, sql))
            {
                return "SQL语句测试正确";
            }
            else
            {
                return "SQL语句测试错误";
            }
        }

        public string Save()
        {
            string html = Request["html"];
            string name = Request["name"];
            string att = Request["att"];
            string id = Request["id"];
            string type = Request["type"];
            string subtable = Request["subtable"];
            if (name.IsNullOrEmpty())
            {
                return "表单名称不能为空!";
            }

            Guid formID;
            if (!id.IsGuid(out formID))
            {
                return "表单ID无效!";
            }

            Business.Platform.WorkFlowForm WFF = new Business.Platform.WorkFlowForm();
            Data.Model.WorkFlowForm wff = WFF.Get(formID);
            bool isAdd = false;
            string oldXML = string.Empty;
            if (wff == null)
            {
                wff = new Data.Model.WorkFlowForm();
                wff.ID = formID;
                wff.Type = type.ToGuid();
                wff.CreateUserID = Business.Platform.Users.CurrentUserID;
                wff.CreateUserName = Business.Platform.Users.CurrentUserName;
                wff.CreateTime = Utility.DateTimeNew.Now;
                wff.Status = 0;
                isAdd = true;
            }
            else
            {
                oldXML = wff.Serialize();
            }

            wff.Attribute = att;
            wff.Html = html;
            wff.LastModifyTime = Utility.DateTimeNew.Now;
            wff.Name = name;
            wff.SubTableJson = subtable;

            if (isAdd)
            {
                WFF.Add(wff);
                Business.Platform.Log.Add("添加了流程表单", wff.Serialize(), Business.Platform.Log.Types.流程相关);
            }
            else
            {
                WFF.Update(wff);
                Business.Platform.Log.Add("修改了流程表单", "", Business.Platform.Log.Types.流程相关, oldXML, wff.Serialize());
            }
            return "保存成功!";
        }

        public string GetSubTableData()
        {
            string secondtable = Request["secondtable"];
            string primarytablefiled = Request["primarytablefiled"];
            string secondtableprimarykey = Request["secondtableprimarykey"];
            string primarytablefiledvalue = Request["primarytablefiledvalue"];
            string secondtablerelationfield = Request["secondtablerelationfield"];
            string dbconnid = Request["dbconnid"];
            LitJson.JsonData data = new Business.Platform.WorkFlow().GetSubTableData(dbconnid, secondtable, secondtablerelationfield, primarytablefiledvalue, secondtableprimarykey);
            return data.ToJson();
        }

        
        public string Publish()
        {
            string html = Request["html"];
            string name = Request["name"];
            string att = Request["att"];
            string id = Request["id"];

            Guid gid;
            if (!id.IsGuid(out gid) || name.IsNullOrEmpty() || att.IsNullOrEmpty() || html.IsNullOrEmpty())
            {
                return "参数错误!";
            }
            Business.Platform.WorkFlowForm WFF = new Business.Platform.WorkFlowForm();

            Data.Model.WorkFlowForm wff = WFF.Get(gid);
            if (wff == null)
            {
                return "未找到表单!";
            }

            string fileName = id + ".cshtml";

            System.Text.StringBuilder serverScript = new System.Text.StringBuilder("@{\r\n");
            var attrJSON = LitJson.JsonMapper.ToObject(att);
            serverScript.Append("\tstring FlowID = Request.QueryString[\"flowid\"];\r\n");
            serverScript.Append("\tstring StepID = Request.QueryString[\"stepid\"];\r\n");
            serverScript.Append("\tstring GroupID = Request.QueryString[\"groupid\"];\r\n");
            serverScript.Append("\tstring TaskID = Request.QueryString[\"taskid\"];\r\n");
            serverScript.Append("\tstring InstanceID = Request.QueryString[\"instanceid\"];\r\n");
            serverScript.Append("\tstring DisplayModel = Request.QueryString[\"display\"] ?? \"0\";\r\n");
            serverScript.AppendFormat("\tstring DBConnID = \"{0}\";\r\n", attrJSON["dbconn"].ToString());
            serverScript.AppendFormat("\tstring DBTable = \"{0}\";\r\n", attrJSON["dbtable"].ToString());
            serverScript.AppendFormat("\tstring DBTablePK = \"{0}\";\r\n", attrJSON["dbtablepk"].ToString());
            serverScript.AppendFormat("\tstring DBTableTitle = \"{0}\";\r\n", attrJSON["dbtabletitle"].ToString());

            serverScript.Append("\tBusiness.Platform.Dictionary BDictionary = new Business.Platform.Dictionary();\r\n");
            serverScript.Append("\tBusiness.Platform.WorkFlow BWorkFlow = new Business.Platform.WorkFlow();\r\n");
            serverScript.Append("\tBusiness.Platform.WorkFlowTask BWorkFlowTask = new Business.Platform.WorkFlowTask();\r\n");
            serverScript.Append("\tstring fieldStatus = BWorkFlow.GetFieldStatus(FlowID, StepID);\r\n");
            serverScript.Append("\tLitJson.JsonData initData = BWorkFlow.GetFormData(DBConnID, DBTable, DBTablePK, InstanceID, fieldStatus);\r\n");
            serverScript.Append("\tstring TaskTitle = BWorkFlow.GetFromFieldData(initData, DBTable, DBTableTitle);\r\n");

            serverScript.Append("}\r\n");
            serverScript.Append("<link href=\"~/Scripts/FlowRun/Forms/flowform.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
            serverScript.Append("<script src=\"~/Scripts/FlowRun/Forms/common.js\" type=\"text/javascript\" ></script>\r\n");

            if (attrJSON.ContainsKey("hasEditor") && "1" == attrJSON["hasEditor"].ToString())
            {
                serverScript.Append("<script src=\"~/Scripts/ueditor/ueditor.config.js\" type=\"text/javascript\" ></script>\r\n");
                serverScript.Append("<script src=\"~/Scripts/ueditor/ueditor.all.min.js\" type=\"text/javascript\" ></script>\r\n");
                serverScript.Append("<script src=\"~/Scripts/ueditor/lang/zh-cn/zh-cn.js\" type=\"text/javascript\" ></script>\r\n");
                serverScript.Append("<script src=\"~/Scripts/ueditor/ueditor-patch-149.js\" type=\"text/javascript\" ></script>\r\n");
                serverScript.Append("<input type=\"hidden\" id=\"Form_HasUEditor\" name=\"Form_HasUEditor\" value=\"1\" />\r\n");
            }
            string validatePropType = attrJSON.ContainsKey("validatealerttype") ? attrJSON["validatealerttype"].ToString() : "2";
            serverScript.Append("<input type=\"hidden\" id=\"Form_ValidateAlertType\" name=\"Form_ValidateAlertType\" value=\"" + validatePropType + "\" />\r\n");
            if (attrJSON.ContainsKey("autotitle") && attrJSON["autotitle"].ToString().ToLower() == "true")
            {
                serverScript.AppendFormat("<input type=\"hidden\" id=\"{0}\" name=\"{0}\" value=\"{1}\" />\r\n",
                    string.Concat(attrJSON["dbtable"].ToString(), ".", attrJSON["dbtabletitle"].ToString()),
                    "@(TaskTitle.IsNullOrEmpty() ? BWorkFlow.GetAutoTaskTitle(FlowID, StepID, Request.QueryString[\"groupid\"]) : TaskTitle)"
                    );
            }
            serverScript.AppendFormat("<input type=\"hidden\" id=\"Form_TitleField\" name=\"Form_TitleField\" value=\"{0}\" />\r\n", string.Concat(attrJSON["dbtable"].ToString(), ".", attrJSON["dbtabletitle"].ToString()));
            //serverScript.AppendFormat("<input type=\"hidden\" id=\"Form_Name\" name=\"Form_Name\" value=\"{0}\" />\r\n", attrJSON["name"].ToString());
            serverScript.AppendFormat("<input type=\"hidden\" id=\"Form_DBConnID\" name=\"Form_DBConnID\" value=\"{0}\" />\r\n", attrJSON["dbconn"].ToString());
            serverScript.AppendFormat("<input type=\"hidden\" id=\"Form_DBTable\" name=\"Form_DBTable\" value=\"{0}\" />\r\n", attrJSON["dbtable"].ToString());
            serverScript.AppendFormat("<input type=\"hidden\" id=\"Form_DBTablePk\" name=\"Form_DBTablePk\" value=\"{0}\" />\r\n", attrJSON["dbtablepk"].ToString());
            serverScript.AppendFormat("<input type=\"hidden\" id=\"Form_DBTableTitle\" name=\"Form_DBTableTitle\" value=\"{0}\" />\r\n", attrJSON["dbtabletitle"].ToString());
            serverScript.AppendFormat("<input type=\"hidden\" id=\"Form_AutoSaveData\" name=\"Form_AutoSaveData\" value=\"{0}\" />\r\n", "1");
            serverScript.Append("<script type=\"text/javascript\">\r\n");
            serverScript.Append("\tvar initData = @Html.Raw(BWorkFlow.GetFormDataJsonString(initData));\r\n");
            serverScript.Append("\tvar fieldStatus = @Html.Raw(fieldStatus);\r\n");
            serverScript.Append("\tvar displayModel = '@DisplayModel';\r\n");
            serverScript.Append("\t$(function (){\r\n");
            serverScript.AppendFormat("\t\tformrun.initData(initData, \"{0}\", fieldStatus, displayModel);\r\n", attrJSON["dbtable"].ToString());
            serverScript.Append("\t});\r\n");
            serverScript.Append("</script>\r\n");


            string file = Server.MapPath("~/Views/WorkFlowFormDesigner/Forms/" + fileName);
            System.IO.Stream stream = System.IO.File.Open(file, FileMode.OpenOrCreate, FileAccess.Write, FileShare.None);
            stream.SetLength(0);
            StreamWriter sw = new StreamWriter(stream, System.Text.Encoding.UTF8);
            sw.Write(serverScript.ToString());
            sw.Write(Server.HtmlDecode(html));
            sw.Close();
            stream.Close();


            string attr = wff.Attribute;
            string appType = LitJson.JsonMapper.ToObject(attr)["apptype"].ToString();
            Business.Platform.AppLibrary App = new Business.Platform.AppLibrary();
            var app = App.GetByCode(id);
            bool isAdd = false;
            if (app == null)
            {
                app = new Data.Model.AppLibrary();
                app.ID = Guid.NewGuid();
                app.Code = id;
                isAdd = true;
            }
            app.Address = "/Views/WorkFlowFormDesigner/Forms/" + fileName;
            app.Note = "流程表单";
            app.OpenMode = 0;
            app.Params = "";
            app.Title = name.Trim();
            app.Type = appType.IsGuid() ? appType.ToGuid() : new Business.Platform.Dictionary().GetIDByCode("FormTypes");
            if (isAdd)
            {
                App.Add(app);
            }
            else
            {
                App.Update(app);
            }

            Business.Platform.Log.Add("发布了流程表单", app.Serialize() + "内容：" + html, Business.Platform.Log.Types.流程相关);
            wff.Status = 1;
            WFF.Update(wff);
            return "发布成功!";
        }
    }
}
