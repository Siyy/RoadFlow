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
        /// 表单名称
        /// </summary>
        [DisplayName("表单名称")]
        public string Name { get; set; }

        /// <summary>
        /// 表单分类
        /// </summary>
        [DisplayName("表单分类")]
        public Guid Type { get; set; }

        /// <summary>
        /// 创建人ID
        /// </summary>
        [DisplayName("创建人ID")]
        public Guid CreateUserID { get; set; }

        /// <summary>
        /// 创建人姓名
        /// </summary>
        [DisplayName("创建人姓名")]
        public string CreateUserName { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        [DisplayName("创建时间")]
        public DateTime CreateTime { get; set; }

        /// <summary>
        /// 最后修改时间
        /// </summary>
        [DisplayName("最后修改时间")]
        public DateTime LastModifyTime { get; set; }

        /// <summary>
        /// 表单html
        /// </summary>
        [DisplayName("表单html")]
        public string Html { get; set; }

        /// <summary>
        /// 从表设置数据
        /// </summary>
        [DisplayName("从表设置数据")]
        public string SubTableJson { get; set; }

        /// <summary>
        /// 事件设置
        /// </summary>
        [DisplayName("事件设置")]
        public string EventsJson { get; set; }

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
