using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class Log
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// Title
        /// </summary>
        [DisplayName("Title")]
        public string Title { get; set; }

        /// <summary>
        /// Type
        /// </summary>
        [DisplayName("Type")]
        public string Type { get; set; }

        /// <summary>
        /// WriteTime
        /// </summary>
        [DisplayName("WriteTime")]
        public DateTime WriteTime { get; set; }

        /// <summary>
        /// UserID
        /// </summary>
        [DisplayName("UserID")]
        public Guid? UserID { get; set; }

        /// <summary>
        /// UserName
        /// </summary>
        [DisplayName("UserName")]
        public string UserName { get; set; }

        /// <summary>
        /// IPAddress
        /// </summary>
        [DisplayName("IPAddress")]
        public string IPAddress { get; set; }

        /// <summary>
        /// 发生地址
        /// </summary>
        [DisplayName("发生地址")]
        public string URL { get; set; }

        /// <summary>
        /// Contents
        /// </summary>
        [DisplayName("Contents")]
        public string Contents { get; set; }

        /// <summary>
        /// Others
        /// </summary>
        [DisplayName("Others")]
        public string Others { get; set; }

    }
}
