using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IUsersRelation
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.UsersRelation model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.UsersRelation model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.UsersRelation> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.UsersRelation Get(Guid userid, Guid organizeid);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid userid, Guid organizeid);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 查询一个岗位下所有记录
        /// </summary>
        List<Data.Model.UsersRelation> GetAllByOrganizeID(Guid organizeID);

        /// <summary>
        /// 查询一个用户所有记录
        /// </summary>
        List<Data.Model.UsersRelation> GetAllByUserID(Guid userID);

        /// <summary>
        /// 查询一个用户主要岗位
        /// </summary>
        Data.Model.UsersRelation GetMainByUserID(Guid userID);

        /// <summary>
        /// 删除一个用户记录
        /// </summary>
        int DeleteByUserID(Guid userID);

        /// <summary>
        /// 删除一个用户的兼职记录
        /// </summary>
        int DeleteNotIsMainByUserID(Guid userID);

        /// <summary>
        /// 删除一个机构下所有记录
        /// </summary>
        int DeleteByOrganizeID(Guid organizeID);

        /// <summary>
        /// 得到最大排序值
        /// </summary>
        /// <returns></returns>
        int GetMaxSort(Guid organizeID);
    }
}
