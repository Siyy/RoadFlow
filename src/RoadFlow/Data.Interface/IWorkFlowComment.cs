using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IWorkFlowComment
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.WorkFlowComment model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.WorkFlowComment model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.WorkFlowComment> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.WorkFlowComment Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 查询管理员的所有记录
        /// </summary>
        List<Data.Model.WorkFlowComment> GetManagerAll();

        /// <summary>
        /// 得到管理员类别的最大排序值
        /// </summary>
        /// <returns></returns>
        int GetManagerMaxSort();

        /// <summary>
        /// 得到一个人员的最大排序值
        /// </summary>
        /// <returns></returns>
        int GetUserMaxSort(Guid userID);
    }
}
