using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IRoleApp
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.RoleApp model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.RoleApp model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.RoleApp> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.RoleApp Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 查询一个角色所有记录
        /// </summary>
        List<Data.Model.RoleApp> GetAllByRoleID(Guid roleID);

        /// <summary>
        /// 查询个角色所有记录
        /// </summary>
        System.Data.DataTable GetAllDataTableByRoleID(Guid roleID);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        System.Data.DataTable GetAllDataTable();

        /// <summary>
        /// 查询所有下级记录
        /// </summary>
        System.Data.DataTable GetChildsDataTable(Guid id);

        /// <summary>
        /// 查询下级记录
        /// </summary>
        List<Data.Model.RoleApp> GetChild(Guid id);

        /// <summary>
        /// 是否有下级记录
        /// </summary>
        bool HasChild(Guid id);

        /// <summary>
        /// 更新排序
        /// </summary>
        int UpdateSort(Guid id, int sort);

        /// <summary>
        /// 删除一个角色记录
        /// </summary>
        int DeleteByRoleID(Guid roleID);

        /// <summary>
        /// 得到最大排序值
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        int GetMaxSort(Guid id);

        /// <summary>
        /// 删除一个应用记录
        /// </summary>
        int DeleteByAppID(Guid appID);
    }
}
