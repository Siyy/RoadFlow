using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class DBConnection
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// 连接名称
        /// </summary>
        [DisplayName("连接名称")]
        public string Name { get; set; }

        /// <summary>
        /// 连接类型
        /// </summary>
        [DisplayName("连接类型")]
        public string Type { get; set; }

        /// <summary>
        /// 连接字符串
        /// </summary>
        [DisplayName("连接字符串")]
        public string ConnectionString { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        [DisplayName("备注")]
        public string Note { get; set; }

    }
}
