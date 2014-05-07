using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Platform
{
    public class WorkGroup
    {
        /// <summary>
        /// 工作组在机构字符串中的前缀
        /// </summary>
        public const string PREFIX = "w_";
        private Data.Interface.IWorkGroup dataWorkGroup;
        public WorkGroup()
        {
            this.dataWorkGroup = Data.Factory.Platform.GetWorkGroupInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.WorkGroup model)
        {
            return dataWorkGroup.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.WorkGroup model)
        {
            return dataWorkGroup.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkGroup> GetAll()
        {
            return dataWorkGroup.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.WorkGroup Get(Guid id)
        {
            return dataWorkGroup.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataWorkGroup.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataWorkGroup.GetCount();
        }

        /// <summary>
        /// 得到工作组名称
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string GetName(Guid id)
        {
            var wg = Get(id);
            return wg == null ? "" : wg.Name;
        }

        /// <summary>
        /// 去除ID前缀
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static string RemovePrefix(string id)
        {
            return id.IsNullOrEmpty() ? "" : id.Replace(PREFIX, "");
        }

        /// <summary>
        /// 去除ID前缀
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string RemovePrefix1(string id)
        {
            return id.IsNullOrEmpty() ? "" : id.Replace(PREFIX, "");
        }

        /// <summary>
        /// 得到工作组下的人员名称字符串
        /// </summary>
        /// <param name="members">工作组成员字符串</param>
        /// <param name="split"></param>
        /// <returns></returns>
        public string GetUsersNames(string members, char split = ',')
        {
            if (members.IsNullOrEmpty())
            {
                return "";
            }
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            var users = new Business.Platform.Organize().GetAllUsers(members);
            foreach (var user in users)
            {
                sb.Append(user.Name);
                sb.Append(split);
            }
            return sb.ToString().TrimEnd(split);
        }

        /// <summary>
        /// 得到工作组下的人员名称字符串
        /// </summary>
        /// <param name="wg">工作组实体</param>
        /// <param name="split"></param>
        /// <returns></returns>
        public string GetUsersNames(Data.Model.WorkGroup wg, char split = ',')
        {
            if (wg == null || wg.Members.IsNullOrEmpty())
            {
                return "";
            }
            return GetUsersNames(wg.Members, split);
        }

        /// <summary>
        /// 得到工作组下的人员名称字符串
        /// </summary>
        /// <param name="wgID">工作组ID</param>
        /// <param name="split"></param>
        /// <returns></returns>
        public string GetUsersNames(Guid wgID, char split = ',')
        {
            var wg = Get(wgID);
            return GetUsersNames(wg, split);
        }
    }
}
