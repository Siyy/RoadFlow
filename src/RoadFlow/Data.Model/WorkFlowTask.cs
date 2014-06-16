using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace Data.Model
{
    [Serializable]
    public class WorkFlowTask
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// 上一任务ID
        /// </summary>
        [DisplayName("上一任务ID")]
        public Guid PrevID { get; set; }

        /// <summary>
        /// 上一步骤ID
        /// </summary>
        [DisplayName("上一步骤ID")]
        public Guid PrevStepID { get; set; }

        /// <summary>
        /// FlowID
        /// </summary>
        [DisplayName("FlowID")]
        public Guid FlowID { get; set; }

        /// <summary>
        /// StepID
        /// </summary>
        [DisplayName("StepID")]
        public Guid StepID { get; set; }

        /// <summary>
        /// StepName
        /// </summary>
        [DisplayName("StepName")]
        public string StepName { get; set; }

        /// <summary>
        /// InstanceID
        /// </summary>
        [DisplayName("InstanceID")]
        public string InstanceID { get; set; }

        /// <summary>
        /// GroupID
        /// </summary>
        [DisplayName("GroupID")]
        public Guid GroupID { get; set; }

        /// <summary>
        /// 任务类型 0正常 1指派 2委托
        /// </summary>
        [DisplayName("任务类型 0正常 1指派 2委托")]
        public int Type { get; set; }

        /// <summary>
        /// 标题
        /// </summary>
        [DisplayName("标题")]
        public string Title { get; set; }

        /// <summary>
        /// 发送人
        /// </summary>
        [DisplayName("发送人")]
        public Guid SenderID { get; set; }

        /// <summary>
        /// 发送人姓名
        /// </summary>
        [DisplayName("发送人姓名")]
        public string SenderName { get; set; }

        /// <summary>
        /// 发送时间
        /// </summary>
        [DisplayName("发送时间")]
        public DateTime SenderTime { get; set; }

        /// <summary>
        /// 接收人员ID
        /// </summary>
        [DisplayName("接收人员ID")]
        public Guid ReceiveID { get; set; }

        /// <summary>
        /// 接收人员姓名
        /// </summary>
        [DisplayName("接收人员姓名")]
        public string ReceiveName { get; set; }

        /// <summary>
        /// 接收时间
        /// </summary>
        [DisplayName("接收时间")]
        public DateTime ReceiveTime { get; set; }

        /// <summary>
        /// 打开时间
        /// </summary>
        [DisplayName("打开时间")]
        public DateTime? OpenTime { get; set; }

        /// <summary>
        /// 规定完成时间
        /// </summary>
        [DisplayName("规定完成时间")]
        public DateTime? CompletedTime { get; set; }

        /// <summary>
        /// 实际完成时间
        /// </summary>
        [DisplayName("实际完成时间")]
        public DateTime? CompletedTime1 { get; set; }

        /// <summary>
        /// 意见
        /// </summary>
        [DisplayName("意见")]
        public string Comment { get; set; }

        /// <summary>
        /// 是否签章 0未签 1已签
        /// </summary>
        [DisplayName("是否签章 0未签 1已签")]
        public int? IsSign { get; set; }

        /// <summary>
        /// 状态 0 待处理 1打开 2完成 3退回 4他人已处理 5他人已退回
        /// </summary>
        [DisplayName("状态 0 待处理 1打开 2完成 3退回 4他人已处理 5他人已退回")]
        public int Status { get; set; }

        /// <summary>
        /// 其它说明
        /// </summary>
        [DisplayName("其它说明")]
        public string Note { get; set; }

        /// <summary>
        /// 序号
        /// </summary>
        [DisplayName("序号")]
        public int Sort { get; set; }

    }
}

namespace Data.Model.WorkFlowExecute
{
    /// <summary>
    /// 任务相关的枚举类型
    /// </summary>
    public class EnumType
    {
        /// <summary>
        /// 处理类型
        /// </summary>
        public enum ExecuteType
        { 
            /// <summary>
            /// 提交
            /// </summary>
            Submit,
            /// <summary>
            /// 保存
            /// </summary>
            Save,
            /// <summary>
            /// 退回
            /// </summary>
            Back,
            /// <summary>
            /// 完成
            /// </summary>
            Completed,
            /// <summary>
            /// 转交
            /// </summary>
            Redirect
        }
    }

    /// <summary>
    /// 任务处理模型
    /// </summary>
    [Serializable]
    public class Execute
    {
        public Execute()
        {
            Steps = new Dictionary<Guid, List<Users>>();
        }
        /// <summary>
        /// 流程ID
        /// </summary>
        public Guid FlowID { get; set; }
        /// <summary>
        /// 步骤ID
        /// </summary>
        public Guid StepID { get; set; }
        /// <summary>
        /// 任务ID
        /// </summary>
        public Guid TaskID { get; set; }
        /// <summary>
        /// 实例ID
        /// </summary>
        public string InstanceID { get; set; }
        /// <summary>
        /// 分组ID
        /// </summary>
        public Guid GroupID { get; set; }
        /// <summary>
        /// 标题
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// 操作类型
        /// </summary>
        public EnumType.ExecuteType ExecuteType { get; set; }
        /// <summary>
        /// 发送人员
        /// </summary>
        public Data.Model.Users Sender { get; set; }
        /// <summary>
        /// 处理的步骤和人员
        /// </summary>
        public Dictionary<Guid, List<Data.Model.Users>> Steps { get; set; }
        /// <summary>
        /// 处理意见
        /// </summary>
        public string Comment { get; set; }
        /// <summary>
        /// 是否签章
        /// </summary>
        public bool IsSign { get; set; }
        /// <summary>
        /// 备注
        /// </summary>
        public string Note { get; set; }
    }

    /// <summary>
    /// 任务处理结果
    /// </summary>
    [Serializable]
    public class Result
    {
        /// <summary>
        /// 是否成功
        /// </summary>
        public bool IsSuccess { get; set; }
        /// <summary>
        /// 提示信息
        /// </summary>
        public string Messages { get; set; }
        /// <summary>
        /// 调试信息
        /// </summary>
        public string DebugMessages { get; set; }
        /// <summary>
        /// 其它信息
        /// </summary>
        public object[] Other { get; set; }
        /// <summary>
        /// 后续任务
        /// </summary>
        public IEnumerable<Data.Model.WorkFlowTask> NextTasks { get; set; }
    }

}
