using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class Users
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
        /// Account
        /// </summary>
        [DisplayName("Account")]
        public string Account { get; set; }

        /// <summary>
        /// Password
        /// </summary>
        [DisplayName("Password")]
        public string Password { get; set; }

        /// <summary>
        /// 状态 0 正常 1 冻结
        /// </summary>
        [DisplayName("状态 0 正常 1 冻结")]
        public int Status { get; set; }

        /// <summary>
        /// 排序
        /// </summary>
        [DisplayName("排序")]
        public int Sort { get; set; }

        /// <summary>
        /// 系统备注
        /// </summary>
        [DisplayName("系统备注")]
        public string Note { get; set; }

    }
}
