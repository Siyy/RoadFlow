using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class UsersInfo
    {
        /// <summary>
        /// UserID
        /// </summary>
        [DisplayName("UserID")]
        public Guid UserID { get; set; }

        /// <summary>
        /// 职位
        /// </summary>
        [DisplayName("职位")]
        public string Officer { get; set; }

        /// <summary>
        /// Tel
        /// </summary>
        [DisplayName("Tel")]
        public string Tel { get; set; }

        /// <summary>
        /// Fax
        /// </summary>
        [DisplayName("Fax")]
        public string Fax { get; set; }

        /// <summary>
        /// Address
        /// </summary>
        [DisplayName("Address")]
        public string Address { get; set; }

        /// <summary>
        /// Email
        /// </summary>
        [DisplayName("Email")]
        public string Email { get; set; }

        /// <summary>
        /// QQ
        /// </summary>
        [DisplayName("QQ")]
        public string QQ { get; set; }

        /// <summary>
        /// MSN
        /// </summary>
        [DisplayName("MSN")]
        public string MSN { get; set; }

        /// <summary>
        /// Note
        /// </summary>
        [DisplayName("Note")]
        public string Note { get; set; }

    }
}
