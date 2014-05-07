using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Platform
{
    public class UsersRole
    {
        private Data.Interface.IUsersRole dataUsersRole;
        public UsersRole()
        {
            this.dataUsersRole = Data.Factory.Platform.GetUsersRoleInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.UsersRole model)
        {
            return dataUsersRole.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.UsersRole model)
        {
            return dataUsersRole.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.UsersRole> GetAll()
        {
            return dataUsersRole.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.UsersRole Get(Guid userid, Guid roleid)
        {
            return dataUsersRole.Get(userid, roleid);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid userid, Guid roleid)
        {
            return dataUsersRole.Delete(userid, roleid);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataUsersRole.GetCount();
        }

        /// <summary>
        /// 删除一个机构所有记录
        /// </summary>
        public int DeleteByUserID(Guid memberID)
        {
            return dataUsersRole.DeleteByUserID(memberID);
        }

        /// <summary>
        /// 删除一个角色所有记录
        /// </summary>
        public int DeleteByRoleID(Guid roleid)
        {
            return dataUsersRole.DeleteByRoleID(roleid);
        }

        /// <summary>
        /// 根据一组机构ID查询记录
        /// </summary>
        public List<Data.Model.UsersRole> GetByUserIDArray(Guid[] memberIDArray)
        {
            return dataUsersRole.GetByUserIDArray(memberIDArray);
        }

        /// <summary>
        /// 根据机构ID查询记录
        /// </summary>
        public List<Data.Model.UsersRole> GetByUserID(Guid memberID)
        {
            return dataUsersRole.GetByUserID(memberID);
        }
    }
}
