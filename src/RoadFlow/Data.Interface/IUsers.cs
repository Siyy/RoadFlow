using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IUsers
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.Users model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.Users model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.Users> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.Users Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 根据帐号查询一条记录
        /// </summary>
        Data.Model.Users GetByAccount(string account);

         /// <summary>
        /// 查询一个岗位下所有人员
        /// </summary>
        /// <param name="organizeID"></param>
        /// <returns></returns>
        List<Model.Users> GetAllByOrganizeID(Guid organizeID);

        /// <summary>
        /// 查询一组岗位下所有人员
        /// </summary>
        /// <param name="organizeID"></param>
        /// <returns></returns>
        List<Model.Users> GetAllByOrganizeIDArray(Guid[] organizeIDArray);

        /// <summary>
        /// 检查帐号是否重复
        /// </summary>
        /// <param name="account">帐号</param>
        /// <param name="userID">人员ID(此人员除外)</param>
        /// <returns></returns>
        bool HasAccount(string account, string userID = "");

        /// <summary>
        /// 修改用户密码
        /// </summary>
        /// <param name="password"></param>
        /// <param name="userID"></param>
        /// <returns></returns>
        bool UpdatePassword(string password, Guid userID);

        /// <summary>
        /// 更新排序
        /// </summary>
        int UpdateSort(Guid userID, int sort);
    }
}
