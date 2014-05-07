using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyCache.IO
{
    public class Opation
    {
        private static Interface.ICache myCache = Factory.Cache.CreateInstance();
        /// <summary>
        /// 插入缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static bool Insert(string key, object obj)
        {
            return myCache.Insert(key, obj);
        }
        /// <summary>
        /// 设置缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static bool Set(string key, object obj)
        {
            return Insert(key, obj);
        }
        /// <summary>
        /// 插入缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static bool Insert(string key, object obj, DateTime expiry)
        {
            return myCache.Insert(key, obj, expiry);
        }
        /// <summary>
        /// 插入缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static bool Set(string key, object obj, DateTime expiry)
        {
            return Insert(key, obj, expiry);
        }
        /// <summary>
        /// 获取缓存
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static object Get(string key)
        {
            return myCache.Get(key);
        }
        /// <summary>
        /// 移出缓存
        /// </summary>
        /// <param name="key"></param>
        public static bool Remove(string key)
        {
            return myCache.Remove(key);
        }
        /// <summary>
        /// 清空所有缓存
        /// </summary>
        /// <returns></returns>
        public static void RemoveAll()
        {
            myCache.RemoveAll();
        }
    }
}
