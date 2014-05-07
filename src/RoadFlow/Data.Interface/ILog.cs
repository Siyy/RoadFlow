using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface ILog
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.Log model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.Log model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.Log> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.Log Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 得到一页日志数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="order"></param>
        /// <param name="size"></param>
        /// <param name="number"></param>
        /// <param name="title"></param>
        /// <param name="type"></param>
        /// <param name="date1"></param>
        /// <param name="date2"></param>
        /// <param name="userID"></param>
        /// <returns></returns>
        System.Data.DataTable GetPagerData(out string pager, string query = "", int size = 15, int number = 1, string title = "", string type = "", string date1 = "", string date2 = "", string userID = "");
    }
}
