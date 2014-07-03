using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Platform
{
    public class WorkFlowTask : IEqualityComparer<Data.Model.WorkFlowTask>
    {
        private WorkFlow bWorkFlow = new WorkFlow();
        private Data.Interface.IWorkFlowTask dataWorkFlowTask;
        private Data.Model.WorkFlowInstalled wfInstalled;
        private Data.Model.WorkFlowExecute.Result result;
        private List<Data.Model.WorkFlowTask> nextTasks = new List<Data.Model.WorkFlowTask>();
		public WorkFlowTask()
		{
			this.dataWorkFlowTask = Data.Factory.Platform.GetWorkFlowTaskInstance();
		}
		/// <summary>
		/// 新增
		/// </summary>
		public int Add(Data.Model.WorkFlowTask model)
		{
			return dataWorkFlowTask.Add(model);
		}
		/// <summary>
		/// 更新
		/// </summary>
		public int Update(Data.Model.WorkFlowTask model)
		{
			return dataWorkFlowTask.Update(model);
		}
		/// <summary>
		/// 查询所有记录
		/// </summary>
		public List<Data.Model.WorkFlowTask> GetAll()
		{
			return dataWorkFlowTask.GetAll();
		}
		/// <summary>
		/// 查询单条记录
		/// </summary>
		public Data.Model.WorkFlowTask Get(Guid id)
		{
			return dataWorkFlowTask.Get(id);
		}
		/// <summary>
		/// 删除
		/// </summary>
		public int Delete(Guid id)
		{
			return dataWorkFlowTask.Delete(id);
		}
		/// <summary>
		/// 查询记录条数
		/// </summary>
		public long GetCount()
		{
			return dataWorkFlowTask.GetCount();
		}

        /// <summary>
        /// 去除重复的接收人，在退回任务时去重，避免一个人收到多条任务。
        /// </summary>
        /// <param name="task1"></param>
        /// <param name="task2"></param>
        /// <returns></returns>
        public bool Equals(Data.Model.WorkFlowTask task1, Data.Model.WorkFlowTask task2)
        {
            return task1.ReceiveID == task2.ReceiveID;
        }

        public int GetHashCode(Data.Model.WorkFlowTask task)
        {
            return task.ToString().GetHashCode();
        }

        /// <summary>
        /// 更新打开时间
        /// </summary>
        /// <param name="id"></param>
        /// <param name="openTime"></param>
        /// <param name="isStatus">是否将状态更新为1</param>
        public void UpdateOpenTime(Guid id, DateTime openTime, bool isStatus = false)
        {
            dataWorkFlowTask.UpdateOpenTime(id, openTime, isStatus);
        }

        /// <summary>
        /// 得到一个流程实例的发起者
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public Guid GetFirstSnderID(Guid flowID, Guid groupID)
        {
            return dataWorkFlowTask.GetFirstSnderID(flowID, groupID);
        }

        /// <summary>
        /// 得到一个流程实例的发起者部门
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public Guid GetFirstSnderDeptID(Guid flowID, Guid groupID)
        {
            if (flowID.IsEmptyGuid() || groupID.IsEmptyGuid())
            {
                return Users.CurrentDeptID; 
            }
            var senderID = dataWorkFlowTask.GetFirstSnderID(flowID, groupID);
            var dept = new Users().GetDeptByUserID(senderID);
            return dept == null ? Guid.Empty : dept.ID;
        }


        /// <summary>
        /// 得到一个流程实例一个步骤的处理者
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public List<Guid> GetStepSnderID(Guid flowID, Guid stepID, Guid groupID)
        {
            return dataWorkFlowTask.GetStepSnderID(flowID, stepID, groupID);
        }

        /// <summary>
        /// 得到一个流程实例一个步骤的处理者字符串
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="stepID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public string GetStepSnderIDString(Guid flowID, Guid stepID, Guid groupID)
        {
            var list = GetStepSnderID(flowID, stepID, groupID);
            StringBuilder sb = new StringBuilder(list.Count * 43);
            foreach (var li in list)
            {
                sb.Append(Business.Platform.Users.PREFIX);
                sb.Append(li);
                sb.Append(",");
            }
            return sb.ToString().TrimEnd(',');
        }

        /// <summary>
        /// 得到一个流程实例前一步骤的处理者
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public List<Guid> GetPrevSnderID(Guid flowID, Guid stepID, Guid groupID)
        {
            return dataWorkFlowTask.GetPrevSnderID(flowID, stepID, groupID);
        }

        /// <summary>
        /// 得到一个流程实例前一步骤的处理者
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public String GetPrevSnderIDString(Guid flowID, Guid stepID, Guid groupID)
        {
            var list = dataWorkFlowTask.GetPrevSnderID(flowID, stepID, groupID);
            StringBuilder sb = new StringBuilder(list.Count * 43);
            foreach (var li in list)
            {
                sb.Append(Business.Platform.Users.PREFIX);
                sb.Append(li);
                sb.Append(",");
            }
            return sb.ToString().TrimEnd(',');
        }

        /// <summary>
        /// 将json字符串转换为执行实体
        /// </summary>
        /// <param name="jsonString"></param>
        /// <returns></returns>
        private Data.Model.WorkFlowExecute.Execute GetExecuteModel(string jsonString)
        {
            Data.Model.WorkFlowExecute.Execute execute = new Data.Model.WorkFlowExecute.Execute();
            Business.Platform.Organize borganize = new Organize();

            LitJson.JsonData jsondata = LitJson.JsonMapper.ToObject(jsonString);
            if (jsondata == null) return execute;

            execute.Comment = jsondata["comment"].ToString();
            string op = jsondata["type"].ToString().ToLower();
            switch (op)
            { 
                case "submit":
                    execute.ExecuteType = Data.Model.WorkFlowExecute.EnumType.ExecuteType.Submit;
                    break;
                case "save":
                    execute.ExecuteType = Data.Model.WorkFlowExecute.EnumType.ExecuteType.Save;
                    break;
                case "back":
                    execute.ExecuteType = Data.Model.WorkFlowExecute.EnumType.ExecuteType.Back;
                    break;
            }
            execute.FlowID = jsondata["flowid"].ToString().ToGuid();
            execute.GroupID = jsondata["groupid"].ToString().ToGuid();
            execute.InstanceID = jsondata["instanceid"].ToString();
            execute.IsSign = jsondata["issign"].ToString().ToInt() == 1;
            execute.StepID = jsondata["stepid"].ToString().ToGuid();
            execute.TaskID = jsondata["taskid"].ToString().ToGuid();
           
            var stepsjson = jsondata["steps"];
            Dictionary<Guid, List<Data.Model.Users>> steps = new Dictionary<Guid, List<Data.Model.Users>>();
            if (stepsjson.IsArray)
            {
                foreach (LitJson.JsonData step in stepsjson)
                {
                    var id = step["id"].ToString().ToGuid();
                    var member = step["member"].ToString();
                    if (id == Guid.Empty || member.IsNullOrEmpty())
                    {
                        continue;
                    }
                    steps.Add(id, borganize.GetAllUsers(member));
                }
            }
            execute.Steps = steps;
            return execute;
        }

        /// <summary>
        /// 处理流程
        /// </summary>
        /// <param name="jsonString"></param>
        /// <returns></returns>
        public Data.Model.WorkFlowExecute.Result Execute(string jsonString)
        {
            return Execute(GetExecuteModel(jsonString));
        }

        
        /// <summary>
        /// 处理流程
        /// </summary>
        /// <param name="executeModel">处理实体</param>
        /// <returns></returns>
        public Data.Model.WorkFlowExecute.Result Execute(Data.Model.WorkFlowExecute.Execute executeModel)
        {
            result = new Data.Model.WorkFlowExecute.Result();
            nextTasks = new List<Data.Model.WorkFlowTask>();
            if (executeModel.FlowID == Guid.Empty)
            {
                result.DebugMessages = "流程ID错误";
                result.IsSuccess = false;
                result.Messages = "执行参数错误";
                return result;
            }
            

            wfInstalled = bWorkFlow.GetWorkFlowRunModel(executeModel.FlowID);
            if (wfInstalled == null)
            {
                result.DebugMessages = "未找到流程运行时实体";
                result.IsSuccess = false;
                result.Messages = "流程运行时为空";
                return result;
            }

            switch (executeModel.ExecuteType)
            { 
                case Data.Model.WorkFlowExecute.EnumType.ExecuteType.Back:
                    executeBack(executeModel);
                    break;
                case Data.Model.WorkFlowExecute.EnumType.ExecuteType.Completed:
                    executeComplete(executeModel);
                    break;
                case Data.Model.WorkFlowExecute.EnumType.ExecuteType.Save:
                    executeSave(executeModel);
                    break;
                case Data.Model.WorkFlowExecute.EnumType.ExecuteType.Submit:
                    executeSubmit(executeModel);
                    break;
                case Data.Model.WorkFlowExecute.EnumType.ExecuteType.Redirect:
                    executeRedirect(executeModel);
                    break;
                default:
                    result.DebugMessages = "流程处理类型为空";
                    result.IsSuccess = false;
                    result.Messages = "流程处理类型为空";
                    return result;
            }

            result.NextTasks = nextTasks;
            return result;
        }

        private void executeSubmit(Data.Model.WorkFlowExecute.Execute executeModel)
        {
            using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
            {
                //如果是第一步提交并且没有实例则先创建实例
                Data.Model.WorkFlowTask currentTask = null;
                bool isFirst = executeModel.StepID == wfInstalled.FirstStepID && executeModel.TaskID == Guid.Empty && executeModel.GroupID == Guid.Empty;
                if (isFirst)
                {
                    currentTask = createFirstTask(executeModel);
                }
                else
                {
                    currentTask = Get(executeModel.TaskID);
                }
                if (currentTask == null)
                {
                    result.DebugMessages = "未能创建或找到当前任务";
                    result.IsSuccess = false;
                    result.Messages = "未能创建或找到当前任务";
                    return;
                }
                else if (currentTask.Status.In(2,3,4))
                {
                    result.DebugMessages = "当前任务已处理";
                    result.IsSuccess = false;
                    result.Messages = "当前任务已处理";
                    return;
                }

                var currentSteps = wfInstalled.Steps.Where(p => p.ID == executeModel.StepID);
                var currentStep = currentSteps.Count() > 0 ? currentSteps.First() : null;
                if (currentStep == null)
                {
                    result.DebugMessages = "未找到当前步骤";
                    result.IsSuccess = false;
                    result.Messages = "未找到当前步骤";
                    return;
                }

                int status = 0;
                switch (currentStep.Behavior.HanlderModel)
                { 
                    case 0://所有人必须处理
                        var taskList = GetTaskList(currentTask.ID);
                        if (taskList.Count > 1)
                        {
                            var noCompleted = taskList.Where(p => p.Status != 2);
                            if (noCompleted.Count() - 1 > 0)
                            {
                                status = -1;
                            }
                        }
                        Completed(currentTask.ID, executeModel.Comment, executeModel.IsSign);
                        break;
                    case 1://一人同意即可
                        var taskList1 = GetTaskList(currentTask.ID);
                        foreach (var task in taskList1)
                        {
                            if (task.ID != currentTask.ID)
                            {
                                if (task.Status.In(0, 1))
                                {
                                    Completed(task.ID, "", false, 4);
                                }
                            }
                            else
                            {
                                Completed(task.ID, executeModel.Comment, executeModel.IsSign);
                            }
                        }
                        break;
                    case 2://依据人数比例
                        var taskList2 = GetTaskList(currentTask.ID);
                        if (taskList2.Count > 1)
                        {
                            decimal percentage = currentStep.Behavior.Percentage;//比例
                            var noCompleted = taskList2.Where(p => p.Status != 2);
                            if ((((decimal)(taskList2.Count - (noCompleted.Count() - 1)) / (decimal)taskList2.Count) * 100).Round() < percentage)
                            {
                                status = -1;
                            }
                            else
                            {
                                foreach (var task in taskList2)
                                {
                                    if (task.ID != currentTask.ID && task.Status.In(0,1))
                                    {
                                        Completed(task.ID, "", false, 4);
                                    }
                                }
                            }
                        }
                        Completed(currentTask.ID, executeModel.Comment, executeModel.IsSign);
                        break;
                    case 3://独立处理
                        Completed(currentTask.ID, executeModel.Comment, executeModel.IsSign);
                        break;
                }

                //修改日期：2014-05-22
                //将此处处理类型判断改为：如果条件不满足则不创建后续任务，直到最后一个条件满足时才创建后续任务。等待中的任务 状态为：5 已不用
                if (status == -1)
                {
                    result.DebugMessages += "已发送,其他人未处理,不创建后续任务";
                    result.IsSuccess = true;
                    result.Messages += "已发送,等待他人处理!"; 
                    result.NextTasks = nextTasks;
                    scope.Complete();
                    return;
                }

                foreach (var step in executeModel.Steps)
                {
                    foreach (var user in step.Value)
                    {
                        if (HasNoCompletedTasks(executeModel.FlowID, step.Key, currentTask.GroupID, user.ID))
                        {
                            continue;
                        }

                        var nextSteps = wfInstalled.Steps.Where(p => p.ID == step.Key);
                        if (nextSteps.Count() == 0)
                        {
                            continue;
                        }

                        Data.Model.WorkFlowTask task = new Data.Model.WorkFlowTask();
                        if (nextSteps.First().WorkTime > 0)
                        {
                            task.CompletedTime = Utility.DateTimeNew.Now.AddHours((double)nextSteps.First().WorkTime);
                        }

                        task.FlowID = executeModel.FlowID;
                        task.GroupID = currentTask != null ? currentTask.GroupID : executeModel.GroupID;
                        task.ID = Guid.NewGuid();
                        task.Type = 0;
                        task.InstanceID = executeModel.InstanceID;
                        if (!executeModel.Note.IsNullOrEmpty())
                        {
                            task.Note = executeModel.Note;
                        }
                        task.PrevID = currentTask.ID;
                        task.PrevStepID = currentTask.StepID;
                        task.ReceiveID = user.ID;
                        task.ReceiveName = user.Name;
                        task.ReceiveTime = Utility.DateTimeNew.Now;
                        task.SenderID = executeModel.Sender.ID;
                        task.SenderName = executeModel.Sender.Name;
                        task.SenderTime = task.ReceiveTime;
                        task.Status = status;
                        task.StepID = step.Key;
                        task.StepName = nextSteps.First().Name;
                        task.Sort = currentTask.Sort + 1;
                        task.Title = executeModel.Title.IsNullOrEmpty() ? currentTask.Title : executeModel.Title;
                        
                        Add(task);
                        nextTasks.Add(task);
                    }
                }

                scope.Complete();

                List<string> nextStepName = new List<string>();
                foreach (var nstep in nextTasks)
                {
                    nextStepName.Add(nstep.StepName);
                }

                result.DebugMessages += string.Format("已发送到：{0}", nextStepName.Distinct().ToList().ToString(","));
                result.IsSuccess = true;
                result.Messages += string.Format("已发送到：{0}", nextStepName.Distinct().ToList().ToString(","));
                result.NextTasks = nextTasks;
            }
        }

        private void executeSave(Data.Model.WorkFlowExecute.Execute executeModel)
        {
            //如果是第一步提交并且没有实例则先创建实例
            Data.Model.WorkFlowTask currentTask = null;
            bool isFirst = executeModel.StepID == wfInstalled.FirstStepID && executeModel.TaskID == Guid.Empty && executeModel.GroupID == Guid.Empty;
            if (isFirst)
            {
                currentTask = createFirstTask(executeModel);
            }
            else
            {
                currentTask = Get(executeModel.TaskID);
            }
            if (currentTask == null)
            {
                result.DebugMessages = "未能创建或找到当前任务";
                result.IsSuccess = false;
                result.Messages = "未能创建或找到当前任务";
                return;
            }
            else
            {
                nextTasks.Add(currentTask);
                if (isFirst)
                {
                    currentTask.Title = executeModel.Title.IsNullOrEmpty() ? "未命名任务" : executeModel.Title;
                    Update(currentTask);
                }
                else
                {
                    if (!executeModel.Title.IsNullOrEmpty())
                    {
                        currentTask.Title = executeModel.Title;
                        Update(currentTask);
                    }
                }
            }

            result.DebugMessages = "保存成功";
            result.IsSuccess = true;
            result.Messages = "保存成功";
        }

        private void executeBack(Data.Model.WorkFlowExecute.Execute executeModel)
        {
            var currentTask = Get(executeModel.TaskID);
            if (currentTask == null)
            {
                result.DebugMessages = "未能找到当前任务";
                result.IsSuccess = false;
                result.Messages = "未能找到当前任务";
                return;
            }
            else if (currentTask.Status.In(2,3,4))
            {
                result.DebugMessages = "当前任务已处理";
                result.IsSuccess = false;
                result.Messages = "当前任务已处理";
                return;
            }

            var currentSteps = wfInstalled.Steps.Where(p => p.ID == currentTask.StepID);
            var currentStep = currentSteps.Count() > 0 ? currentSteps.First() : null;

            if (currentStep == null)
            {
                result.DebugMessages = "未能找到当前步骤";
                result.IsSuccess = false;
                result.Messages = "未能找到当前步骤";
                return;
            }
            if (currentTask.StepID == wfInstalled.FirstStepID)
            {
                result.DebugMessages = "当前任务是流程第一步,不能退回";
                result.IsSuccess = false;
                result.Messages = "当前任务是流程第一步,不能退回";
                return;
            }
            if (executeModel.Steps.Count == 0)
            {
                result.DebugMessages = "没有选择要退回的步骤";
                result.IsSuccess = false;
                result.Messages = "没有选择要退回的步骤";
                return;
            }
            using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
            {
                List<Data.Model.WorkFlowTask> backTasks = new List<Data.Model.WorkFlowTask>();
                int status = 0;
                switch (currentStep.Behavior.BackModel)
                {
                    case 0://不能退回
                        result.DebugMessages = "当前步骤设置为不能退回";
                        result.IsSuccess = false;
                        result.Messages = "当前步骤设置为不能退回";
                        return;
                    #region 根据策略退回
                    case 1:
                        switch (currentStep.Behavior.HanlderModel)
                        {
                            case 0://所有人必须同意,如果一人不同意则全部退回
                                var taskList1 = GetTaskList(currentTask.ID);
                                foreach (var task in taskList1)
                                {
                                    if (task.ID != currentTask.ID)
                                    {
                                        if (task.Status.In(0, 1))
                                        {
                                            Completed(task.ID, "", false, 5);
                                        }
                                    }
                                    else
                                    {
                                        Completed(task.ID, executeModel.Comment, executeModel.IsSign, 3);
                                    }
                                }
                                break;
                            case 1://一人同意即可
                                var taskList = GetTaskList(currentTask.ID);
                                if (taskList.Count > 1)
                                {
                                    var noCompleted = taskList.Where(p => p.Status != 3);
                                    if (noCompleted.Count() - 1 > 0)
                                    {
                                        status = -1;
                                    }
                                }
                                Completed(currentTask.ID, executeModel.Comment, executeModel.IsSign, 3);
                                break;
                            case 2://依据人数比例
                                var taskList2 = GetTaskList(currentTask.ID);
                                if (taskList2.Count > 1)
                                {
                                    decimal percentage = currentStep.Behavior.Percentage;//比例
                                    var noCompleted = taskList2.Where(p => p.Status != 3);
                                    if ((((decimal)(taskList2.Count - (noCompleted.Count() - 1)) / (decimal)taskList2.Count) * 100).Round() < percentage)
                                    {
                                        status = -1;
                                    }
                                    else
                                    {
                                        foreach (var task in taskList2)
                                        {
                                            if (task.ID != currentTask.ID && task.Status.In(0, 1))
                                            {
                                                Completed(task.ID, "", false, 5);
                                            }
                                        }
                                    }
                                }
                                Completed(currentTask.ID, executeModel.Comment, executeModel.IsSign, 3);
                                break;
                            case 3://独立处理
                                Completed(currentTask.ID, executeModel.Comment, executeModel.IsSign, 3);
                                break;
                        }
                        backTasks.Add(currentTask);
                        break;
                    #endregion
                }

                if (status == -1)
                {
                    result.DebugMessages += "已退回,其他人未处理";
                    result.IsSuccess = true;
                    result.Messages += "已退回,等待他人处理!";
                    result.NextTasks = nextTasks;
                    scope.Complete();
                    return;
                }

                List<Data.Model.WorkFlowTask> tasks = new List<Data.Model.WorkFlowTask>();

                foreach (var backTask in backTasks)
                {
                    if (backTask.Status.In(2, 3))//已完成的任务不能退回
                    {
                        continue;
                    }
                    if (backTask.ID == currentTask.ID)
                    {
                        Completed(backTask.ID, executeModel.Comment, executeModel.IsSign, 3);
                    }
                    else
                    {
                        Completed(backTask.ID, "", false, 3, "他人已退回");
                    }
                    tasks.AddRange(GetTaskList(executeModel.FlowID, executeModel.Steps.First().Key, executeModel.GroupID));
                }

                foreach (var task in tasks.Distinct(this))
                {
                    if (task != null)
                    {
                        Data.Model.WorkFlowTask newTask = task;
                        newTask.ID = Guid.NewGuid();
                        newTask.PrevID = currentTask.ID;
                        newTask.Note = "退回任务";
                        newTask.ReceiveTime = Utility.DateTimeNew.Now;
                        newTask.SenderID = currentTask.ReceiveID;
                        newTask.SenderName = currentTask.ReceiveName;
                        newTask.SenderTime = Utility.DateTimeNew.Now;
                        newTask.Sort = currentTask.Sort + 1;
                        newTask.Status = 0;
                        newTask.Comment = "";
                        newTask.OpenTime = null;
                        //newTask.PrevStepID = currentTask.StepID;
                        if (currentStep.WorkTime > 0)
                        {
                            newTask.CompletedTime = Utility.DateTimeNew.Now.AddHours((double)currentStep.WorkTime);
                        }
                        else
                        {
                            newTask.CompletedTime = null;
                        }
                        newTask.CompletedTime1 = null;
                        Add(newTask);
                        nextTasks.Add(newTask);
                    }
                }

                scope.Complete();
            }

            List<string> nextStepName = new List<string>();
            foreach (var nstep in nextTasks)
            {
                nextStepName.Add(nstep.StepName);
            }
            string msg = string.Format("已退回到：{0}", nextStepName.Distinct().ToList().ToString(","));
            result.DebugMessages += msg;
            result.IsSuccess = true;
            result.Messages += msg;
            result.NextTasks = nextTasks;
            return;
        }

        private void executeComplete(Data.Model.WorkFlowExecute.Execute executeModel)
        {
            if (executeModel.TaskID == Guid.Empty || executeModel.FlowID == Guid.Empty)
            {
                result.DebugMessages = "完成流程参数错误";
                result.IsSuccess = false;
                result.Messages = "完成流程参数错误";
                return;
            }
            var task = Get(executeModel.TaskID);
            if (task == null)
            {
                result.DebugMessages = "未找到当前任务";
                result.IsSuccess = false;
                result.Messages = "未找到当前任务";
                return;
            }
            Completed(task.ID, executeModel.Comment, executeModel.IsSign);

            //更新业务表标识字段的值为1
            if (wfInstalled.TitleField != null && wfInstalled.TitleField.LinkID != Guid.Empty && !wfInstalled.TitleField.Table.IsNullOrEmpty()
                && !wfInstalled.TitleField.Field.IsNullOrEmpty() && wfInstalled.DataBases.Count() > 0)
            {
                var firstDB = wfInstalled.DataBases.First();
                new DBConnection().UpdateFieldValue(
                    wfInstalled.TitleField.LinkID,
                    wfInstalled.TitleField.Table,
                    wfInstalled.TitleField.Field,
                    "1",
                   string.Format("{0}='{1}'", firstDB.PrimaryKey, task.InstanceID));
            }

            result.DebugMessages += "已完成";
            result.IsSuccess = true;
            result.Messages += "已完成";
        }

        private void executeRedirect(Data.Model.WorkFlowExecute.Execute executeModel)
        {
            Data.Model.WorkFlowTask currentTask = null;
            bool isFirst = executeModel.StepID == wfInstalled.FirstStepID && executeModel.TaskID == Guid.Empty && executeModel.GroupID == Guid.Empty;
            if (isFirst)
            {
                currentTask = createFirstTask(executeModel);
            }
            else
            {
                currentTask = Get(executeModel.TaskID);
            }
            if (currentTask == null)
            {
                result.DebugMessages = "未能创建或找到当前任务";
                result.IsSuccess = false;
                result.Messages = "未能创建或找到当前任务";
                return;
            }
            else if (currentTask.Status.In(2, 3, 4))
            {
                result.DebugMessages = "当前任务已处理";
                result.IsSuccess = false;
                result.Messages = "当前任务已处理";
                return;
            }
            else if (currentTask.Status == 5)
            {
                result.DebugMessages = "当前任务正在等待他人处理";
                result.IsSuccess = false;
                result.Messages = "当前任务正在等待他人处理";
                return;
            }
            if (executeModel.Steps.First().Value.Count == 0)
            {
                result.DebugMessages = "未设置转交人员";
                result.IsSuccess = false;
                result.Messages = "未设置转交人员";
                return;
            }
            else if (executeModel.Steps.First().Value.Count > 1)
            {
                result.DebugMessages = "当前任务只能转交给一个人员";
                result.IsSuccess = false;
                result.Messages = "当前任务只能转交给一个人员";
                return;
            }
            string receiveName = currentTask.ReceiveName;
            currentTask.ReceiveID = executeModel.Steps.First().Value.First().ID;
            currentTask.ReceiveName = executeModel.Steps.First().Value.First().Name;
            currentTask.OpenTime = null;
            currentTask.Status = 0;
            currentTask.Note = string.Format("该任务由{0}转交", receiveName);
            Update(currentTask);
            nextTasks.Add(currentTask);
            result.DebugMessages = "转交成功";
            result.IsSuccess = true;
            result.Messages = string.Concat("已转交给：", currentTask.ReceiveName);
            return;
        }

        /// <summary>
        /// 创建第一个任务
        /// </summary>
        /// <param name="executeModel"></param>
        private Data.Model.WorkFlowTask createFirstTask(Data.Model.WorkFlowExecute.Execute executeModel)
        {
            if (wfInstalled == null)
            {
                wfInstalled = bWorkFlow.GetWorkFlowRunModel(executeModel.FlowID);
            }
            
            var nextSteps = wfInstalled.Steps.Where(p => p.ID == wfInstalled.FirstStepID);
            if (nextSteps.Count() == 0)
            {
                return null;
            }
            Data.Model.WorkFlowTask task = new Data.Model.WorkFlowTask();
            if (nextSteps.First().WorkTime > 0)
            {
                task.CompletedTime = Utility.DateTimeNew.Now.AddHours((double)nextSteps.First().WorkTime);
            }
            task.FlowID = executeModel.FlowID;
            task.GroupID = Guid.NewGuid();
            task.ID = Guid.NewGuid();
            task.Type = 0;
            task.InstanceID = executeModel.InstanceID;
            if (!executeModel.Note.IsNullOrEmpty())
            {
                task.Note = executeModel.Note;
            }
            task.PrevID = Guid.Empty;
            task.PrevStepID = Guid.Empty;
            task.ReceiveID = executeModel.Sender.ID;
            task.ReceiveName = executeModel.Sender.Name;
            task.ReceiveTime = Utility.DateTimeNew.Now;
            task.SenderID = executeModel.Sender.ID;
            task.SenderName = executeModel.Sender.Name;
            task.SenderTime = task.ReceiveTime;
            task.Status = 0;
            task.StepID = wfInstalled.FirstStepID;
            task.StepName = nextSteps.First().Name;
            task.Sort = 1;
            if (!executeModel.Title.IsNullOrEmpty())
            {
                task.Title = executeModel.Title;
            }
            Add(task);
            return task;
        }

        /// <summary>
        /// 查询待办任务
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="title"></param>
        /// <param name="flowid"></param>
        /// <param name="date1"></param>
        /// <param name="date2"></param>
        /// <param name="type">0待办 1已完成</param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowTask> GetTasks(Guid userID, out string pager, string query = "", string title = "", string flowid = "", string sender = "", string date1 = "", string date2 = "", int type = 0)
        {
            return dataWorkFlowTask.GetTasks(userID, out pager, query, title, flowid, sender, date1, date2, type);
        }

        /// <summary>
        /// 得到流程实例列表
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="senderID"></param>
        /// <param name="receiveID"></param>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="title"></param>
        /// <param name="flowid"></param>
        /// <param name="date1"></param>
        /// <param name="date2"></param>
        /// <param name="isCompleted">是否完成 0:全部 1:未完成 2:已完成</param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowTask> GetInstances(Guid[] flowID, Guid[] senderID, Guid[] receiveID, out string pager, string query = "", string title = "", string flowid = "", string date1 = "", string date2 = "", int status = 0)
        {
            return dataWorkFlowTask.GetInstances(flowID, senderID, receiveID, out pager, query, title, flowid, date1, date2, status);
        }

        /// <summary>
        /// 执行自定义方法
        /// </summary>
        /// <param name="eventName"></param>
        /// <returns></returns>
        public object ExecuteFlowCustomEvent(string eventName, object eventParams, string dllName = "App_Code")
        {
            System.Reflection.Assembly assembly = System.Reflection.Assembly.Load(dllName);
            string typeName = System.IO.Path.GetFileNameWithoutExtension(eventName);
            string methodName = eventName.Substring(typeName.Length + 1);
            Type type = assembly.GetType(typeName, true);

            object obj = System.Activator.CreateInstance(type, false);
            var method = type.GetMethod(methodName);

            if (method != null)
            {
                return method.Invoke(obj, new object[] { eventParams });
            }
            else
            {
                throw new MissingMethodException(typeName, methodName);
            }
        }
        

        /// <summary>
        /// 删除流程实例
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public int DeleteInstance(Guid flowID, Guid groupID)
        {
            return dataWorkFlowTask.Delete(flowID, groupID);
        }

        /// <summary>
        /// 完成一个任务
        /// </summary>
        /// <param name="taskID"></param>
        /// <param name="comment"></param>
        /// <param name="isSign"></param>
        /// <returns></returns>
        public int Completed(Guid taskID, string comment = "", bool isSign = false, int status = 2, string note = "")
        {
            return dataWorkFlowTask.Completed(taskID, comment, isSign, status, note);
        }

        /// <summary>
        /// 得到一个流程实例一个步骤的任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowTask> GetTaskList(Guid flowID, Guid stepID, Guid groupID)
        {
            return dataWorkFlowTask.GetTaskList(flowID, stepID, groupID);
        }

        /// <summary>
        /// 得到一个实例的任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowTask> GetTaskList(Guid flowID, Guid groupID)
        {
            return dataWorkFlowTask.GetTaskList(flowID, groupID);
        }

        /// <summary>
        /// 得到和一个任务同级的任务
        /// </summary>
        /// <param name="taskID">任务ID</param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowTask> GetTaskList(Guid taskID)
        {
            return dataWorkFlowTask.GetTaskList(taskID);
        }

        /// <summary>
        /// 得到一个任务的前一任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowTask> GetPrevTaskList(Guid taskID)
        {
            return dataWorkFlowTask.GetPrevTaskList(taskID);
        }

        /// <summary>
        /// 得到一个任务的后续任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowTask> GetNextTaskList(Guid taskID)
        {
            return dataWorkFlowTask.GetNextTaskList(taskID);
        }

        /// <summary>
        /// 得到一个任务可以退回的步骤
        /// </summary>
        /// <param name="taskID">当前任务ID</param>
        /// <param name="backType">退回类型</param>
        /// <param name="stepID"></param>
        /// <returns></returns>
        public Dictionary<Guid, string> GetBackSteps(Guid taskID, int backType, Guid stepID, Data.Model.WorkFlowInstalled wfInstalled)
        {
            Dictionary<Guid, string> dict = new Dictionary<Guid, string>();
            switch (backType)
            { 
                case 0://退回前一步
                    var task = Get(taskID);
                    if (task != null)
                    {
                        dict.Add(task.PrevStepID, bWorkFlow.GetStepName(task.PrevStepID, wfInstalled));
                    }
                    break;
                case 1://退回第一步
                    dict.Add(wfInstalled.FirstStepID, bWorkFlow.GetStepName(wfInstalled.FirstStepID, wfInstalled));
                    break;
                case 2://退回某一步
                    var steps = wfInstalled.Steps.Where(p => p.ID == stepID);
                    if (steps.Count() > 0 && steps.First().Behavior.BackType == 2 && steps.First().Behavior.BackStepID != Guid.Empty)
                    {
                        dict.Add(steps.First().Behavior.BackStepID, bWorkFlow.GetStepName(steps.First().Behavior.BackStepID, wfInstalled));
                    }
                    else
                    {
                        var task0 = Get(taskID);
                        if (task0 != null)
                        {
                            var taskList = GetTaskList(task0.FlowID, task0.GroupID).Where(p => p.Status.In(2,3,4)).OrderBy(p => p.Sort);
                            foreach (var task1 in taskList)
                            {
                                if (!dict.Keys.Contains(task1.StepID) && task1.StepID != stepID)
                                {
                                    dict.Add(task1.StepID, bWorkFlow.GetStepName(task1.StepID, wfInstalled));
                                }
                            }
                        }
                    }
                    break;
            }
            return dict;
        }

        /// <summary>
        /// 更新一个任务后续任务状态
        /// </summary>
        /// <param name="taskID"></param>
        /// <param name="comment"></param>
        /// <param name="isSign"></param>
        /// <returns></returns>
        public int UpdateNextTaskStatus(Guid taskID, int status)
        {
            int i = 0;
            var taskList = GetTaskList(taskID);

            foreach (var task in taskList)
            {
                i += dataWorkFlowTask.UpdateNextTaskStatus(task.ID, status);
            }
            
            return i;
        }

        /// <summary>
        /// 查询一个流程是否有任务数据
        /// </summary>
        /// <param name="flowID"></param>
        /// <returns></returns>
        public bool HasTasks(Guid flowID)
        {
            return dataWorkFlowTask.HasTasks(flowID);
        }

        /// <summary>
        /// 查询一个用户在一个步骤是否有未完成任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <returns></returns>
        public bool HasNoCompletedTasks(Guid flowID, Guid stepID, Guid groupID, Guid userID)
        {
            return dataWorkFlowTask.HasNoCompletedTasks(flowID, stepID, groupID, userID);
        }
        /// <summary>
        /// 得到状态显示标题
        /// </summary>
        /// <param name="status"></param>
        /// <returns></returns>
        public string GetStatusTitle(int status)
        {
            string title = string.Empty;
            switch (status)
            { 
                case 0:
                    title = "待处理";
                    break;
                case 1:
                    title = "已打开";
                    break;
                case 2:
                    title = "已完成";
                    break;
                case 3:
                    title = "已退回";
                    break;
                case 4:
                    title = "他人已完成";
                    break;
                case 5:
                    title = "他人已退回";
                    break;
                default:
                    title = "其它";
                    break;
            }

            return title;
        }

        /// <summary>
        /// 得到一个流程实例一个步骤一个人员的任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="stepID"></param>
        /// <param name="groupID"></param>
        /// <param name="userID"></param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowTask> GetUserTaskList(Guid flowID, Guid stepID, Guid groupID, Guid userID)
        {
            return dataWorkFlowTask.GetUserTaskList(flowID, stepID, groupID, userID);
        }

        /// <summary>
        /// 判断一个任务是否可以收回
        /// </summary>
        /// <param name="taskID"></param>
        /// <returns></returns>
        public bool HasWithdraw(Guid taskID)
        {
            var taskList = GetNextTaskList(taskID);
            if (taskList.Count == 0) return false;
            foreach (var task in taskList)
            {
                if (task.Status.In(1,2,3,4))
                {
                    return false;
                }
            }
            return true;
        }
        /// <summary>
        /// 收回任务
        /// </summary>
        /// <param name="taskID"></param>
        /// <returns></returns>
        public bool WithdrawTask(Guid taskID)
        {
            var taskList1 = GetTaskList(taskID);
            using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
            {
                foreach (var task in taskList1)
                {
                    var taskList2 = GetNextTaskList(task.ID);
                    foreach (var task2 in taskList2)
                    {
                        if (task2.Status == 0 || task2.Status == 1 || task2.Status == 5)
                        {
                            Delete(task2.ID);
                        }
                    }

                    if (task.ID == taskID || task.Status == 4)
                    {
                        Completed(task.ID, "", false, 1, "");
                    }
                }
                scope.Complete();
                return true;
            }
        }

        /// <summary>
        /// 指派任务
        /// </summary>
        /// <param name="taskID">任务ID</param>
        /// <param name="user">要指派的人员</param>
        /// <returns></returns>
        public string DesignateTask(Guid taskID, Data.Model.Users user)
        {
            var task = Get(taskID);
            if (task == null)
            {
                return "未找到任务";
            }
            else if (task.Status.In(2, 3, 4))
            {
                return "该任务已处理";
            }
            string receiveName = task.ReceiveName;
            task.ReceiveID = user.ID;
            task.ReceiveName = user.Name;
            task.OpenTime = null;
            task.Status = 0;
            task.Note = string.Format("该任务由{0}指派", receiveName);
            Update(task);

            return "指派成功";
        }
        /// <summary>
        /// 管理员强制退回任务
        /// </summary>
        /// <param name="taskID"></param>
        /// <returns></returns>
        public string BackTask(Guid taskID)
        {
            var task = Get(taskID);
            if (task == null) 
            {
                return "未找到任务";
            }
            else if (task.Status.In(2, 3, 4))
            {
                return "该任务已处理";
            }
            if(wfInstalled==null) 
            {
                wfInstalled = bWorkFlow.GetWorkFlowRunModel(task.FlowID);
            }
            Data.Model.WorkFlowExecute.Execute executeModel = new Data.Model.WorkFlowExecute.Execute();
            executeModel.ExecuteType = Data.Model.WorkFlowExecute.EnumType.ExecuteType.Back;
            executeModel.FlowID = task.FlowID;
            executeModel.GroupID = task.GroupID;
            executeModel.InstanceID = task.InstanceID;
            executeModel.Note = "管理员退回";
            executeModel.Sender = new Users().Get(task.ReceiveID);
            executeModel.StepID = task.StepID;
            executeModel.TaskID = task.ID;
            executeModel.Title = task.Title;
            var steps=wfInstalled.Steps.Where(p=>p.ID==task.StepID);
            if(steps.Count()==0) 
            {
                return "未找到步骤";
            }
            else if (steps.First().Behavior.BackType == 2 && steps.First().Behavior.BackStepID == Guid.Empty)
            {
                return "未设置退回步骤";
            }
            Dictionary<Guid, List<Data.Model.Users>> execSteps = new Dictionary<Guid, List<Data.Model.Users>>();
            var backsteps = GetBackSteps(taskID, steps.First().Behavior.BackType, task.StepID, wfInstalled);
            foreach (var back in backsteps)
            {
                execSteps.Add(back.Key, new List<Data.Model.Users>());
            }
            executeModel.Steps = execSteps;
            var result = Execute(executeModel);
            return result.Messages;
        }

        /// <summary>
        /// 排序流程任务列表
        /// </summary>
        /// <param name="tasks"></param>
        public List<Data.Model.WorkFlowTask> Sort(List<Data.Model.WorkFlowTask> tasks)
        {
            return tasks.OrderBy(p => p.Sort).ToList();
        }
       
        /// <summary>
        /// 得到一个任务的状态
        /// </summary>
        /// <param name="taskID"></param>
        /// <returns></returns>
        public int GetTaskStatus(Guid taskID)
        {
            return dataWorkFlowTask.GetTaskStatus(taskID);
        }

        /// <summary>
        /// 判断一个任务是否可以处理
        /// </summary>
        /// <param name="taskID"></param>
        /// <returns></returns>
        public bool IsExecute(Guid taskID)
        {
            return GetTaskStatus(taskID) <= 1;
        }

        /// <summary>
        /// 判断sql流转条件是否满足
        /// </summary>
        /// <param name="linkID"></param>
        /// <param name="table"></param>
        /// <param name="tablepk"></param>
        /// <param name="instabceID">实例ID</param>
        /// <param name="where"></param>
        /// <returns></returns>
        public bool TestLineSql(Guid linkID, string table, string tablepk, string instabceID, string where)
        {
            if (instabceID.IsNullOrEmpty())
            {
                return false;
            }
            DBConnection dbconn = new DBConnection();
            var conn = dbconn.Get(linkID);
            if (conn == null)
            {
                return false;
            }
            string sql = "SELECT * FROM " + table + " WHERE " + tablepk + "='" + instabceID + "' AND " + where;
            if (!dbconn.TestSql(conn, sql))
            {
                return false;
            }
            System.Data.DataTable dt = dbconn.GetDataTable(conn, sql);
            return dt.Rows.Count > 0;
        }
    }
}

