using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class HomeController : MyController
    {
        //
        // GET: /Home/
        public ActionResult Index()
        {
            Business.Platform.UsersRole buserRole = new Business.Platform.UsersRole();
            Business.Platform.Role brole = new Business.Platform.Role();
            var roles = buserRole.GetByUserID(Business.Platform.Users.CurrentUserID);
            ViewBag.RoleLength = roles.Count;
            ViewBag.DefaultRoleID = string.Empty;
            ViewBag.RolesOptions = string.Empty;
            if (roles.Count > 0)
            {
                var mainRole = roles.Find(p => p.IsDefault);
                ViewBag.defaultRoleID = mainRole != null ? mainRole.RoleID.ToString() : roles.First().RoleID.ToString();
                List<Data.Model.Role> roleList = new List<Data.Model.Role>();
                foreach (var role in roles)
                {
                    var role1 = brole.Get(role.RoleID);
                    if (role1 == null)
                    {
                        continue;
                    }
                    roleList.Add(role1);
                }

                ViewBag.RolesOptions = brole.GetRoleOptions("", "", roleList);
            }

            var user = Business.Platform.Users.CurrentUser;
            ViewBag.UserName = user == null ? "" : user.Name;
            ViewBag.DateTime = Utility.DateTimeNew.Now.ToDateWeekString();

            return View();
        }

        public ActionResult Home()
        {
            return View();
        }

        public string Menu()
        { 
            string roleID = Request.QueryString["roleid"];
            string userID = Request.QueryString["userid"];
            Guid gid,uid;
            if(!roleID.IsGuid(out gid) || !userID.IsGuid(out uid))
            {
                return "[]";
            }
            else
            {
                return new Business.Platform.RoleApp().GetRoleAppJsonString(gid, uid, Url.Content("~/").TrimEnd('/'));
            }
        }

        public string MenuRefresh()
        { 
            string roleID=Request.QueryString["roleid"];
            string userID = Request.QueryString["userid"];
            string refreshID = Request.QueryString["refreshid"];
            Guid gid,refreshid,uid;
            if(!roleID.IsGuid(out gid) || !refreshID.IsGuid(out refreshid) || !userID.IsGuid(out uid))
            {
                return "[]";
            }
            else
            {
                return new Business.Platform.RoleApp().GetRoleAppRefreshJsonString(gid, uid, refreshid, Url.Content("~/").TrimEnd('/'));
            }
        }

    }
}
