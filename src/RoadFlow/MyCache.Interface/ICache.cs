using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyCache.Interface
{
    public interface ICache
    {
        /// <summary>
        /// 插入缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        bool Insert(string key, object obj);
        /// <summary>
        /// 插入缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        bool Insert(string key, object obj, DateTime expiry);
        /// <summary>
        /// 获取缓存
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        object Get(string key);
        /// <summary>
        /// 移出缓存
        /// </summary>
        /// <param name="key"></param>
        bool Remove(string key);
        /// <summary>
        /// 移出所有缓存
        /// </summary>
        /// <returns></returns>
        void RemoveAll();

    }
}
