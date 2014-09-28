using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Areas.Controls.Controllers
{
    public class SelectMemberController : MyController
    {
        //
        // GET: /Controls/SelectMember/

        public ActionResult Index()
        {
            return View();
        }

        public string GetNames()
        {
            string values = Request.QueryString["values"];
            return new Business.Platform.Organize().GetNames(values);
        }

        public string GetNote()
        {
            string id = Request.QueryString["id"];
            Guid gid;
            if (id.IsNullOrEmpty())
            {
                return "";
            }
            Business.Platform.Organize borg = new Business.Platform.Organize();
            Business.Platform.Users buser = new Business.Platform.Users();
            if (id.StartsWith(Business.Platform.Users.PREFIX))
            {
                Guid uid = buser.RemovePrefix1(id).ToGuid();
                return string.Concat(borg.GetAllParentNames(buser.GetMainStation(uid)), " / ", buser.GetName(uid));
            }
            else if (id.StartsWith(Business.Platform.WorkGroup.PREFIX))
            {
                return new Business.Platform.WorkGroup().GetUsersNames(Business.Platform.WorkGroup.RemovePrefix(id).ToGuid(), '、');
            }
            else if (id.IsGuid(out gid))
            {
                return borg.GetAllParentNames(gid);
            }
            return "";
        }

    }
}
