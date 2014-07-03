using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IUsersApp
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.UsersApp model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.UsersApp model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.UsersApp> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.UsersApp Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 查询所有记录
        /// </summary>
        System.Data.DataTable GetAllDataTable();

        /// <summary>
        /// 更新排序
        /// </summary>
        int UpdateSort(Guid id, int sort);

        /// <summary>
        /// 查询下级记录
        /// </summary>
        List<Data.Model.UsersApp> GetChild(Guid id);

        /// <summary>
        /// 删除一个用户记录
        /// </summary>
        int DeleteByUserID(Guid userID);
    }
}
