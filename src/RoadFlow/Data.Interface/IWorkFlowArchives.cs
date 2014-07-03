using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IWorkFlowArchives
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.WorkFlowArchives model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.WorkFlowArchives model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.WorkFlowArchives> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.WorkFlowArchives Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 得到一页数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="title"></param>
        /// <param name="flowIDString"></param>
        /// <returns></returns>
        System.Data.DataTable GetPagerData(out string pager, string query = "", string title = "", string flowIDString = "");
    }
}
