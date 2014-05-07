using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Data.Model
{
    /// <summary>
    /// 在线用户实体
    /// </summary>
    [Serializable]
    public class OnlineUsers
    {
        /// <summary>
        /// 用户ID
        /// </summary>
        public Guid ID { get; set; }
        /// <summary>
        /// 用户名称
        /// </summary>
        public string UserName { get; set; }
        /// <summary>
        /// 所在组织
        /// </summary>
        public string OrgName { get; set; }
        /// <summary>
        /// 登录IP
        /// </summary>
        public string IP { get; set; }
        /// <summary>
        /// 客户端信息 浏览器版本等
        /// </summary>
        public string ClientInfo { get; set; }
        /// <summary>
        /// 最后访问页面
        /// </summary>
        public string LastPage { get; set; }
        /// <summary>
        /// 登录时间
        /// </summary>
        public DateTime LoginTime { get; set; }
        /// <summary>
        /// 唯一ID
        /// </summary>
        public Guid UniqueID { get; set; }
    }
}
