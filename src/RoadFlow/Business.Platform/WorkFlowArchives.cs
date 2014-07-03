using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Platform
{
    public class WorkFlowArchives
    {
        private Data.Interface.IWorkFlowArchives dataWorkFlowArchives;
        public WorkFlowArchives()
        {
            this.dataWorkFlowArchives = Data.Factory.Platform.GetWorkFlowArchivesInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.WorkFlowArchives model)
        {
            return dataWorkFlowArchives.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.WorkFlowArchives model)
        {
            return dataWorkFlowArchives.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowArchives> GetAll()
        {
            return dataWorkFlowArchives.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.WorkFlowArchives Get(Guid id)
        {
            return dataWorkFlowArchives.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataWorkFlowArchives.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataWorkFlowArchives.GetCount();
        }

        /// <summary>
        /// 得到一页数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="title"></param>
        /// <param name="flowIDString"></param>
        /// <returns></returns>
        public System.Data.DataTable GetPagerData(out string pager, string query = "", string title = "", string flowIDString = "")
        {
            return dataWorkFlowArchives.GetPagerData(out pager, query, title, flowIDString);
        }
    }
}
