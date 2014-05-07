using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyCache.Factory
{
    public class Cache
    {
        public static Interface.ICache CreateInstance()
        {
            return new MyCache.InProc.Cache();
        }
    }
}
