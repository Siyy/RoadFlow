using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class MembersController : MyController
    {
        //
        // GET: /Members/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Tree()
        {
            return View();
        }

        public string Tree1()
        {
            string rootid = Request.QueryString["rootid"];
            string showtype = Request.QueryString["showtype"];
            Business.Platform.Organize BOrganize = new Business.Platform.Organize();
            System.Text.StringBuilder json = new System.Text.StringBuilder("[", 1000);

            if ("1" == showtype)//显示工作组
            {
                Business.Platform.WorkGroup BWorkGroup = new Business.Platform.WorkGroup();
                var workGroups = BWorkGroup.GetAll();

                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", Guid.Empty);
                json.AppendFormat("\"parentID\":\"{0}\",", Guid.Empty);
                json.AppendFormat("\"title\":\"{0}\",", "工作组");
                json.AppendFormat("\"ico\":\"{0}\",", Url.Content("~/images/ico/group.gif"));
                json.AppendFormat("\"link\":\"{0}\",", "");
                json.AppendFormat("\"type\":\"{0}\",", 5);
                json.AppendFormat("\"hasChilds\":\"{0}\",", workGroups.Count);
                json.Append("\"childs\":[");

                int countwg = workGroups.Count;
                int iwg = 0;
                foreach (var wg in workGroups)
                {
                    json.Append("{");
                    json.AppendFormat("\"id\":\"{0}\",", wg.ID);
                    json.AppendFormat("\"parentID\":\"{0}\",", Guid.Empty);
                    json.AppendFormat("\"title\":\"{0}\",", wg.Name);
                    json.AppendFormat("\"ico\":\"{0}\",", "");
                    json.AppendFormat("\"link\":\"{0}\",", "");
                    json.AppendFormat("\"type\":\"{0}\",", 5);
                    json.AppendFormat("\"hasChilds\":\"{0}\",", 0);
                    json.Append("\"childs\":[");
                    json.Append("]");
                    json.Append("}");
                    if (iwg++ < countwg - 1)
                    {
                        json.Append(",");
                    }
                }

                json.Append("]");
                json.Append("}");
                json.Append("]");
                Response.Write(json.ToString());
                Response.End();
            }


            Guid rootID;
            Data.Model.Organize root;
            if (rootid.IsGuid(out rootID))
            {
                root = BOrganize.Get(rootID);
            }
            else
            {
                root = BOrganize.GetRoot();
            }

            List<Data.Model.Users> users = new List<Data.Model.Users>();

            Business.Platform.Users busers = new Business.Platform.Users();
            users = busers.GetAllByOrganizeID(root.ID);

            json.Append("{");
            json.AppendFormat("\"id\":\"{0}\",", root.ID);
            json.AppendFormat("\"parentID\":\"{0}\",", root.ParentID);
            json.AppendFormat("\"title\":\"{0}\",", root.Name);
            json.AppendFormat("\"ico\":\"{0}\",", Url.Content("~/images/ico/icon_site.gif"));
            json.AppendFormat("\"link\":\"{0}\",", "");
            json.AppendFormat("\"type\":\"{0}\",", root.Type);
            json.AppendFormat("\"hasChilds\":\"{0}\",", root.ChildsLength == 0 && users.Count == 0 ? "0" : "1");
            json.Append("\"childs\":[");

            var orgs = BOrganize.GetChilds(root.ID);
            int count = orgs.Count;

            int i = 0;
            foreach (var org in orgs)
            {
                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", org.ID);
                json.AppendFormat("\"parentID\":\"{0}\",", org.ParentID);
                json.AppendFormat("\"title\":\"{0}\",", org.Name);
                json.AppendFormat("\"ico\":\"{0}\",", "");
                json.AppendFormat("\"link\":\"{0}\",", "");
                json.AppendFormat("\"type\":\"{0}\",", org.Type);
                json.AppendFormat("\"hasChilds\":\"{0}\",", org.ChildsLength);
                json.Append("\"childs\":[");
                json.Append("]");
                json.Append("}");
                if (i++ < count - 1 || users.Count > 0)
                {
                    json.Append(",");
                }
            }

            if (users.Count > 0)
            {
                var userRelations = new Business.Platform.UsersRelation().GetAllByOrganizeID(root.ID);
                int count1 = users.Count;
                int j = 0;
                foreach (var user in users)
                {
                    var ur = userRelations.Find(p => p.UserID == user.ID);
                    json.Append("{");
                    json.AppendFormat("\"id\":\"{0}\",", user.ID);
                    json.AppendFormat("\"parentID\":\"{0}\",", root.ID);
                    json.AppendFormat("\"title\":\"{0}{1}\",", user.Name, ur != null && ur.IsMain == 0 ? "<span style='color:#999;'>[兼职]</span>" : "");
                    json.AppendFormat("\"ico\":\"{0}\",", "");
                    json.AppendFormat("\"link\":\"{0}\",", "");
                    json.AppendFormat("\"type\":\"{0}\",", "4");
                    json.AppendFormat("\"hasChilds\":\"{0}\",", "0");
                    json.Append("\"childs\":[");
                    json.Append("]");
                    json.Append("}");
                    if (j++ < count1 - 1)
                    {
                        json.Append(",");
                    }
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
            string showtype = Request.QueryString["showtype"];

            System.Text.StringBuilder json = new System.Text.StringBuilder("[", 1000);

            if ("1" == showtype)//显示工作组
            {
                Business.Platform.WorkGroup BWorkGroup = new Business.Platform.WorkGroup();
                var workGroups = BWorkGroup.GetAll();

                int countwg = workGroups.Count;
                int iwg = 0;
                foreach (var wg in workGroups)
                {
                    json.Append("{");
                    json.AppendFormat("\"id\":\"{0}\",", wg.ID);
                    json.AppendFormat("\"parentID\":\"{0}\",", Guid.Empty);
                    json.AppendFormat("\"title\":\"{0}\",", wg.Name);
                    json.AppendFormat("\"ico\":\"{0}\",", "");
                    json.AppendFormat("\"link\":\"{0}\",", "");
                    json.AppendFormat("\"type\":\"{0}\",", 5);
                    json.AppendFormat("\"hasChilds\":\"{0}\",", 0);
                    json.Append("\"childs\":[");
                    json.Append("]");
                    json.Append("}");
                    if (iwg++ < countwg - 1)
                    {
                        json.Append(",");
                    }
                }

                json.Append("]");
                json.Append("}");
                Response.Write(json.ToString());
                Response.End();
            }


            Guid orgID;
            if (!id.IsGuid(out orgID))
            {
                json.Append("]");
                Response.Write(json.ToString());
            }

            Business.Platform.Organize BOrganize = new Business.Platform.Organize();
            var childOrgs = BOrganize.GetChilds(orgID);

            int count = childOrgs.Count;
            int i = 0;
            foreach (var org in childOrgs)
            {
                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", org.ID);
                json.AppendFormat("\"parentID\":\"{0}\",", id);
                json.AppendFormat("\"title\":\"{0}\",", org.Name);
                json.AppendFormat("\"ico\":\"{0}\",", "");
                json.AppendFormat("\"link\":\"{0}\",", "");
                json.AppendFormat("\"type\":\"{0}\",", org.Type);
                json.AppendFormat("\"hasChilds\":\"{0}\",", org.ChildsLength);
                json.Append("\"childs\":[");
                json.Append("]");
                json.Append("}");
                if (i++ < count - 1)
                {
                    json.Append(",");
                }
            }

            var userRelations = new Business.Platform.UsersRelation().GetAllByOrganizeID(orgID);
            var users = new Business.Platform.Users().GetAllByOrganizeID(orgID);
            int count1 = users.Count;
            if (count1 > 0 && count > 0)
            {
                json.Append(",");
            }
            int j = 0;
            foreach (var user in users)
            {
                var ur = userRelations.Find(p => p.UserID == user.ID);
                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", user.ID);
                json.AppendFormat("\"parentID\":\"{0}\",", id);
                json.AppendFormat("\"title\":\"{0}{1}\",", user.Name, ur != null && ur.IsMain == 0 ? "<span style='color:#999;'>[兼职]</span>" : "");
                json.AppendFormat("\"ico\":\"{0}\",", Url.Content("~/images/ico/contact_grey.png"));
                json.AppendFormat("\"link\":\"{0}\",", "");
                json.AppendFormat("\"type\":\"{0}\",", "4");
                json.AppendFormat("\"hasChilds\":\"{0}\",", "0");
                json.Append("\"childs\":[");
                json.Append("]");
                json.Append("}");
                if (j++ < count1 - 1)
                {
                    json.Append(",");
                }
            }
            json.Append("]");
            return json.ToString();
        }

        public ActionResult Empty()
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
            Data.Model.Organize org = null;
            Business.Platform.Organize borganize = new Business.Platform.Organize();
            string id = Request.QueryString["id"];
            if (id.IsGuid())
            {
                org = borganize.Get(id.ToGuid());
            }

            //保存
            if (!Request.Form["Save"].IsNullOrEmpty() && org != null)
            {
                string name = Request.Form["Name"];
                string type = Request.Form["Type"];
                string status = Request.Form["Status"];
                string chargeLeader = Request.Form["ChargeLeader"];
                string leader = Request.Form["Leader"];
                string note = Request.Form["note"];
                string oldXML = org.Serialize();
                org.Name = name.Trim();
                org.Type = type.ToInt(1);
                org.Status = status.ToInt(0);
                org.ChargeLeader = chargeLeader;
                org.Leader = leader;
                org.Note = note.IsNullOrEmpty() ? null : note.Trim();

                borganize.Update(org);
                Business.Platform.Log.Add("修改了组织机构", "", Business.Platform.Log.Types.组织机构, oldXML, org.Serialize());
                string rid = org.ParentID == Guid.Empty ? org.ID.ToString() : org.ParentID.ToString();
                ViewBag.Script = "alert('保存成功!');parent.frames[0].reLoad('" + rid + "');";
            }

            //移动
            if (!Request.Form["Move1"].IsNullOrEmpty() && org != null)
            {
                string toOrgID = Request.Form["deptmove"];
                Guid toID;
                if (toOrgID.IsGuid(out toID) && borganize.Move(org.ID, toID))
                {
                    Business.Platform.Log.Add("移动了组织机构", "将机构：" + org.ID + "移动到了：" + toID, Business.Platform.Log.Types.组织机构);
                    string refreshID = org.ParentID == Guid.Empty ? org.ID.ToString() : org.ParentID.ToString();
                    ViewBag.Script = "alert('移动成功!');parent.frames[0].reLoad('" + refreshID + "');parent.frames[0].reLoad('" + toOrgID + "')";
                }
                else
                {
                    ViewBag.Script = "alert('移动失败!');";
                }
            }

            //删除
            if (!Request.Form["Delete"].IsNullOrEmpty())
            {
                int i = borganize.DeleteAndAllChilds(org.ID);
                Business.Platform.Log.Add("删除了组织机构及其所有下级共" + i.ToString() + "项", org.Serialize(), Business.Platform.Log.Types.组织机构);
                string refreshID = org.ParentID == Guid.Empty ? org.ID.ToString() : org.ParentID.ToString();
                ViewBag.Script = "alert('共删除了" + i.ToString() + "项!');parent.frames[0].reLoad('" + refreshID + "');";
            }

            if (org == null)
            {
                org = new Data.Model.Organize();
            }
            ViewBag.TypeRadios = borganize.GetTypeRadio("Type", org.Type.ToString(), "validate=\"radio\"");
            ViewBag.StatusRadios = borganize.GetStatusRadio("Status", org.Status.ToString(), "validate=\"radio\"");

            return View(org);
        }

        public ActionResult BodyAdd()
        {
            return BodyAdd(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult BodyAdd(FormCollection collection)
        {
            Business.Platform.Organize borganize = new Business.Platform.Organize();
            Data.Model.Organize org = null;
            string id = Request.QueryString["id"];
            string name = string.Empty;
            string type = string.Empty;
            string status = string.Empty;
            string note = string.Empty;

            Guid orgID;
            if (id.IsGuid(out orgID))
            {
                org = borganize.Get(orgID);
            }

            if (collection != null && org != null)
            {
                name = Request.Form["Name"];
                type = Request.Form["Type"];
                status = Request.Form["Status"];
                note = Request.Form["note"];

                Data.Model.Organize org1 = new Data.Model.Organize();
                Guid org1ID = Guid.NewGuid();
                org1.ID = org1ID;
                org1.Name = name.Trim();
                org1.Note = note.IsNullOrEmpty() ? null : note.Trim();
                org1.Number = org.Number + "," + org1ID.ToString().ToLower();
                org1.ParentID = org.ID;
                org1.Sort = borganize.GetMaxSort(org.ID);
                org1.Status = status.IsInt() ? status.ToInt() : 0;
                org1.Type = type.ToInt();
                org1.Depth = org.Depth + 1;

                using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
                {
                    borganize.Add(org1);
                    //更新父级[ChildsLength]字段
                    borganize.UpdateChildsLength(org.ID);
                    scope.Complete();
                }

                Business.Platform.Log.Add("添加了组织机构", org1.Serialize(), Business.Platform.Log.Types.组织机构);
                ViewBag.Script = "alert('添加成功!');parent.frames[0].reLoad('" + id + "');window.location=window.location;";
            }
            ViewBag.TypeRadios = borganize.GetTypeRadio("Type", type, "validate=\"radio\"");
            ViewBag.StatusRadios = borganize.GetStatusRadio("Status", "0", "validate=\"radio\"");
            return View();
        }

        public ActionResult UserAdd()
        {
            return UserAdd(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UserAdd(FormCollection collection)
        {
            Business.Platform.Organize borganize = new Business.Platform.Organize();
            Business.Platform.Users busers = new Business.Platform.Users();

            string id = Request.QueryString["id"];

            string name = string.Empty;
            string account = string.Empty;
            string status = string.Empty;
            string note = string.Empty;
            Guid parentID;

            if (collection != null && id.IsGuid(out parentID))
            {
                name = Request.Form["Name"];
                account = Request.Form["Account"];
                status = Request.Form["Status"];
                note = Request.Form["Note"];

                Guid userID = Guid.NewGuid();
                string userXML = string.Empty;
                using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
                {
                    //添加人员
                    Data.Model.Users user = new Data.Model.Users();
                    user.Account = account.Trim();
                    user.Name = name.Trim();
                    user.Note = note.IsNullOrEmpty() ? null : note;
                    user.Password = busers.GetUserEncryptionPassword(userID.ToString(), busers.GetInitPassword());
                    user.Sort = 1;
                    user.Status = status.IsInt() ? status.ToInt() : 0;
                    user.ID = userID;
                    busers.Add(user);

                    //添加关系
                    Data.Model.UsersRelation userRelation = new Data.Model.UsersRelation();
                    userRelation.IsMain = 1;
                    userRelation.OrganizeID = parentID;
                    userRelation.Sort = new Business.Platform.UsersRelation().GetMaxSort(parentID);
                    userRelation.UserID = userID;
                    new Business.Platform.UsersRelation().Add(userRelation);

                    //更新父级[ChildsLength]字段
                    borganize.UpdateChildsLength(parentID);

                    //更新角色
                    new Business.Platform.UsersRole().UpdateByUserID(userID);

                    userXML = user.Serialize();
                    scope.Complete();
                }

                Business.Platform.Log.Add("添加了人员", userXML, Business.Platform.Log.Types.组织机构);
                ViewBag.Script = "alert('添加成功!');parent.frames[0].reLoad('" + id + "');window.location=window.location;";
            }
            ViewBag.StatusRadios = borganize.GetStatusRadio("Status", "0", "validate=\"radio\"");
            return View();
        }

        public ActionResult User()
        {
            return User(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult User(FormCollection collection)
        {
            Business.Platform.Organize borganize = new Business.Platform.Organize();
            Business.Platform.Users busers = new Business.Platform.Users();
            Business.Platform.UsersRelation buserRelation = new Business.Platform.UsersRelation();
            Data.Model.Users user = null;
            Data.Model.Organize organize = null;
            string id = Request.QueryString["id"];
            string parentID = Request.QueryString["parentid"];

            string name = string.Empty;
            string account = string.Empty;
            string status = string.Empty;
            string note = string.Empty;

            string parentString = string.Empty;

            Guid userID, organizeID;
            if (id.IsGuid(out userID))
            {
                user = busers.Get(userID);
                if (user != null)
                {
                    name = user.Name;
                    account = user.Account;
                    status = user.Status.ToString();
                    note = user.Note;

                    //所在组织字符串
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    var userRelations = buserRelation.GetAllByUserID(user.ID).OrderByDescending(p => p.IsMain);
                    foreach (var userRelation in userRelations)
                    {
                        sb.Append("<div style='margin:3px 0;'>");
                        sb.Append(borganize.GetAllParentNames(userRelation.OrganizeID, true));
                        if (userRelation.IsMain == 0)
                        {
                            sb.Append("<span style='color:#999'> [兼职]</span>");
                        }
                        sb.Append("</div>");

                    }
                    ViewBag.ParentString = sb.ToString();
                }
            }
            if (parentID.IsGuid(out organizeID))
            {
                organize = borganize.Get(organizeID);
            }

            if (collection != null)
            {
                //保存
                if (!Request.Form["Save"].IsNullOrEmpty() && user != null)
                {
                    name = Request.Form["Name"];
                    account = Request.Form["Account"];
                    status = Request.Form["Status"];
                    note = Request.Form["Status"];

                    string oldXML = user.Serialize();

                    user.Name = name.Trim();
                    user.Account = account.Trim();
                    user.Status = status.ToInt(1);
                    user.Note = note.IsNullOrEmpty() ? null : note.Trim();

                    busers.Update(user);
                    Business.Platform.Log.Add("修改了用户", "", Business.Platform.Log.Types.组织机构, oldXML, user.Serialize());
                    ViewBag.Script = "alert('保存成功!');parent.frames[0].reLoad('" + parentID + "');";
                }

                //删除用户
                if (!Request.Form["DeleteBut"].IsNullOrEmpty() && user != null && organize != null)
                {
                    using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
                    {

                        var urs = buserRelation.GetAllByUserID(user.ID);
                        busers.Delete(user.ID);

                        buserRelation.DeleteByUserID(user.ID);

                        new Business.Platform.UsersInfo().Delete(user.ID);
                        new Business.Platform.UsersRole().DeleteByUserID(user.ID);

                        //更新父级[ChildsLength]字段
                        foreach (var ur in urs)
                        {
                            borganize.UpdateChildsLength(ur.OrganizeID);
                        }
                        scope.Complete();
                    }

                    string refreshID = parentID;
                    string url = string.Empty;
                    var users = borganize.GetAllUsers(refreshID.ToGuid());
                    if (users.Count > 0)
                    {
                        url = "User?id=" + users.Last().ID + "&appid=" + Request.QueryString["appid"] + "&tabid=" + Request.QueryString["tabid"] + "&parentid=" + parentID;
                    }
                    else
                    {
                        refreshID = organize.ParentID == Guid.Empty ? organize.ID.ToString() : organize.ParentID.ToString();
                        url = "Body?id=" + parentID + "&appid=" + Request.QueryString["appid"] + "&tabid=" + Request.QueryString["tabid"] + "&parentid=" + organize.ParentID;
                    }
                    Business.Platform.Log.Add("删除了用户", user.Serialize(), Business.Platform.Log.Types.组织机构);
                    ViewBag.Script = "alert('删除成功');parent.frames[0].reLoad('" + refreshID + "');window.location='" + url + "'";
                }

                //初始化密码
                if (!Request.Form["InitPass"].IsNullOrEmpty() && user != null)
                {
                    string initpass = busers.GetInitPassword();
                    busers.InitPassword(user.ID);
                    Business.Platform.Log.Add("初始化了用户密码", user.Serialize(), Business.Platform.Log.Types.组织机构);
                    ViewBag.Script = "alert('密码已初始化为：" + initpass + "');";
                }

                //调动
                if (!Request.Form["Move1"].IsNullOrEmpty() && user != null)
                {
                    string moveto = Request.Form["movetostation"];
                    string movetostationjz = Request.Form["movetostationjz"];
                    Guid moveToID;
                    if (moveto.IsGuid(out moveToID))
                    {
                        using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
                        {
                            var us = buserRelation.GetAllByUserID(user.ID);
                            if ("1" != movetostationjz)
                            {
                                buserRelation.DeleteByUserID(user.ID);
                            }

                            Data.Model.UsersRelation ur = new Data.Model.UsersRelation();
                            ur.UserID = user.ID;
                            ur.OrganizeID = moveToID;
                            ur.IsMain = "1" == movetostationjz ? 0 : 1;
                            ur.Sort = buserRelation.GetMaxSort(moveToID);
                            buserRelation.Add(ur);

                            foreach (var u in us)
                            {
                                borganize.UpdateChildsLength(u.OrganizeID);
                            }

                            borganize.UpdateChildsLength(organizeID);
                            borganize.UpdateChildsLength(moveToID);

                            scope.Complete();
                            ViewBag.Script = "alert('调动成功!');parent.frames[0].reLoad('" + parentID + "');parent.frames[0].reLoad('" + moveto + "')";
                        }

                        Business.Platform.Log.Add(("1" == movetostationjz ? "兼职" : "全职") + "调动了人员的岗位", "将人员调往岗位(" + moveto + ")", Business.Platform.Log.Types.组织机构);
                    }
                }
            }
            ViewBag.StatusRadios = borganize.GetStatusRadio("Status", status, "validate=\"radio\"");
            return View(user);
        }

        public ActionResult Sort()
        {
            return Sort(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Sort(FormCollection collection)
        {
            string parentid = Request.QueryString["parentid"];
            if (collection != null)
            {
                string sort = Request.Form["sort"] ?? "";
                string[] sortArray = sort.Split(',');
                Business.Platform.Organize borganize = new Business.Platform.Organize();
                for (int i = 0; i < sortArray.Length; i++)
                {
                    Guid gid;
                    if (!sortArray[i].IsGuid(out gid))
                    {
                        continue;
                    }
                    borganize.UpdateSort(gid, i + 1);
                }
                ViewBag.Script = "parent.frames[0].reLoad('" + parentid + "');";
            }
            var orgs = new Business.Platform.Organize().GetChilds(parentid.ToGuid());
            return View(orgs);
        }

        public ActionResult SortUsers()
        {
            return SortUsers(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SortUsers(FormCollection collection)
        {
            string parentID = Request.QueryString["parentid"];
            if (collection != null)
            {
                string sort = Request.Form["sort"] ?? "";
                string[] sortArray = sort.Split(',');
                Business.Platform.Users busers = new Business.Platform.Users();
                for (int i = 0; i < sortArray.Length; i++)
                {
                    Guid gid;
                    if (!sortArray[i].IsGuid(out gid))
                    {
                        continue;
                    }
                    busers.UpdateSort(gid, i + 1);
                }
                ViewBag.Script = "parent.frames[0].reLoad('" + parentID + "');";
            }
            var users = new Business.Platform.Organize().GetAllUsers(parentID.ToGuid());
            return View(users);
        }

        public string GetPy()
        {
            string name = Request.Form["name"];
            string account = name.ToChineseSpell();
            return account.IsNullOrEmpty() ? "" : new Business.Platform.Users().GetAccount(account.Trim());
        }

        public string CheckAccount()
        {
            string account = Request.Form["value"];
            string id = Request["id"];
            return new Business.Platform.Users().HasAccount(account, id) ? "帐号已经被使用了" : "1";
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

        public ActionResult EditPass()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditPass(FormCollection collection)
        {
            string oldpass = Request.Form["oldpass"];
            string newpass = Request.Form["newpass"];

            Business.Platform.Users busers = new Business.Platform.Users();
            var user = Business.Platform.Users.CurrentUser;
            if (user != null)
            {
                if (string.Compare(user.Password, busers.GetUserEncryptionPassword(user.ID.ToString(), oldpass.Trim()), false) != 0)
                {
                    Business.Platform.Log.Add("修改密码失败", string.Concat("用户：", user.Name, "(", user.ID, ")修改密码失败,旧密码错误!"), Business.Platform.Log.Types.用户登录);
                    ViewBag.Script = "alert('旧密码错误!');";
                }
                else
                {
                    busers.UpdatePassword(newpass.Trim(), user.ID);
                    Business.Platform.Log.Add("修改密码成功", string.Concat("用户：", user.Name, "(", user.ID, ")修改密码成功!"), Business.Platform.Log.Types.用户登录);
                    ViewBag.Script = "alert('密码修改成功!');new RoadUI.Window().close();";
                }
            }
            return View();
        }

        public ActionResult WorkGroup()
        {
            return WorkGroup(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult WorkGroup(FormCollection collection)
        {
            string id = Request.QueryString["id"];
            Guid wid;
            Business.Platform.WorkGroup bwg = new Business.Platform.WorkGroup();
            Data.Model.WorkGroup wg = null;
            string name = string.Empty;
            string members = string.Empty;
            string note = string.Empty;
            string users = string.Empty;

            if (!id.IsGuid(out wid) || wid == Guid.Empty)
            {
                Response.End();
            }

            wg = bwg.Get(wid);
            if (wg != null)
            {
                name = wg.Name;
                members = wg.Members;
                note = wg.Note;
                users = bwg.GetUsersNames(wg.Members, '、');
            }

            if (!Request.Form["Save"].IsNullOrEmpty() && collection != null && wg != null)
            {
                string oldxml = wg.Serialize();
                name = Request.Form["Name"];
                members = Request.Form["Members"];
                note = Request.Form["Note"];
                wg.Name = name.Trim();
                wg.Members = members;
                if (!note.IsNullOrEmpty())
                {
                    wg.Note = note;
                }

                bwg.Update(wg);
                users = bwg.GetUsersNames(wg.Members, '、');
                string query = Request.Url.Query;
                Business.Platform.Log.Add("修改了工作组", "修改了工作组", Business.Platform.Log.Types.组织机构, oldxml, wg.Serialize());

                ViewBag.Script = "alert('保存成功!');";
            }

            //删除
            if (!Request.Form["DeleteBut"].IsNullOrEmpty() && collection != null && wg != null)
            {
                string oldxml = wg.Serialize();
                bwg.Delete(wg.ID);
                string query = Request.Url.Query;
                Business.Platform.Log.Add("删除了工作组", oldxml, Business.Platform.Log.Types.组织机构);
                ViewBag.Script = "parent.frames[0].treecng('1');alert('删除成功!');window.location = 'Empty' + '" + query + "';";
            }
            return View(wg);
        }

        public ActionResult WorkGroupAdd()
        {
            return WorkGroupAdd(null);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult WorkGroupAdd(FormCollection collection)
        {
            Business.Platform.WorkGroup bwg = new Business.Platform.WorkGroup();
            string name = string.Empty;
            string members = string.Empty;
            string note = string.Empty;
            if (collection != null)
            {
                name = Request.Form["Name"];
                members = Request.Form["Members"];
                note = Request.Form["Note"];

                Data.Model.WorkGroup wg = new Data.Model.WorkGroup();
                wg.ID = Guid.NewGuid();
                wg.Name = name.Trim();
                wg.Members = members;
                if (!note.IsNullOrEmpty())
                {
                    wg.Note = note;
                }
                bwg.Add(wg);
                string query = Request.Url.Query;
                Business.Platform.Log.Add("添加了工作组", wg.Serialize(), Business.Platform.Log.Types.组织机构);
                ViewBag.Script = "parent.frames[0].treecng('1');alert('添加成功!');window.location = 'WorkGroup' + '" + query + "';";

            }
            return View();
        }
    }
}
