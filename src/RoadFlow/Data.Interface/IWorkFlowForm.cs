using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IWorkFlowForm
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.WorkFlowForm model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.WorkFlowForm model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.WorkFlowForm> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.WorkFlowForm Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();
    }
}
