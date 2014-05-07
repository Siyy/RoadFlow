using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class Role
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
        /// 使用对象
        /// </summary>
        [DisplayName("使用对象")]
        public string UseMember { get; set; }

        /// <summary>
        /// Note
        /// </summary>
        [DisplayName("Note")]
        public string Note { get; set; }

    }
}
