using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Utility
{
    public class Config
    {
        /// <summary>
        /// 平台连接字符串
        /// </summary>
        public static string PlatformConnectionString
        {
            get
            {
                return System.Configuration.ConfigurationManager.ConnectionStrings["PlatformConnection"].ConnectionString;
            }
        }
        /// <summary>
        /// 系统初始密码
        /// </summary>
        public static string SystemInitPassword
        {
            get
            {
                string pass = System.Configuration.ConfigurationManager.AppSettings["InitPassword"];
                return pass.IsNullOrEmpty() ? "111" : pass.Trim();
            }
        }
        /// <summary>
        /// 得到当前主题
        /// </summary>
        public static string Theme
        {
            get
            {
                var cookie = System.Web.HttpContext.Current.Request.Cookies["theme_platform"];
                return cookie != null && !cookie.Value.IsNullOrEmpty() ? cookie.Value : "BlueLight";
            }
        }
    }
}
