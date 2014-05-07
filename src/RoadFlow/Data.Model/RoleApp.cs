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
        /// ParentID
        /// </summary>
        [DisplayName("ParentID")]
        public Guid ParentID { get; set; }

        /// <summary>
        /// RoleID
        /// </summary>
        [DisplayName("RoleID")]
        public Guid RoleID { get; set; }

        /// <summary>
        /// AppID
        /// </summary>
        [DisplayName("AppID")]
        public Guid? AppID { get; set; }

        /// <summary>
        /// Title
        /// </summary>
        [DisplayName("Title")]
        public string Title { get; set; }

        /// <summary>
        /// Params
        /// </summary>
        [DisplayName("Params")]
        public string Params { get; set; }

        /// <summary>
        /// Sort
        /// </summary>
        [DisplayName("Sort")]
        public int Sort { get; set; }

    }
}
