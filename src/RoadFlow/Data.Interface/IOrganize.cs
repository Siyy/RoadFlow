using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IOrganize
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.Organize model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.Organize model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.Organize> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.Organize Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

        /// <summary>
        /// 根据根记录
        /// </summary>
        Data.Model.Organize GetRoot();

        /// <summary>
        /// 查询下级记录
        /// </summary>
        List<Data.Model.Organize> GetChilds(Guid ID);

        /// <summary>
        /// 得到最大排序值
        /// </summary>
        /// <returns></returns>
        int GetMaxSort(Guid id);

        /// <summary>
        /// 更新下级数
        /// </summary>
        /// <returns></returns>
        int UpdateChildsLength(Guid id, int length);

        /// <summary>
        /// 更新排序
        /// </summary>
        /// <returns></returns>
        int UpdateSort(Guid id, int sort);

        /// <summary>
        /// 查询一个组织的所有上级
        /// </summary>
        List<Data.Model.Organize> GetAllParent(string number);

        /// <summary>
        /// 查询一个组织的所有下级
        /// </summary>
        /// <param name="number">编号</param>
        /// <returns></returns>
        List<Data.Model.Organize> GetAllChild(string number);

    }
}
