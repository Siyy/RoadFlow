using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Business.Platform
{
    public class WorkFlowComment
    {
        private Data.Interface.IWorkFlowComment dataWorkFlowComment;
        public WorkFlowComment()
        {
            this.dataWorkFlowComment = Data.Factory.Platform.GetWorkFlowCommentInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.WorkFlowComment model)
        {
            return dataWorkFlowComment.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.WorkFlowComment model)
        {
            return dataWorkFlowComment.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowComment> GetAll()
        {
            return dataWorkFlowComment.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.WorkFlowComment Get(Guid id)
        {
            return dataWorkFlowComment.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataWorkFlowComment.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataWorkFlowComment.GetCount();
        }
        /// <summary>
        /// 查询管理员的所有记录
        /// </summary>
        public List<Data.Model.WorkFlowComment> GetManagerAll()
        {
            return dataWorkFlowComment.GetManagerAll();
        }

        /// <summary>
        /// 得到管理员类别的最大排序值
        /// </summary>
        /// <returns></returns>
        public int GetManagerMaxSort()
        {
            return dataWorkFlowComment.GetManagerMaxSort();
        }

        /// <summary>
        /// 得到一个人员的最大排序值
        /// </summary>
        /// <returns></returns>
        public int GetUserMaxSort(Guid userID)
        {
            return dataWorkFlowComment.GetUserMaxSort(userID);
        }

        /// <summary>
        /// 获得所有列表
        /// </summary>
        /// <param name="fromCache">是否从缓存获取</param>
        /// <returns></returns>
        private List<Tuple<Guid, string, int, int, List<Guid>>> GetAllList(bool fromCache = true)
        {
            string key = Utility.Keys.CacheKeys.WorkFlowComments.ToString();
            if (!fromCache)
            {
                return getAllListByDb();
            }
            else
            {
                object obj = MyCache.IO.Opation.Get(key);
                if (obj == null)
                {
                    var list = getAllListByDb();
                    MyCache.IO.Opation.Set(key, list);
                    return list;
                }
                else
                {
                    return obj as List<Tuple<Guid, string, int, int, List<Guid>>>;
                }
            }
        }
        /// <summary>
        /// 从数据库获取所有意见列表
        /// </summary>
        /// <returns></returns>
        private List<Tuple<Guid, string, int, int, List<Guid>>> getAllListByDb()
        {
            var comments = GetAll();
            Organize borganize=new Organize();
            List<Tuple<Guid, string, int, int, List<Guid>>> list = new List<Tuple<Guid, string, int, int, List<Guid>>>();
            foreach (var comment in comments)
            {
                List<Guid> userList=new List<Guid>();
                if(!comment.MemberID.IsNullOrEmpty())
                {
                    var users=borganize.GetAllUsers(comment.MemberID);
                    foreach(var user in users)
                    {
                        userList.Add(user.ID);
                    }
                }

                Tuple<Guid, string, int, int, List<Guid>> tuple = new Tuple<Guid, string, int, int, List<Guid>>(
                    comment.ID,
                    comment.Comment,
                    comment.Type,
                    comment.Sort,
                    userList
                    );
                list.Add(tuple);
            }
            return list;
        }
        /// <summary>
        /// 清除缓存
        /// </summary>
        public void ClearCache()
        {
            MyCache.IO.Opation.Remove(Utility.Keys.CacheKeys.WorkFlowComments.ToString());
        }
        /// <summary>
        /// 刷新缓存
        /// </summary>
        public void RefreshCache()
        {
            MyCache.IO.Opation.Set(Utility.Keys.CacheKeys.WorkFlowComments.ToString(), getAllListByDb());
        }
        /// <summary>
        /// 得到一个用户的所有意见
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public List<string> GetListByUserID(Guid userID)
        {
            var list = GetAllList();
            var list1 = list.Where(p => p.Item5.Count == 0 || p.Item5.Exists(q => q == userID)).OrderByDescending(p => p.Item3).ThenBy(p => p.Item4);
            List<string> commentsList = new List<string>();
            foreach (var li in list1.OrderBy(p=>p.Item3).ThenBy(p=>p.Item4))
            {
                commentsList.Add(li.Item2);
            }
            return commentsList;
        }
        /// <summary>
        /// 得到一个用户的所有意见选择项
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public string GetOptionsStringByUserID(Guid userID)
        {
            var list = GetListByUserID(userID);
            StringBuilder options = new StringBuilder();
            foreach (var li in list)
            {
                options.AppendFormat("<option value=\"{0}\">{0}</option>", li);
            }
            return options.ToString();
        }
    }
}
