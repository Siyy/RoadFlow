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
        /// ParentID
        /// </summary>
        [DisplayName("ParentID")]
        public Guid ParentID { get; set; }

        /// <summary>
        /// Title
        /// </summary>
        [DisplayName("Title")]
        public string Title { get; set; }

        /// <summary>
        /// Code
        /// </summary>
        [DisplayName("Code")]
        public string Code { get; set; }

        /// <summary>
        /// Value
        /// </summary>
        [DisplayName("Value")]
        public string Value { get; set; }

        /// <summary>
        /// Note
        /// </summary>
        [DisplayName("Note")]
        public string Note { get; set; }

        /// <summary>
        /// Other
        /// </summary>
        [DisplayName("Other")]
        public string Other { get; set; }

        /// <summary>
        /// Sort
        /// </summary>
        [DisplayName("Sort")]
        public int Sort { get; set; }

        /// <summary>
        /// 是否使用缓存
        /// </summary>
        [DisplayName("是否使用缓存")]
        public bool UseCache { get; set; }

    }
}
