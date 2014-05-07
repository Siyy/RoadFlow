using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Business.Platform
{
    public class WorkFlowData
    {
        private Data.Interface.IWorkFlowData dataWorkFlowData;
        public WorkFlowData()
        {
            this.dataWorkFlowData = Data.Factory.Platform.GetWorkFlowDataInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.WorkFlowData model)
        {
            return dataWorkFlowData.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.WorkFlowData model)
        {
            return dataWorkFlowData.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowData> GetAll()
        {
            return dataWorkFlowData.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.WorkFlowData Get(Guid id)
        {
            return dataWorkFlowData.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataWorkFlowData.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataWorkFlowData.GetCount();
        }

        /// <summary>
        /// 查询一个实例ID所有记录
        /// </summary>
        public List<Data.Model.WorkFlowData> GetAll(Guid instanceID)
        {
            return dataWorkFlowData.GetAll(instanceID);
        }

        /// <summary>
        /// 根据实例ID得到第一个连接的主键的值
        /// </summary>
        /// <param name="instanceID"></param>
        /// <returns></returns>
        public string GetFirstPrimaryKeyValue(Guid instanceID)
        {
            var list = GetAll(instanceID);
            return list.Count > 0 ? list.First().Value : "";

        }

       
        /// <summary>
        /// 根据一个连接字符串得到一个字段值
        /// </summary>
        /// <param name="linkString">连接ID.表.主键</param>
        /// <param name="field">字段</param>
        /// <param name="instanceID">实例ID</param>
        /// <returns></returns>
        public string GetLinkFieldValue(string linkString, Guid instanceID)
        {
            string value = "";
            string[] array = linkString.Split('.');
            if (array.Length == 3)
            {
                var pkvalues = GetAll(instanceID);
                Dictionary<string, string> key = new Dictionary<string, string>();
                foreach (var pkvalue in pkvalues)
                {
                    if (array[0].ToGuid() == pkvalue.LinkID && array[1] == pkvalue.TableName)
                    {
                        key.Add(pkvalue.FieldName , pkvalue.Value);
                    }
                }
                    
                value = new Business.Platform.DBConnection().GetFieldValue(array[2], key);
            }
            return value;
        }

        /// <summary>
        /// 创建流程单个实例数据
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="pkValue"></param>
        /// <returns>实例ID</returns>
        public Guid CreateData(Guid flowID, string pkValue)
        {
            var wfi = new WorkFlow().GetWorkFlowRunModel(flowID);
            if (wfi == null) return Guid.Empty;
            var dbs = wfi.DataBases;
            if (dbs.Count() == 0) return Guid.Empty;
            var db = dbs.First();
            WorkFlowData wfData = new WorkFlowData();
            Data.Model.WorkFlowData wfdata = new Data.Model.WorkFlowData();
            wfdata.ID = Guid.NewGuid();
            wfdata.InstanceID = Guid.NewGuid();
            wfdata.LinkID = db.LinkID;
            wfdata.TableName = db.Table;
            wfdata.FieldName = db.PrimaryKey;
            wfdata.Value = pkValue;
            wfData.Add(wfdata);
            return wfdata.InstanceID;
        }
    }
}
