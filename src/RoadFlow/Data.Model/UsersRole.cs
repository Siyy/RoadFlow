using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class UsersRole
    {
        /// <summary>
        /// MemberID
        /// </summary>
        [DisplayName("MemberID")]
        public Guid MemberID { get; set; }

        /// <summary>
        /// RoleID
        /// </summary>
        [DisplayName("RoleID")]
        public Guid RoleID { get; set; }

        /// <summary>
        /// 是否为默认角色
        /// </summary>
        [DisplayName("是否为默认角色")]
        public bool IsDefault { get; set; }

    }
}
