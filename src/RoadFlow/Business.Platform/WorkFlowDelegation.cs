using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Business.Platform
{
    public class WorkFlowDelegation
    {
        private Data.Interface.IWorkFlowDelegation dataWorkFlowDelegation;
        private static string cacheKey = Utility.Keys.CacheKeys.WorkFlowDelegation.ToString();
        public WorkFlowDelegation()
        {
            this.dataWorkFlowDelegation = Data.Factory.Platform.GetWorkFlowDelegationInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.WorkFlowDelegation model)
        {
            return dataWorkFlowDelegation.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.WorkFlowDelegation model)
        {
            return dataWorkFlowDelegation.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowDelegation> GetAll()
        {
            return dataWorkFlowDelegation.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.WorkFlowDelegation Get(Guid id)
        {
            return dataWorkFlowDelegation.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataWorkFlowDelegation.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataWorkFlowDelegation.GetCount();
        }

        /// <summary>
        /// 查询一个用户所有记录
        /// </summary>
        public List<Data.Model.WorkFlowDelegation> GetByUserID(Guid userID)
        {
            return dataWorkFlowDelegation.GetByUserID(userID);
        }

        /// <summary>
        /// 得到一页数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="userID"></param>
        /// <param name="startTime"></param>
        /// <param name="endTime"></param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowDelegation> GetPagerData(out string pager, string query = "", string userID = "", string startTime = "", string endTime = "")
        {
            return dataWorkFlowDelegation.GetPagerData(out pager, query, userID, startTime, endTime);
        }

        /// <summary>
        /// 得到未过期的委托
        /// </summary>
        public List<Data.Model.WorkFlowDelegation> GetNoExpiredList()
        {
            return dataWorkFlowDelegation.GetNoExpiredList();
        }

        /// <summary>
        /// 刷新缓存
        /// </summary>
        public void RefreshCache()
        {
            var list = GetNoExpiredList();
            MyCache.IO.Opation.Set(cacheKey, list);
        }

        /// <summary>
        /// 从缓存得到所有有效委托
        /// </summary>
        /// <returns></returns>
        public List<Data.Model.WorkFlowDelegation> GetNoExpiredListFromCache()
        {
            object obj = MyCache.IO.Opation.Get(cacheKey);
            if (obj != null && obj is List<Data.Model.WorkFlowDelegation>)
            {
                return obj as List<Data.Model.WorkFlowDelegation>;
            }
            else
            {
                var list = GetNoExpiredList();
                MyCache.IO.Opation.Set(cacheKey, list);
                return list;
            }

        }

        /// <summary>
        /// 得到一个流程一个用户是否有委托
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="userID"></param>
        /// <returns>返回Guid.Empty表示没有委托</returns>
        public Guid GetFlowDelegationByUserID(Guid flowID, Guid userID)
        {
            var list = GetNoExpiredListFromCache();
            if (list.Count == 0)
            {
                return Guid.Empty;
            }
            Guid toUserID = Guid.Empty;
            var userList = list.Where(p => p.UserID == userID && (!p.FlowID.HasValue || p.FlowID.Value == Guid.Empty || p.FlowID.Value == flowID) && p.EndTime >= Utility.DateTimeNew.Now);
            
            if (userList.Count() == 0)
            {
                toUserID = Guid.Empty;
            }
            else
            {
                toUserID = userList.OrderByDescending(p => p.WriteTime).First().ToUserID;
            }
            
            return getFlowDelegationByUserID1(flowID, toUserID, list);
            
        }
        private Guid getFlowDelegationByUserID1(Guid flowID, Guid userID, List<Data.Model.WorkFlowDelegation> list)
        {

            var userList = list.Where(p => p.UserID == userID && (!p.FlowID.HasValue || p.FlowID.Value == Guid.Empty || p.FlowID.Value == flowID) && p.EndTime >= Utility.DateTimeNew.Now);
            if (userList.Count() == 0)
            {
                return userID;
            }
            else
            {
                userID = userList.OrderByDescending(p => p.WriteTime).First().ToUserID;
                getFlowDelegationByUserID1(flowID, userID, list);
            }

            return Guid.Empty;
        }


    }
}
