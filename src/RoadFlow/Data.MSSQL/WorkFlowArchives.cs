using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class WorkFlowArchives : Data.Interface.IWorkFlowArchives
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public WorkFlowArchives()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowArchives实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.WorkFlowArchives model)
        {
            string sql = @"INSERT INTO WorkFlowArchives
				(ID,FlowID,StepID,FlowName,StepName,TaskID,GroupID,InstanceID,Title,Contents,Comments,WriteTime) 
				VALUES(@ID,@FlowID,@StepID,@FlowName,@StepName,@TaskID,@GroupID,@InstanceID,@Title,@Contents,@Comments,@WriteTime)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@FlowID", SqlDbType.UniqueIdentifier, -1){ Value = model.FlowID },
				new SqlParameter("@StepID", SqlDbType.UniqueIdentifier, -1){ Value = model.StepID },
				new SqlParameter("@FlowName", SqlDbType.NVarChar, 1000){ Value = model.FlowName },
				new SqlParameter("@StepName", SqlDbType.NVarChar, 1000){ Value = model.StepName },
				new SqlParameter("@TaskID", SqlDbType.UniqueIdentifier, -1){ Value = model.TaskID },
				new SqlParameter("@GroupID", SqlDbType.UniqueIdentifier, -1){ Value = model.GroupID },
				new SqlParameter("@InstanceID", SqlDbType.VarChar, 500){ Value = model.InstanceID },
				new SqlParameter("@Title", SqlDbType.NVarChar, 8000){ Value = model.Title },
				new SqlParameter("@Contents", SqlDbType.Text, -1){ Value = model.Contents },
				new SqlParameter("@Comments", SqlDbType.Text, -1){ Value = model.Comments },
				new SqlParameter("@WriteTime", SqlDbType.DateTime, 8){ Value = model.WriteTime }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowArchives实体类</param>
        public int Update(Data.Model.WorkFlowArchives model)
        {
            string sql = @"UPDATE WorkFlowArchives SET 
				FlowID=@FlowID,StepID=@StepID,FlowName=@FlowName,StepName=@StepName,TaskID=@TaskID,GroupID=@GroupID,InstanceID=@InstanceID,Title=@Title,Contents=@Contents,Comments=@Comments,WriteTime=@WriteTime
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@FlowID", SqlDbType.UniqueIdentifier, -1){ Value = model.FlowID },
				new SqlParameter("@StepID", SqlDbType.UniqueIdentifier, -1){ Value = model.StepID },
				new SqlParameter("@FlowName", SqlDbType.NVarChar, 1000){ Value = model.FlowName },
				new SqlParameter("@StepName", SqlDbType.NVarChar, 1000){ Value = model.StepName },
				new SqlParameter("@TaskID", SqlDbType.UniqueIdentifier, -1){ Value = model.TaskID },
				new SqlParameter("@GroupID", SqlDbType.UniqueIdentifier, -1){ Value = model.GroupID },
				new SqlParameter("@InstanceID", SqlDbType.VarChar, 500){ Value = model.InstanceID },
				new SqlParameter("@Title", SqlDbType.NVarChar, 8000){ Value = model.Title },
				new SqlParameter("@Contents", SqlDbType.Text, -1){ Value = model.Contents },
				new SqlParameter("@Comments", SqlDbType.Text, -1){ Value = model.Comments },
				new SqlParameter("@WriteTime", SqlDbType.DateTime, 8){ Value = model.WriteTime },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM WorkFlowArchives WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.WorkFlowArchives> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.WorkFlowArchives> List = new List<Data.Model.WorkFlowArchives>();
            Data.Model.WorkFlowArchives model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.WorkFlowArchives();
                model.ID = dataReader.GetGuid(0);
                model.FlowID = dataReader.GetGuid(1);
                model.StepID = dataReader.GetGuid(2);
                model.FlowName = dataReader.GetString(3);
                model.StepName = dataReader.GetString(4);
                model.TaskID = dataReader.GetGuid(5);
                model.GroupID = dataReader.GetGuid(6);
                model.InstanceID = dataReader.GetString(7);
                model.Title = dataReader.GetString(8);
                model.Contents = dataReader.GetString(9);
                model.Comments = dataReader.GetString(10);
                model.WriteTime = dataReader.GetDateTime(11);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowArchives> GetAll()
        {
            string sql = "SELECT * FROM WorkFlowArchives";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.WorkFlowArchives> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM WorkFlowArchives";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.WorkFlowArchives Get(Guid id)
        {
            string sql = "SELECT * FROM WorkFlowArchives WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.WorkFlowArchives> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 得到一页数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="title"></param>
        /// <param name="flowIDString"></param>
        /// <returns></returns>
        public System.Data.DataTable GetPagerData(out string pager, string query = "", string title = "", string flowIDString = "")
        {
            StringBuilder WHERE = new StringBuilder();
            List<SqlParameter> parList = new List<SqlParameter>();
            if (!title.IsNullOrEmpty())
            {
                WHERE.Append("AND CHARINDEX(@Title,Title)>0 ");
                parList.Add(new SqlParameter("@Title", SqlDbType.NVarChar) { Value = title });
            }
            if (!flowIDString.IsNullOrEmpty())
            {
                WHERE.AppendFormat("AND FlowID IN({0}) ", Utility.Tools.GetSqlInString(flowIDString));
            }
            long count;
            int size = Utility.Tools.GetPageSize();
            int number = Utility.Tools.GetPageNumber();
            string sql = dbHelper.GetPaerSql("WorkFlowArchives", "*", WHERE.ToString(), "WriteTime DESC", size, number, out count, parList.ToArray());

            pager = Utility.Tools.GetPagerHtml(count, size, number, query);
            return dbHelper.GetDataTable(sql, parList.ToArray());
        }
    }
}