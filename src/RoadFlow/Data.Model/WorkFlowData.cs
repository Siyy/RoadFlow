using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class WorkFlowData
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// InstanceID
        /// </summary>
        [DisplayName("InstanceID")]
        public Guid InstanceID { get; set; }

        /// <summary>
        /// 连接ID
        /// </summary>
        [DisplayName("连接ID")]
        public Guid LinkID { get; set; }

        /// <summary>
        /// 表名
        /// </summary>
        [DisplayName("表名")]
        public string TableName { get; set; }

        /// <summary>
        /// 字段名
        /// </summary>
        [DisplayName("字段名")]
        public string FieldName { get; set; }

        /// <summary>
        /// 主键值
        /// </summary>
        [DisplayName("主键值")]
        public string Value { get; set; }

    }
}
