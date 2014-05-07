using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IUsersRole
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.UsersRole model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.UsersRole model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.UsersRole> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.UsersRole Get(Guid memberid, Guid roleid);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid memberid, Guid roleid);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 删除一个机构所有记录
        /// </summary>
        int DeleteByUserID(Guid userID);

        /// <summary>
        /// 删除一个角色所有记录
        /// </summary>
        int DeleteByRoleID(Guid roleid);

        /// <summary>
        /// 根据一组机构ID查询记录
        /// </summary>
        List<Data.Model.UsersRole> GetByUserIDArray(Guid[] userIDArray);

        /// <summary>
        /// 根据人员ID查询记录
        /// </summary>
        List<Data.Model.UsersRole> GetByUserID(Guid userID);
    }
}
