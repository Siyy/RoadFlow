using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class WorkFlowForm
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// Name
        /// </summary>
        [DisplayName("Name")]
        public string Name { get; set; }

        /// <summary>
        /// CreateUserID
        /// </summary>
        [DisplayName("CreateUserID")]
        public Guid CreateUserID { get; set; }

        /// <summary>
        /// CreateUserName
        /// </summary>
        [DisplayName("CreateUserName")]
        public string CreateUserName { get; set; }

        /// <summary>
        /// CreateTime
        /// </summary>
        [DisplayName("CreateTime")]
        public DateTime CreateTime { get; set; }

        /// <summary>
        /// LastModifyTime
        /// </summary>
        [DisplayName("LastModifyTime")]
        public DateTime LastModifyTime { get; set; }

        /// <summary>
        /// 表单html
        /// </summary>
        [DisplayName("表单html")]
        public string Html { get; set; }

        /// <summary>
        /// 相关属性
        /// </summary>
        [DisplayName("相关属性")]
        public string Attribute { get; set; }

        /// <summary>
        /// 状态：0 保存 1 编译 2作废
        /// </summary>
        [DisplayName("状态：0 保存 1 编译 2作废")]
        public int Status { get; set; }

    }
}
