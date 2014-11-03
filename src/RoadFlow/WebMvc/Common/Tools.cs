using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMvc.Common
{
    public class Tools
    {
        /// <summary>
        /// 包含文件
        /// </summary>
        public static string IncludeFiles
        {
            get 
            {
                return
                    string.Format(@"<link href=""{0}Content/Theme/Common.css"" rel=""stylesheet"" type=""text/css"" media=""screen""/>
    <link href=""{0}Content/Theme/{1}/Style/style.css"" id=""style_style"" rel=""stylesheet"" type=""text/css"" media=""screen""/>
    <link href=""{0}Content/Theme/{1}/Style/ui.css"" id=""style_ui"" rel=""stylesheet"" type=""text/css"" media=""screen""/> 
    <script type=""text/javascript"" src=""{0}Scripts/My97DatePicker/WdatePicker.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/jquery-1.10.2.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/jquery.cookie.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/json.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.core.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.button.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.calendar.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.file.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.member.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.dict.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.menu.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.select.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.tab.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.text.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.textarea.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.editor.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.tree.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.validate.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.window.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.dragsort.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.selectico.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.accordion.js""></script>
    <script type=""text/javascript"" src=""{0}Scripts/roadui.init.js""></script>"
    , BaseUrl, Utility.Config.Theme);
            }
        }

        public static string BaseUrl
        {
            get
            { 
                var obj = System.Web.HttpContext.Current.Session[Utility.Keys.SessionKeys.BaseUrl.ToString()];
                return obj == null ? "" : obj.ToString();
            }
        }

        public static bool CheckLogin(out string msg)
        {
            msg = "";
            object session = System.Web.HttpContext.Current.Session[Utility.Keys.SessionKeys.UserID.ToString()];
            Guid uid;
            if (session == null || !session.ToString().IsGuid(out uid) || uid == Guid.Empty)
            {
                return false;
            }

            return true;//正式使用时请注释掉这一行

            string uniqueIDSessionKey = Utility.Keys.SessionKeys.UserUniqueID.ToString();
            var user = new Business.Platform.OnlineUsers().Get(uid);
            if (user == null)
            {
                return false;
            }
            else if (System.Web.HttpContext.Current.Session[uniqueIDSessionKey] == null)
            {
                return false;
            }
            else if (string.Compare(System.Web.HttpContext.Current.Session[uniqueIDSessionKey].ToString(), user.UniqueID.ToString(), true) != 0)
            {
                msg = string.Format("<script type='text/javascript'>alert('您的帐号在{0}登录,您被迫下线!');top.location=top.rootdir+'/Login';</script>", user.IP);
                return false;
            }
            return true;
        }

        public static void CheckLogin(bool redirect = true)
        {
            string msg;
            if (!CheckLogin(out msg))
            {
                if (!redirect)
                {
                    System.Web.HttpContext.Current.Response.Write("登录验证失败!");
                    System.Web.HttpContext.Current.Response.End();
                }
                else
                {
                    System.Web.HttpContext.Current.Response.Write("<script>top.location=top.rootdir+'/Login';</script>");
                    System.Web.HttpContext.Current.Response.End();
                }
            }
        }

        /// <summary>
        /// 检查应用程序权限
        /// </summary>
        /// <param name="appid"></param>
        /// <returns></returns>
        public static bool CheckApp(out string msg, string appid = "")
        {
            msg = "";
            appid = appid.IsNullOrEmpty() ? System.Web.HttpContext.Current.Request.QueryString["appid"] : appid;
            Guid appGuid;
            if (!appid.IsGuid(out appGuid))
            {
                return false;
            }
            var app = new Business.Platform.RoleApp().GetFromCache(appid);
            if (app != null)
            {
                var roles = Business.Platform.Users.CurrentUserRoles;
                if (roles.Contains(app["RoleID"].ToString().ToGuid()))
                {
                    return true;
                }
            }
            else
            {
                var userID = Business.Platform.Users.CurrentUserID;
                if (userID.IsEmptyGuid())
                {
                    msg = "登录失效!";
                    return false;
                }
                var userApp = new Business.Platform.UsersApp().GetUserDataRows(userID);
                foreach (System.Data.DataRow dr in userApp)
                {
                    if (dr["ID"].ToString().ToGuid() == appGuid)
                    {
                        return true;
                    }
                }
            }

            return false;
        }
    }

}