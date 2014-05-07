using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class UsersRelation
    {
        /// <summary>
        /// UserID
        /// </summary>
        [DisplayName("UserID")]
        public Guid UserID { get; set; }

        /// <summary>
        /// OrganizeID
        /// </summary>
        [DisplayName("OrganizeID")]
        public Guid OrganizeID { get; set; }

        /// <summary>
        /// IsMain
        /// </summary>
        [DisplayName("IsMain")]
        public int IsMain { get; set; }

        /// <summary>
        /// Sort
        /// </summary>
        [DisplayName("Sort")]
        public int Sort { get; set; }

    }
}
