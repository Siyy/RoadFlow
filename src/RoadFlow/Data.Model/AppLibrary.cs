using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class AppLibrary
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
        /// 地址
        /// </summary>
        [DisplayName("地址")]
        public string Address { get; set; }

        /// <summary>
        /// 分类ID
        /// </summary>
        [DisplayName("分类ID")]
        public Guid Type { get; set; }

        /// <summary>
        /// 打开方式{0-默认,1-弹出模态窗口,2-弹出窗口,3-新窗口}
        /// </summary>
        [DisplayName("打开方式{0-默认,1-弹出模态窗口,2-弹出窗口,3-新窗口}")]
        public int OpenMode { get; set; }

        /// <summary>
        /// 弹出窗口宽度
        /// </summary>
        [DisplayName("弹出窗口宽度")]
        public int? Width { get; set; }

        /// <summary>
        /// 弹出窗口高度
        /// </summary>
        [DisplayName("弹出窗口高度")]
        public int? Height { get; set; }

        /// <summary>
        /// 其它参数
        /// </summary>
        [DisplayName("其它参数")]
        public string Params { get; set; }

        /// <summary>
        /// 管理人员
        /// </summary>
        [DisplayName("管理人员")]
        public string Manager { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        [DisplayName("备注")]
        public string Note { get; set; }

        /// <summary>
        /// 唯一标识符，流程应用时为流程ID，表单应用时对应表单ID
        /// </summary>
        [DisplayName("唯一标识符，流程应用时为流程ID，表单应用时对应表单ID")]
        public string Code { get; set; }

    }
}
