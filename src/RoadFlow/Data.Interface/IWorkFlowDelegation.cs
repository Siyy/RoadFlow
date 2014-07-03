using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IWorkFlowDelegation
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.WorkFlowDelegation model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.WorkFlowDelegation model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.WorkFlowDelegation> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.WorkFlowDelegation Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 查询一个用户所有记录
        /// </summary>
        List<Data.Model.WorkFlowDelegation> GetByUserID(Guid userID);

        /// <summary>
        /// 得到一页数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="userID"></param>
        /// <param name="startTime"></param>
        /// <param name="endTime"></param>
        /// <returns></returns>
        List<Data.Model.WorkFlowDelegation> GetPagerData(out string pager, string query = "", string userID = "", string startTime = "", string endTime = "");

        /// <summary>
        /// 得到未过期的委托
        /// </summary>
        List<Data.Model.WorkFlowDelegation> GetNoExpiredList();
    }
}
