using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class WorkFlowDelegation
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// 委托人
        /// </summary>
        [DisplayName("委托人")]
        public Guid UserID { get; set; }

        /// <summary>
        /// 开始时间
        /// </summary>
        [DisplayName("开始时间")]
        public DateTime StartTime { get; set; }

        /// <summary>
        /// 结束时间
        /// </summary>
        [DisplayName("结束时间")]
        public DateTime EndTime { get; set; }

        /// <summary>
        /// 委托流程ID,为空表示所有流程
        /// </summary>
        [DisplayName("委托流程ID,为空表示所有流程")]
        public Guid? FlowID { get; set; }

        /// <summary>
        /// 被委托人
        /// </summary>
        [DisplayName("被委托人")]
        public Guid ToUserID { get; set; }

        /// <summary>
        /// 设置时间
        /// </summary>
        [DisplayName("设置时间")]
        public DateTime WriteTime { get; set; }

        /// <summary>
        /// 备注说明
        /// </summary>
        [DisplayName("备注说明")]
        public string Note { get; set; }

    }
}
