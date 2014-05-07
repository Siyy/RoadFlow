using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class WorkFlowButtons
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
        /// 图标
        /// </summary>
        [DisplayName("图标")]
        public string Ico { get; set; }

        /// <summary>
        /// 脚本
        /// </summary>
        [DisplayName("脚本")]
        public string Script { get; set; }

        /// <summary>
        /// 备注说明
        /// </summary>
        [DisplayName("备注说明")]
        public string Note { get; set; }

        /// <summary>
        /// 排序
        /// </summary>
        [DisplayName("排序")]
        public int Sort { get; set; }

    }
}
