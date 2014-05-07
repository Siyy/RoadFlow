using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Business.Platform
{
    public class WorkFlowButtons
    {
        private Data.Interface.IWorkFlowButtons dataWorkFlowButtons;
        public WorkFlowButtons()
        {
            this.dataWorkFlowButtons = Data.Factory.Platform.GetWorkFlowButtonsInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.WorkFlowButtons model)
        {
            return dataWorkFlowButtons.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.WorkFlowButtons model)
        {
            return dataWorkFlowButtons.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        /// <param name="fromCache">是否从缓存获取</param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowButtons> GetAll(bool fromCache=false)
        {
            if (fromCache)
            {
                string key = Utility.Keys.CacheKeys.WorkFlowButtons.ToString();
                object obj = MyCache.IO.Opation.Get(key);
                if (obj != null && obj is List<Data.Model.WorkFlowButtons>)
                {
                    return obj as List<Data.Model.WorkFlowButtons>;
                }
                else
                {
                    var list = dataWorkFlowButtons.GetAll();
                    MyCache.IO.Opation.Set(key, list);
                    return list;
                }
            }
            else
            {
                return dataWorkFlowButtons.GetAll();
            }
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.WorkFlowButtons Get(Guid id, bool fromCache=false)
        {
            if (fromCache)
            {
                var all = GetAll(true);
                var button = all.Find(p => p.ID == id);
                return button == null ? dataWorkFlowButtons.Get(id) : button;
            }
            else
            {
                return dataWorkFlowButtons.Get(id);
            }
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataWorkFlowButtons.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataWorkFlowButtons.GetCount();
        }
        /// <summary>
        /// 清除缓存
        /// </summary>
        public void ClearCache()
        {
            string key = Utility.Keys.CacheKeys.WorkFlowButtons.ToString();
            MyCache.IO.Opation.Remove(key);
        }

        /// <summary>
        /// 查询最大排序
        /// </summary>
        public int GetMaxSort()
        {
            return dataWorkFlowButtons.GetMaxSort();
        }
    
    }
}
