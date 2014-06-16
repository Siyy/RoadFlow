using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Data.Model
{
    [Serializable]
    public class Organize
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
        /// Number
        /// </summary>
        [DisplayName("Number")]
        public string Number { get; set; }

        /// <summary>
        /// 类型:1 单位 2 部门 3 岗位
        /// </summary>
        [DisplayName("类型:1 单位 2 部门 3 岗位")]
        public int Type { get; set; }

        /// <summary>
        /// 状态  0 正常 1 冻结
        /// </summary>
        [DisplayName("状态  0 正常 1 冻结")]
        public int Status { get; set; }

        /// <summary>
        /// 父ID
        /// </summary>
        [DisplayName("父ID")]
        public Guid ParentID { get; set; }

        /// <summary>
        /// 排序
        /// </summary>
        [DisplayName("排序")]
        public int Sort { get; set; }

        /// <summary>
        /// 深度
        /// </summary>
        [DisplayName("深度")]
        public int Depth { get; set; }

        /// <summary>
        /// 下级个数
        /// </summary>
        [DisplayName("下级个数")]
        public int ChildsLength { get; set; }

        /// <summary>
        /// 分管领导
        /// </summary>
        [DisplayName("ChargeLeader")]
        public string ChargeLeader { get; set; }

        /// <summary>
        /// 部门或岗位主管
        /// </summary>
        [DisplayName("Leader")]
        public string Leader { get; set; }

        /// <summary>
        /// Note
        /// </summary>
        [DisplayName("Note")]
        public string Note { get; set; }

    }
}
