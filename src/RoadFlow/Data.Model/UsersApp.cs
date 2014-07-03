using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class UsersApp
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// 用户ID
        /// </summary>
        [DisplayName("用户ID")]
        public Guid UserID { get; set; }

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
        /// 应用标题
        /// </summary>
        [DisplayName("应用标题")]
        public string Title { get; set; }

        /// <summary>
        /// 参数
        /// </summary>
        [DisplayName("参数")]
        public string Params { get; set; }

        /// <summary>
        /// 图标
        /// </summary>
        [DisplayName("图标")]
        public string Ico { get; set; }

        /// <summary>
        /// 序号
        /// </summary>
        [DisplayName("序号")]
        public int Sort { get; set; }

    }
}
