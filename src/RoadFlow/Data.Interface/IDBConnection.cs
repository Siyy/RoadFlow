using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IDBConnection
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.DBConnection model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.DBConnection model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.DBConnection> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.DBConnection Get(Guid id);

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
