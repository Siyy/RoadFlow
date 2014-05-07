using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class WorkGroup
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// 工作组名称
        /// </summary>
        [DisplayName("工作组名称")]
        public string Name { get; set; }

        /// <summary>
        /// 工作组成员
        /// </summary>
        [DisplayName("工作组成员")]
        public string Members { get; set; }

        /// <summary>
        /// Note
        /// </summary>
        [DisplayName("Note")]
        public string Note { get; set; }

    }
}
