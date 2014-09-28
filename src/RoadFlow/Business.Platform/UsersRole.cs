using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Business.Platform
{
    public class UsersRole
    {
        private static string cacheKey = Utility.Keys.CacheKeys.UserRoles.ToString();
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
            int i = dataUsersRole.Add(model);
            ClearCache();
            return i;
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.UsersRole model)
        {
            int i = dataUsersRole.Update(model);
            ClearCache();
            return i;
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
            int i = dataUsersRole.Delete(userid, roleid);
            ClearCache();
            return i;
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
            int i = dataUsersRole.DeleteByUserID(memberID);
            ClearCache();
            return i;
        }

        /// <summary>
        /// 删除一个角色所有记录
        /// </summary>
        public int DeleteByRoleID(Guid roleid)
        {
            int i = dataUsersRole.DeleteByRoleID(roleid);
            ClearCache();
            return i;
        }

        /// <summary>
        /// 根据一组用户ID查询记录
        /// </summary>
        public List<Data.Model.UsersRole> GetByUserIDArray(Guid[] memberIDArray)
        {
            return dataUsersRole.GetByUserIDArray(memberIDArray);
        }

        /// <summary>
        /// 根据用户ID查询记录
        /// </summary>
        public List<Data.Model.UsersRole> GetByUserID(Guid memberID)
        {
            return dataUsersRole.GetByUserID(memberID);
        }

        /// <summary>
        /// 得到一个用户的所有角色
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public List<Data.Model.UsersRole> GetByUserIDFromCache(Guid userID)
        {
            var list = GetAllFromCache();
            return list.FindAll(p => p.MemberID == userID);
        }

        /// <summary>
        /// 更新一个人员的所属角色
        /// </summary>
        /// <param name="userID"></param>
        public void UpdateByUserID(Guid userID)
        {
            Organize borg=new Organize();
            UsersRole busersRole = new UsersRole();
            var roles = new Role().GetAll();
            
            busersRole.DeleteByUserID(userID);
            foreach (var role in roles)
            {
                if (role.UseMember.IsNullOrEmpty())
                {
                    continue;
                }
                var users = borg.GetAllUsers(role.UseMember);
                if (users.Exists(p => p.ID == userID))
                {
                    busersRole.Add(new Data.Model.UsersRole()
                    {
                        IsDefault = true,
                        MemberID = userID,
                        RoleID = role.ID
                    });
                }
            }
            ClearCache(); 
        }

        /// <summary>
        /// 从缓存得到所有记录
        /// </summary>
        /// <returns></returns>
        public List<Data.Model.UsersRole> GetAllFromCache()
        {
            var obj = MyCache.IO.Opation.Get(cacheKey);
            if (obj == null || !(obj is List<Data.Model.UsersRole>))
            {
                var list = GetAll();
                MyCache.IO.Opation.Set(cacheKey, list);
                return list;
            }
            else
            {
                return obj as List<Data.Model.UsersRole>;
            }
        }

        /// <summary>
        /// 清除缓存记录
        /// </summary>
        public void ClearCache()
        {
            MyCache.IO.Opation.Remove(cacheKey);
        }
    }
}
