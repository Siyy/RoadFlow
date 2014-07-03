using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class RoleApp
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
        /// 角色ID
        /// </summary>
        [DisplayName("角色ID")]
        public Guid RoleID { get; set; }

        /// <summary>
        /// 应用ID
        /// </summary>
        [DisplayName("应用ID")]
        public Guid? AppID { get; set; }

        /// <summary>
        /// 显示标题
        /// </summary>
        [DisplayName("显示标题")]
        public string Title { get; set; }

        /// <summary>
        /// 相关参数
        /// </summary>
        [DisplayName("相关参数")]
        public string Params { get; set; }

        /// <summary>
        /// 显示顺序
        /// </summary>
        [DisplayName("显示顺序")]
        public int Sort { get; set; }

        /// <summary>
        /// 应用图标
        /// </summary>
        [DisplayName("应用图标")]
        public string Ico { get; set; }

        /// <summary>
        /// 0:模板应用 1:个人应用
        /// </summary>
        [DisplayName("0:模板应用 1:个人应用")]
        public int Type { get; set; }

    }
}
