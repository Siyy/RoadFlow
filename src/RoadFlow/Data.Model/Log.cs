using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class Log
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// 标题
        /// </summary>
        [DisplayName("标题")]
        public string Title { get; set; }

        /// <summary>
        /// 类型
        /// </summary>
        [DisplayName("类型")]
        public string Type { get; set; }

        /// <summary>
        /// 写入时间
        /// </summary>
        [DisplayName("写入时间")]
        public DateTime WriteTime { get; set; }

        /// <summary>
        /// 用户ID
        /// </summary>
        [DisplayName("用户ID")]
        public Guid? UserID { get; set; }

        /// <summary>
        /// 用户姓名
        /// </summary>
        [DisplayName("用户姓名")]
        public string UserName { get; set; }

        /// <summary>
        /// IP
        /// </summary>
        [DisplayName("IP")]
        public string IPAddress { get; set; }

        /// <summary>
        /// 发生URL
        /// </summary>
        [DisplayName("发生URL")]
        public string URL { get; set; }

        /// <summary>
        /// 内容
        /// </summary>
        [DisplayName("内容")]
        public string Contents { get; set; }

        /// <summary>
        /// Others
        /// </summary>
        [DisplayName("Others")]
        public string Others { get; set; }

        /// <summary>
        /// 更改前
        /// </summary>
        [DisplayName("更改前")]
        public string OldXml { get; set; }

        /// <summary>
        /// 更改后
        /// </summary>
        [DisplayName("更改后")]
        public string NewXml { get; set; }

    }
}
