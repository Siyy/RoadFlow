using System;
using System.Collections.Generic;

namespace Data.Interface
{
    public interface IWorkFlowTask
    {
        /// <summary>
        /// 新增
        /// </summary>
        int Add(Data.Model.WorkFlowTask model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(Data.Model.WorkFlowTask model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<Data.Model.WorkFlowTask> GetAll();

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.WorkFlowTask Get(Guid id);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 删除一个实例
        /// </summary>
        int Delete(Guid flowID, Guid groupID);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();

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
        List<Data.Model.WorkFlowTask> GetTasks(Guid userID, out string pager, string query = "", string title = "", string flowid = "", string sender = "", string date1 = "", string date2 = "", int type = 0);

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
        /// <param name="isCompleted">是否完成</param>
        /// <returns></returns>
        List<Data.Model.WorkFlowTask> GetInstances(Guid[] flowID, Guid[] senderID, Guid[] receiveID, out string pager, string query = "", string title = "", string flowid = "", string date1 = "", string date2 = "", bool isCompleted = false);

        /// <summary>
        /// 更新打开时间
        /// </summary>
        /// <param name="id"></param>
        /// <param name="openTime"></param>
        /// <param name="isStatus">是否将状态更新为1</param>
        void UpdateOpenTime(Guid id, DateTime openTime, bool isStatus = false);

        /// <summary>
        /// 得到一个流程实例的发起者
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        Guid GetFirstSnderID(Guid flowID, Guid groupID);

        /// <summary>
        /// 得到一个流程实例一个步骤的处理者
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        List<Guid> GetStepSnderID(Guid flowID, Guid stepID, Guid groupID);

        /// <summary>
        /// 得到一个流程实例前一步骤的处理者
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        List<Guid> GetPrevSnderID(Guid flowID, Guid stepID, Guid groupID);

        /// <summary>
        /// 完成一个任务
        /// </summary>
        /// <param name="taskID"></param>
        /// <param name="comment"></param>
        /// <param name="isSign"></param>
        /// <returns></returns>
        int Completed(Guid taskID, string comment = "", bool isSign = false, int status = 2, string note = "");

        /// <summary>
        /// 得到一个流程实例一个步骤的任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        List<Model.WorkFlowTask> GetTaskList(Guid flowID, Guid stepID, Guid groupID);

        /// <summary>
        /// 得到一个实例的任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        List<Data.Model.WorkFlowTask> GetTaskList(Guid flowID, Guid groupID);

        /// <summary>
        /// 得到和一个任务同级的任务
        /// </summary>
        /// <param name="taskID">任务ID</param>
        /// <returns></returns>
        List<Data.Model.WorkFlowTask> GetTaskList(Guid taskID);

        /// <summary>
        /// 得到一个任务的前一任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        List<Model.WorkFlowTask> GetPrevTaskList(Guid taskID);

        /// <summary>
        /// 得到一个任务的后续任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="groupID"></param>
        /// <returns></returns>
        List<Model.WorkFlowTask> GetNextTaskList(Guid taskID);

        /// <summary>
        /// 得到一个流程实例一个步骤一个人员的任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <param name="stepID"></param>
        /// <param name="groupID"></param>
        /// <param name="userID"></param>
        /// <returns></returns>
        List<Model.WorkFlowTask> GetUserTaskList(Guid flowID, Guid stepID, Guid groupID, Guid userID);

        /// <summary>
        /// 更新一个任务后后续任务状态
        /// </summary>
        /// <param name="taskID"></param>
        /// <param name="comment"></param>
        /// <param name="isSign"></param>
        /// <returns></returns>
        int UpdateNextTaskStatus(Guid taskID, int status);

        /// <summary>
        /// 查询一个流程是否有任务数据
        /// </summary>
        /// <param name="flowID"></param>
        /// <returns></returns>
        bool HasTasks(Guid flowID);

        /// <summary>
        /// 查询一个用户在一个步骤是否有未完成任务
        /// </summary>
        /// <param name="flowID"></param>
        /// <returns></returns>
        bool HasNoCompletedTasks(Guid flowID, Guid stepID, Guid groupID, Guid userID);

        /// <summary>
        /// 得到一个任务的状态
        /// </summary>
        /// <param name="taskID"></param>
        /// <returns></returns>
        int GetTaskStatus(Guid taskID);
    }
}
