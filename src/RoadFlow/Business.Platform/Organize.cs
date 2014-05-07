using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Business.Platform
{
    public class Organize
    {
        
        private Data.Interface.IOrganize dataOrganize;
        public Organize()
        {
            this.dataOrganize = Data.Factory.Platform.GetOrganizeInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.Organize model)
        {
            return dataOrganize.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.Organize model)
        {
            return dataOrganize.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.Organize> GetAll()
        {
            return dataOrganize.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.Organize Get(Guid id)
        {
            return dataOrganize.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataOrganize.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataOrganize.GetCount();
        }

        /// <summary>
        /// 根据根记录
        /// </summary>
        public Data.Model.Organize GetRoot()
        {
            return dataOrganize.GetRoot();
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public List<Data.Model.Organize> GetChilds(Guid ID)
        {
            return dataOrganize.GetChilds(ID);
        }

        /// <summary>
        /// 机构类型
        /// </summary>
        private Dictionary<int,string> types
        {
            get
            {
                var dict = new Dictionary<int, string>();
                dict.Add(1, "单位");
                dict.Add(2, "部门");
                dict.Add(3, "岗位");
                return dict;
            }
        }

        /// <summary>
        /// 状态
        /// </summary>
        private Dictionary<int, string> status
        {
            get
            {
                var dict = new Dictionary<int, string>();
                dict.Add(0, "正常");
                dict.Add(1, "冻结");
                return dict;
            }
        }

        /// <summary>
        /// 得到类型选择
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public string GetTypeRadio(string name, string value = "", string attributes="")
        {
            StringBuilder radios = new StringBuilder();
            foreach (var type in types)
            {
                radios.AppendFormat("<input type=\"radio\" style=\"vertical-align:middle;\" value=\"{0}\" id=\"orgtypes_{0}\" {1} name=\"{2}\" {3} /><label style=\"vertical-align:middle;\" for=\"orgtypes_{0}\">{4}</label>",
                    type.Key,
                    type.Key.ToString() == value ? "checked=\"checked\"" : "",
                    name,
                    attributes,
                    type.Value);
            }
            return radios.ToString();
        }

        /// <summary>
        /// 得到状态选择
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public string GetStatusRadio(string name, string value = "", string attributes = "")
        {
            StringBuilder radios = new StringBuilder();
            foreach (var statu in status)
            {
                radios.AppendFormat("<input type=\"radio\" style=\"vertical-align:middle;\" value=\"{0}\" id=\"orgstatus_{0}\" {1} name=\"{2}\" {3}/><label style=\"vertical-align:middle;\" for=\"orgstatus_{0}\">{4}</label>",
                    statu.Key,
                    statu.Key.ToString() == value ? "checked=\"checked\"" : "",
                    name,
                    attributes,
                    statu.Value);
            }
            return radios.ToString();
        }

        /// <summary>
        /// 得到一个父级下的最大排序值
        /// </summary>
        /// <returns></returns>
        public int GetMaxSort(Guid id)
        {
            return dataOrganize.GetMaxSort(id);
        }

        /// <summary>
        /// 得到一个机构下的所有人员
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Data.Model.Users> GetAllUsers(Guid id)
        {
            var childs = GetAllChilds(id);
            List<Guid> ids = new List<Guid>();
            ids.Add(id);
            foreach (var child in childs)
            {
                ids.Add(child.ID);
            }
            return new Users().GetAllByOrganizeIDArray(ids.ToArray());
        }

        /// <summary>
        /// 得到一组机构字符串下所有人员
        /// </summary>
        /// <param name="idString"></param>
        /// <returns></returns>
        public List<Data.Model.Users> GetAllUsers(string idString)
        {
            if (idString.IsNullOrEmpty())
            {
                return new List<Data.Model.Users>();
            }
            string[] idArray = idString.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            List<Data.Model.Users> userList = new List<Data.Model.Users>();
            Users busers = new Users();
            WorkGroup bwg = new WorkGroup();
            foreach (string id in idArray)
            {
                if (id.StartsWith(Users.PREFIX))//人员
                {
                    userList.Add(busers.Get(Users.RemovePrefix(id).ToGuid()));
                }
                else if (id.IsGuid())//机构
                {
                    userList.AddRange(GetAllUsers(id.ToGuid()));
                }
                else if (id.StartsWith(WorkGroup.PREFIX))//工作组
                {
                   addWorkGroupUsers(userList, bwg.Get(WorkGroup.RemovePrefix(id).ToGuid()));
                }
            }
            userList.RemoveAll(p => p == null);
            return userList;
        }

        private void addWorkGroupUsers(List<Data.Model.Users> userList, Data.Model.WorkGroup wg)
        {
            if (wg == null || wg.Members.IsNullOrEmpty())
            {
                return;
            }
            string[] idArray = wg.Members.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            Users busers = new Users();
            WorkGroup bwg = new WorkGroup();
            foreach (var id in idArray)
            { 
                if (id.StartsWith(Users.PREFIX))//人员
                {
                    userList.Add(busers.Get(Users.RemovePrefix(id).ToGuid()));
                }
                else if (id.IsGuid())//机构
                {
                    userList.AddRange(GetAllUsers(id.ToGuid()));
                }
                else if (id.StartsWith(WorkGroup.PREFIX))//工作组
                {
                    addWorkGroupUsers(userList, bwg.Get(WorkGroup.RemovePrefix(id).ToGuid()));
                }
            }
        }

        /// <summary>
        /// 更新下级数
        /// </summary>
        /// <returns></returns>
        public int UpdateChildsLength(Guid id)
        {
            int i = 0;
            var org = Get(id);
            if (org == null)
            {
                return i;
            }
            i = GetChilds(id).Count;
            i += GetAllUsers(id).Count;
            dataOrganize.UpdateChildsLength(id, i);
            return i;
        }

        /// <summary>
        /// 更新排序
        /// </summary>
        /// <returns></returns>
        public int UpdateSort(Guid id, int sort)
        {
            return dataOrganize.UpdateSort(id, sort);
        }

        /// <summary>
        /// 查询一个组织的所有上级
        /// </summary>
        public List<Data.Model.Organize> GetAllParent(string number)
        {
            return number.IsNullOrEmpty() ? new List<Data.Model.Organize>() : dataOrganize.GetAllParent(number);
        }

        /// <summary>
        /// 查询一个组织的所有上级
        /// </summary>
        public List<Data.Model.Organize> GetAllParent(Guid id)
        {
            var org = Get(id);
            if (org == null)
            {
                return new List<Data.Model.Organize>();
            }
            return dataOrganize.GetAllParent(org.Number);
        }

        /// <summary>
        /// 查询一个组织的所有下级
        /// </summary>
        /// <param name="number">编号</param>
        /// <returns></returns>
        public List<Data.Model.Organize> GetAllChilds(string number)
        {
            return number.IsNullOrEmpty() ? new List<Data.Model.Organize>() : dataOrganize.GetAllChild(number);
        }

        /// <summary>
        /// 查询一个组织的所有下级
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Data.Model.Organize> GetAllChilds(Guid id)
        {
            var org = Get(id);
            if (org == null)
            {
                return new List<Data.Model.Organize>();
            }
            return dataOrganize.GetAllChild(org.Number);
        }

        /// <summary>
        /// 查询一个机构的所有上级名称
        /// </summary>
        /// <param name="id"></param>
        /// <param name="split">分隔字符串</param>
        /// <param name="reverse">是否倒置</param>
        /// <returns></returns>
        public string GetAllParentNames(Guid id, bool reverse = false, string split = " / ")
        {
            var parents = GetAllParent(id);
            if (reverse)
            {
                parents.Reverse();
            }
            StringBuilder names = new StringBuilder(parents.Count * 100);
            int i=0;
            foreach (var parent in parents)
            {
                names.Append(parent.Name);
                if (i++ < parents.Count - 1)
                {
                    names.Append(split);
                }
            }
            return names.ToString();
        }


        /// <summary>
        /// 将一个机构移动到另一个机构下
        /// </summary>
        /// <param name="fromID">机构ID</param>
        /// <param name="toID">要移动到的机构ID</param>
        /// <returns></returns>
        public bool Move(Guid fromID, Guid toID)
        {
            var from = Get(fromID);
            var to = Get(toID);
            if (from == null || to == null)
            {
                return false;
            }
            if (to.Number.StartsWith(from.Number, StringComparison.CurrentCultureIgnoreCase))
            {
                return false;
            }
            using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
            {
                Guid oldParentID = from.ParentID;

                from.ParentID = toID;
                from.Depth = to.Depth + 1;
                from.Number = to.Number + "," + from.ID.ToString();
                Update(from);

                var childs = GetAllChilds(fromID).OrderBy(p => p.Depth);
                foreach (var child in childs)
                {
                    child.Number = Get(child.ParentID).Number + "," + child.ID.ToString();
                    child.Depth = child.Number.Split(',').Length - 1;
                    Update(child);
                }

                UpdateChildsLength(toID);
                UpdateChildsLength(oldParentID);
                scope.Complete();
                return true;
            }
        }

        /// <summary>
        /// 根据ID得到名称
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string GetName(Guid id)
        {
            var org = Get(id);
            return org == null ? "" : org.Name;
        }

        /// <summary>
        /// 根据ID得到名称(有前缀的情况)
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string GetName(string id)
        {
            string name = string.Empty;
            if (id.IsGuid())//机构
            {
                return GetName(id.ToGuid());
            }
            else if (id.StartsWith(Users.PREFIX))//用户
            { 
                string uid=Users.RemovePrefix(id);
                Guid userID;
                if(!uid.IsGuid(out userID))
                {
                    return "";
                }
                else
                {
                    return new Users().GetName(userID);
                }
            }
            else if (id.StartsWith(WorkGroup.PREFIX))//工作组
            {
                string uid = WorkGroup.RemovePrefix(id);
                Guid wid;
                if (!uid.IsGuid(out wid))
                {
                    return "";
                }
                else
                {
                    return new WorkGroup().GetName(wid);
                }
            }
            return "";
        }

        /// <summary>
        /// 得到一组机构的名称(逗号分隔，有前缀)
        /// </summary>
        /// <param name="idString"></param>
        /// <param name="split">分隔符</param>
        /// <returns></returns>
        public string GetNames(string idString, string split=",")
        {
            if (idString.IsNullOrEmpty())
            {
                return "";
            }
            string[] array = idString.Split(',');
            StringBuilder sb = new StringBuilder(array.Length * 50);
            int i = 0;
            foreach (var arr in array)
            {
                if (arr.IsNullOrEmpty())
                {
                    continue;
                }
                sb.Append(GetName(arr));
                if(i++<array.Length-1)
                {
                    sb.Append(split);
                }
            }
            return sb.ToString();
        }

        /// <summary>
        /// 删除一个机构及其所有下级(包括下级人员)
        /// </summary>
        /// <param name="orgID"></param>
        /// <returns></returns>
        public int DeleteAndAllChilds(Guid orgID)
        {
            int i = 0;
            using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
            {
                UsersRelation bur = new UsersRelation();
                Users user = new Users();
                UsersInfo userInfo = new UsersInfo();
                var childs = GetAllChilds(orgID);
                foreach (var child in childs)
                {
                    //删除人员及关系
                    var urs = bur.GetAllByOrganizeID(child.ID);
                    foreach (var ur in urs)
                    {
                        bur.Delete(ur.UserID, ur.OrganizeID);
                        user.Delete(ur.UserID);
                        userInfo.Delete(ur.UserID);
                        i++;
                    }
                    Delete(child.ID);
                    i++;
                }
                //删除人员及关系
                var urs1 = bur.GetAllByOrganizeID(orgID);
                foreach (var ur in urs1)
                {
                    bur.Delete(ur.UserID, ur.OrganizeID);
                    user.Delete(ur.UserID);
                    userInfo.Delete(ur.UserID);
                    i++;
                }
                Delete(orgID);
                i++;
                scope.Complete();
            }
            return i;
        }
    }
}
