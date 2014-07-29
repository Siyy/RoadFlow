using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;

namespace LitJson
{
    public partial class JsonData
    {
		/// <summary>
		/// 以<typeparamref name="IDictionary"/>类型的方式检测是否包含<paramref name="key"/>。
		/// </summary>
		/// <param name="key"></param>
		/// <returns></returns>
		public bool ContainsKey( object key)
		{
			return ((IDictionary)this).Contains(key);
		}
    }
}
