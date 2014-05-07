using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Caching;

namespace MyCache.InProc
{
    /// <summary>
    /// .net自带缓存类
    /// </summary>
    public class Cache : Interface.ICache
    {
        private System.Web.Caching.Cache cache = HttpContext.Current.Cache;
        /// <summary>
        /// 插入缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        public bool Insert(string key, object obj)
        {
            if (obj == null) return false;
            object lockObj = new object();
            lock (lockObj)
            {
                cache.Insert(key, obj, null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.Web.Caching.Cache.NoSlidingExpiration);
            }
            return true;
        }
        /// <summary>
        /// 插入缓存
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        /// <returns></returns>
        public bool Insert(string key, object obj, DateTime expiry)
        {
            if (obj == null) return false;
            object lockObj = new object();
            lock (lockObj)
            {
                cache.Insert(key, obj, null, expiry, System.Web.Caching.Cache.NoSlidingExpiration,
                    System.Web.Caching.CacheItemPriority.Normal, null);
            }
            return true;
        }
        /// <summary>
        /// 获取缓存
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public object Get(string key)
        {
            return cache.Get(key);
        }
        /// <summary>
        /// 移出缓存
        /// </summary>
        /// <param name="key"></param>
        public bool Remove(string key)
        {
            object lockObj = new object();
            lock (lockObj)
            {
                cache.Remove(key);
            }
            return true;
        }
        /// <summary>
        /// 移出所有缓存
        /// </summary>
        /// <returns></returns>
        public void RemoveAll()
        {
            for (int i = 0; i < cache.Count; i++)
            { 
                
            }
        }
    }
}
