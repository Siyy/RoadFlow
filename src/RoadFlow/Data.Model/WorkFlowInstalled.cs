using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Data.Model
{
    [Serializable]
    public class WorkFlowInstalled
    {

        /// <summary>
        /// 流程ID
        /// </summary>
        public Guid ID { get; set; }

        /// <summary>
        /// 流程名称
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 流程类型
        /// </summary>
        public string Type { get; set; }
        
        /// <summary>
        /// 流程管理者
        /// </summary>
        public string Manager { get; set; }

        /// <summary>
        /// 实例管理者
        /// </summary>
        public string InstanceManager { get; set; }

        /// <summary>
        /// 第一步ID
        /// </summary>
        public Guid FirstStepID { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateTime { get; set; }

        /// <summary>
        /// 创建人
        /// </summary>
        public string CreateUser { get; set; }

        /// <summary>
        /// 设计时
        /// </summary>
        public string DesignJSON { get; set; }

        /// <summary>
        /// 安装日期
        /// </summary>
        public DateTime InstallTime { get; set; }

        /// <summary>
        /// 安装人
        /// </summary>
        public string InstallUser { get; set; }

        /// <summary>
        /// 运行时JSON
        /// </summary>
        public string RunJSON { get; set; }

        /// <summary>
        /// 状态 1:设计中 2:已安装 3:已卸载 4:已删除
        /// </summary>
        public int Status { get; set; }

        /// <summary>
        /// 是否删除已完成 0不删除 1要删除
        /// </summary>
        public int RemoveCompleted { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string Note { get; set; }

        /// <summary>
        /// 是否调试模式 0关闭 1开启(有调试窗口) 2开启(无调试窗口)
        /// </summary>
        public int Debug { get; set; }

        /// <summary>
        /// 调试人员
        /// </summary>
        public List<Data.Model.Users> DebugUsers { get; set; }

        /// <summary>
        /// 数据库表以及主键信息
        /// </summary>
        public IEnumerable<WorkFlowInstalledSub.DataBases> DataBases { get; set; }

        /// <summary>
        /// 数据库表标题字段
        /// </summary>
        public WorkFlowInstalledSub.TitleField TitleField { get; set; }

        /// <summary>
        /// 流程步骤
        /// </summary>
        public IEnumerable<WorkFlowInstalledSub.Step> Steps { get; set; }

        /// <summary>
        /// 流程连线
        /// </summary>
        public IEnumerable<WorkFlowInstalledSub.Line> Lines { get; set; }

    }
}

namespace Data.Model.WorkFlowInstalledSub
{
    /// <summary>
    /// 数据库连接结构体
    /// </summary>
    [Serializable]
    public class DataBases
    {
        /// <summary>
        /// 连接ID
        /// </summary>
        public Guid LinkID { get; set; }
        /// <summary>
        /// 连接名称
        /// </summary>
        public string LinkName { get; set; }
        /// <summary>
        /// 连接表
        /// </summary>
        public string Table { get; set; }
        /// <summary>
        /// 表主键
        /// </summary>
        public string PrimaryKey { get; set; }
    }

    /// <summary>
    /// 标题字段结构体
    /// </summary>
    [Serializable]
    public class TitleField
    {
        /// <summary>
        /// 连接ID
        /// </summary>
        public Guid LinkID { get; set; }
        /// <summary>
        /// 连接名称
        /// </summary>
        public string LinkName { get; set; }
        /// <summary>
        /// 连接表
        /// </summary>
        public string Table { get; set; }
        /// <summary>
        /// 字段名称
        /// </summary>
        public string Field { get; set; }
    }

    /// <summary>
    /// 步骤实体类
    /// </summary>
    [Serializable]
    public class Step
    {
        /// <summary>
        /// 步骤ID
        /// </summary>
        public Guid ID { get; set; }
        /// <summary>
        /// 步骤名称
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 意见显示 0不显示 1显示
        /// </summary>
        public int OpinionDisplay { get; set; }
        /// <summary>
        /// 超期提示 0不提示 1要提示
        /// </summary>
        public int ExpiredPrompt { get; set; }
        /// <summary>
        /// 审签类型 0无签批意见栏 1有签批意见(无须签章) 2有签批意见(须签章)
        /// </summary>
        public int SignatureType { get; set; }
        /// <summary>
        /// 工时(小时)
        /// </summary>
        public decimal WorkTime { get; set; }
        /// <summary>
        /// 限额时间(小时)
        /// </summary>
        public decimal LimitTime { get; set; }
        /// <summary>
        /// 额外时间(小时)
        /// </summary>
        public decimal OtherTime { get; set; }
        /// <summary>
        /// 是否归档 0不归档 1要归档
        /// </summary>
        public int Archives { get; set; }
        /// <summary>
        /// 归档参数
        /// </summary>
        public string ArchivesParams { get; set; }
        /// <summary>
        /// 步骤备注说明
        /// </summary>
        public string Note { get; set; }
        /// <summary>
        /// 步骤行为相关参数
        /// </summary>
        public WorkFlowInstalledSub.StepSet.Behavior Behavior { get; set; }

        /// <summary>
        /// 流程表单
        /// </summary>
        public IEnumerable<WorkFlowInstalledSub.StepSet.Form> Forms { get; set; }

        /// <summary>
        /// 流程按钮
        /// </summary>
        public IEnumerable<WorkFlowInstalledSub.StepSet.Button> Buttons { get; set; }

        /// <summary>
        /// 字段状态
        /// </summary>
        public IEnumerable<WorkFlowInstalledSub.StepSet.FieldStatus> FieldStatus { get; set; }

        /// <summary>
        /// 流程事件
        /// </summary>
        public WorkFlowInstalledSub.StepSet.Event Event { get; set; }

        /// <summary>
        /// 设计时x坐标(用于排序)
        /// </summary>
        public decimal Position_x { get; set; }

        /// <summary>
        /// 设计时y坐标(用于排序)
        /// </summary>
        public decimal Position_y { get; set; }
    }

    /// <summary>
    /// 流程连线实体
    /// </summary>
    public class Line
    {
        /// <summary>
        /// 连线ID
        /// </summary>
        public Guid ID { get; set; }
        /// <summary>
        /// 连线源步骤ID
        /// </summary>
        public Guid FromID { get; set; }
        /// <summary>
        /// 连线目标ID
        /// </summary>
        public Guid ToID { get; set; }
        /// <summary>
        /// 连线流转条件判断方法
        /// </summary>
        public string CustomMethod { get; set; }
        /// <summary>
        /// 连线提交条件sql条件
        /// </summary>
        public string SqlWhere { get; set; }
        /// <summary>
        /// 条件不满足时的提示信息
        /// </summary>
        public string NoAccordMsg { get; set; }
    }
}

namespace Data.Model.WorkFlowInstalledSub.StepSet
{
    /// <summary>
    /// 步骤行为实体
    /// </summary>
    [Serializable]
    public class Behavior
    {
        /// <summary>
        /// 流转类型 0系统控制 1单选一个分支流转 2多选几个分支流转
        /// </summary>
        public int FlowType { get; set; }
        /// <summary>
        /// 运行时选择 0不允许 1允许
        /// </summary>
        public int RunSelect { get; set; }
        /// <summary>
        /// 处理者类型 0所有成员 1部门 2岗位 3工作组 4人员 5发起者 6前一步骤处理者 7某一步骤处理者 8字段值
        /// </summary>
        public int HandlerType { get; set; }
        /// <summary>
        /// 选择范围
        /// </summary>
        public string SelectRange { get; set; }
        /// <summary>
        /// 当处理者类型为 7某一步骤处理者 时的处理者步骤
        /// </summary>
        public Guid HandlerStepID { get; set; }
        /// <summary>
        /// 当处理者类型为 8字段值 时的字段
        /// </summary>
        public string ValueField { get; set; }
        /// <summary>
        /// 默认处理者
        /// </summary>
        public string DefaultHandler { get; set; }
        /// <summary>
        /// 退回策略 0不能退回 1单个退回 2全部退回
        /// </summary>
        public int BackModel { get; set; }
        /// <summary>
        /// 处理策略 0所有人必须处理 1一人同意即可 2依据人数比例 3独立处理
        /// </summary>
        public int HanlderModel { get; set; }
        /// <summary>
        /// 退回类型 0退回前一步 1退回第一步 2退回某一步
        /// </summary>
        public int BackType { get; set; }
        /// <summary>
        /// 策略百分比
        /// </summary>
        public decimal Percentage { get; set; }
        /// <summary>
        /// 退回步骤ID 当退回类型为 2退回某一步 时
        /// </summary>
        public Guid BackStepID { get; set; }


    }

    /// <summary>
    /// 表单实体
    /// </summary>
    [Serializable]
    public class Form
    {
        /// <summary>
        /// 表单ID
        /// </summary>
        public Guid ID { get; set; }
        /// <summary>
        /// 表单名称
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 排序
        /// </summary>
        public int Sort { get; set; }
    }

    /// <summary>
    /// 流程按钮
    /// </summary>
    [Serializable]
    public class Button
    {
        /// <summary>
        /// 按钮ID(为guid则是按钮库中的按钮，否则为其它特定功能按钮)
        /// </summary>
        public string ID { get; set; }
        /// <summary>
        /// 排序
        /// </summary>
        public int Sort { get; set; }
    }

    /// <summary>
    /// 字段状态
    /// </summary>
    [Serializable]
    public class FieldStatus
    {
        /// <summary>
        /// 字段 
        /// </summary>
        public string Field { get; set; }
        /// <summary>
        /// 状态 0编辑 1只读 2隐藏
        /// </summary>
        public int Status1 { get; set; }
        /// <summary>
        /// 数据检查 0不检查 1允许为空,非空时检查 2不允许为空,并检查
        /// </summary>
        public int Check { get; set; }
    }

    /// <summary>
    /// 相关事件
    /// </summary>
    [Serializable]
    public class Event
    {
        /// <summary>
        /// 步骤提交前事件
        /// </summary>
        public string SubmitBefore { get; set; }

        /// <summary>
        /// 步骤提交后事件
        /// </summary>
        public string SubmitAfter { get; set; }

        /// <summary>
        /// 步骤退回前事件
        /// </summary>
        public string BackBefore { get; set; }

        /// <summary>
        /// 步骤退回后事件
        /// </summary>
        public string BackAfter { get; set; }
    }
}
