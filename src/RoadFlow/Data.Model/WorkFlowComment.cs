using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class WorkFlowComment
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// MemberID
        /// </summary>
        [DisplayName("MemberID")]
        public string MemberID { get; set; }

        /// <summary>
        /// Comment
        /// </summary>
        [DisplayName("Comment")]
        public string Comment { get; set; }

        /// <summary>
        /// 类型 0管理员添加 1用户添加
        /// </summary>
        [DisplayName("类型 0管理员添加 1用户添加")]
        public int Type { get; set; }

        /// <summary>
        /// Sort
        /// </summary>
        [DisplayName("Sort")]
        public int Sort { get; set; }

    }
}
