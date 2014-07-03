using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class Dictionary
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// 上级ID
        /// </summary>
        [DisplayName("上级ID")]
        public Guid ParentID { get; set; }

        /// <summary>
        /// 标题
        /// </summary>
        [DisplayName("标题")]
        public string Title { get; set; }

        /// <summary>
        /// 唯一代码
        /// </summary>
        [DisplayName("唯一代码")]
        public string Code { get; set; }

        /// <summary>
        /// 值
        /// </summary>
        [DisplayName("值")]
        public string Value { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        [DisplayName("备注")]
        public string Note { get; set; }

        /// <summary>
        /// 其它信息
        /// </summary>
        [DisplayName("其它信息")]
        public string Other { get; set; }

        /// <summary>
        /// 排序
        /// </summary>
        [DisplayName("排序")]
        public int Sort { get; set; }

    }
}
