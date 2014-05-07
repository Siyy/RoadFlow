using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Utility
{
    public class DateTimeNew
    {

        public static DateTime Now
        {
            get
            {
                return DateTime.Now;
            }
        }

        /// <summary>
        /// 短日期格式(yyyy/MM/dd)
        /// </summary>
        public static string ShortDate
        {
            get
            {
                return Now.ToString("yyyy/MM/dd");
            }
        }
        /// <summary>
        /// 长日期格式(yyyy月MM日dd日)
        /// </summary>
        public static string LongDate
        {
            get
            {
                return Now.ToString("yyyy月MM日dd日");
            }
        }
        /// <summary>
        /// 日期时间(yyyy/MM/dd HH:mm)
        /// </summary>
        public static string ShortDateTime
        {
            get
            {
                return Now.ToString("yyyy/MM/dd HH:mm");
            }
        }
        /// <summary>
        /// 日期时间(yyyy年MM月dd日 HH时mm分)
        /// </summary>
        public static string LongDateTime
        {
            get
            {
                return Now.ToString("yyyy年MM月dd日 HH时mm分");
            }
        }
    }
}
