using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Platform
{
    public class Role
    {
        private Data.Interface.IRole dataRole;
        public Role()
        {
            this.dataRole = Data.Factory.Platform.GetRoleInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.Role model)
        {
            return dataRole.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.Role model)
        {
            return dataRole.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.Role> GetAll()
        {
            return dataRole.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.Role Get(Guid id)
        {
            return dataRole.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataRole.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataRole.GetCount();
        }
        /// <summary>
        /// 得到所有角色选项
        /// </summary>
        /// <param name="value"></param>
        /// <param name="hideID">不显示的ID</param>
        /// <returns></returns>
        public string GetRoleOptions(string value = "", string hideID = "", IEnumerable<Data.Model.Role> roleList = null)
        {
            var roles = roleList == null ? GetAll() : roleList;
            StringBuilder options = new StringBuilder();
            foreach (var role in roles)
            {
                if (string.Compare(role.ID.ToString(), hideID, true) == 0)
                {
                    continue;
                }
                options.AppendFormat("<option value=\"{0}\" {1}>{2}</option>", role.ID,
                    string.Compare(role.ID.ToString(), value, true) == 0 ? "selected=\"selected\"" : "", role.Name);
            }
            return options.ToString();
        }

      
    }
}
