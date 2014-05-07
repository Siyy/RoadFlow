using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Data.Model
{
    /// <summary>
    /// 调用流程事件时的参数实体
    /// </summary>
    [Serializable]
    public struct WorkFlowCustomEventParams
    {

        public Guid FlowID { get; set; }

        public Guid StepID { get; set; }

        public Guid GroupID { get; set; }

        public Guid TaskID { get; set; }

        public string InstanceID { get; set; }
    }
}
