using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class OnlineUsersController : MyController
    {
        //
        // GET: /OnlineUsers/

        public ActionResult Index()
        {
            return query(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(FormCollection collection)
        {
            Business.Platform.OnlineUsers bou = new Business.Platform.OnlineUsers();
            if (!Request.Form["ClearAll"].IsNullOrEmpty())
            {
                bou.RemoveAll();
            }

            if (!Request.Form["ClearSelect"].IsNullOrEmpty())
            {
                string userids = Request.Form["checkbox_app"];
                foreach (string userid in userids.Split(','))
                {
                    Guid uid;
                    if (userid.IsGuid(out uid))
                    {
                        bou.Remove(uid);
                    }
                }
            }

            return query(collection);
        }


        private ActionResult query(FormCollection collection)
        {
            Business.Platform.OnlineUsers bou = new Business.Platform.OnlineUsers();
            string name = string.Empty;
            if (collection != null)
            {
                name = Request.Form["Name"];
            }
            else
            {
                name = Request.QueryString["Name"];
            }
            ViewBag.Name = name;
            var userList = bou.GetAll();
            if (!name.IsNullOrEmpty())
            {
                userList = userList.Where(p => p.UserName.IndexOf(name) >= 0).ToList();
            }

            return View(userList);

        }

    }
}
