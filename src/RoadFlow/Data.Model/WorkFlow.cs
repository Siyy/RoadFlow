using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class WorkFlow
    {
        /// <summary>
        /// ID
        /// </summary>
        [DisplayName("ID")]
        public Guid ID { get; set; }

        /// <summary>
        /// 流程名称
        /// </summary>
        [DisplayName("流程名称")]
        public string Name { get; set; }

        /// <summary>
        /// 流程分类
        /// </summary>
        [DisplayName("流程分类")]
        public Guid Type { get; set; }

        /// <summary>
        /// 管理人员
        /// </summary>
        [DisplayName("管理人员")]
        public string Manager { get; set; }

        /// <summary>
        /// 实例管理人员
        /// </summary>
        [DisplayName("实例管理人员")]
        public string InstanceManager { get; set; }

        /// <summary>
        /// 创建日期
        /// </summary>
        [DisplayName("创建日期")]
        public DateTime CreateDate { get; set; }

        /// <summary>
        /// 创建人
        /// </summary>
        [DisplayName("创建人")]
        public Guid CreateUserID { get; set; }

        /// <summary>
        /// 设计时
        /// </summary>
        [DisplayName("设计时")]
        public string DesignJSON { get; set; }

        /// <summary>
        /// 安装日期
        /// </summary>
        [DisplayName("安装日期")]
        public DateTime? InstallDate { get; set; }

        /// <summary>
        /// 安装人员
        /// </summary>
        [DisplayName("安装人员")]
        public Guid? InstallUserID { get; set; }

        /// <summary>
        /// 运行时
        /// </summary>
        [DisplayName("运行时")]
        public string RunJSON { get; set; }

        /// <summary>
        /// 状态 1:设计中 2:已安装 3:已卸载 4:已删除
        /// </summary>
        [DisplayName("状态 1:设计中 2:已安装 3:已卸载 4:已删除")]
        public int Status { get; set; }

    }
}
