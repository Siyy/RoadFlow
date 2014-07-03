using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class WorkFlowDelegation : Data.Interface.IWorkFlowDelegation
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public WorkFlowDelegation()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowDelegation实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.WorkFlowDelegation model)
        {
            string sql = @"INSERT INTO WorkFlowDelegation
				(ID,UserID,StartTime,EndTime,FlowID,ToUserID,WriteTime,Note) 
				VALUES(@ID,@UserID,@StartTime,@EndTime,@FlowID,@ToUserID,@WriteTime,@Note)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1){ Value = model.UserID },
				new SqlParameter("@StartTime", SqlDbType.DateTime, 8){ Value = model.StartTime },
				new SqlParameter("@EndTime", SqlDbType.DateTime, 8){ Value = model.EndTime },
				model.FlowID == null ? new SqlParameter("@FlowID", SqlDbType.UniqueIdentifier, -1) { Value = DBNull.Value } : new SqlParameter("@FlowID", SqlDbType.UniqueIdentifier, -1) { Value = model.FlowID },
				new SqlParameter("@ToUserID", SqlDbType.UniqueIdentifier, -1){ Value = model.ToUserID },
				new SqlParameter("@WriteTime", SqlDbType.DateTime, 8){ Value = model.WriteTime },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.NVarChar, 8000) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.NVarChar, 8000) { Value = model.Note }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowDelegation实体类</param>
        public int Update(Data.Model.WorkFlowDelegation model)
        {
            string sql = @"UPDATE WorkFlowDelegation SET 
				UserID=@UserID,StartTime=@StartTime,EndTime=@EndTime,FlowID=@FlowID,ToUserID=@ToUserID,WriteTime=@WriteTime,Note=@Note
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1){ Value = model.UserID },
				new SqlParameter("@StartTime", SqlDbType.DateTime, 8){ Value = model.StartTime },
				new SqlParameter("@EndTime", SqlDbType.DateTime, 8){ Value = model.EndTime },
				model.FlowID == null ? new SqlParameter("@FlowID", SqlDbType.UniqueIdentifier, -1) { Value = DBNull.Value } : new SqlParameter("@FlowID", SqlDbType.UniqueIdentifier, -1) { Value = model.FlowID },
				new SqlParameter("@ToUserID", SqlDbType.UniqueIdentifier, -1){ Value = model.ToUserID },
				new SqlParameter("@WriteTime", SqlDbType.DateTime, 8){ Value = model.WriteTime },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.NVarChar, 8000) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.NVarChar, 8000) { Value = model.Note },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM WorkFlowDelegation WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.WorkFlowDelegation> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.WorkFlowDelegation> List = new List<Data.Model.WorkFlowDelegation>();
            Data.Model.WorkFlowDelegation model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.WorkFlowDelegation();
                model.ID = dataReader.GetGuid(0);
                model.UserID = dataReader.GetGuid(1);
                model.StartTime = dataReader.GetDateTime(2);
                model.EndTime = dataReader.GetDateTime(3);
                if (!dataReader.IsDBNull(4))
                    model.FlowID = dataReader.GetGuid(4);
                model.ToUserID = dataReader.GetGuid(5);
                model.WriteTime = dataReader.GetDateTime(6);
                if (!dataReader.IsDBNull(7))
                    model.Note = dataReader.GetString(7);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowDelegation> GetAll()
        {
            string sql = "SELECT * FROM WorkFlowDelegation";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.WorkFlowDelegation> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM WorkFlowDelegation";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.WorkFlowDelegation Get(Guid id)
        {
            string sql = "SELECT * FROM WorkFlowDelegation WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.WorkFlowDelegation> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 查询一个用户所有记录
        /// </summary>
        public List<Data.Model.WorkFlowDelegation> GetByUserID(Guid userID)
        {
            string sql = "SELECT * FROM WorkFlowDelegation WHERE UserID=@UserID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier){ Value = userID }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.WorkFlowDelegation> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 得到一页数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="userID"></param>
        /// <param name="startTime"></param>
        /// <param name="endTime"></param>
        /// <returns></returns>
        public List<Data.Model.WorkFlowDelegation> GetPagerData(out string pager, string query = "", string userID="", string startTime = "", string endTime = "")
        {
            StringBuilder WHERE = new StringBuilder();
            List<SqlParameter> parList = new List<SqlParameter>();

            if (userID.IsGuid())
            {
                WHERE.Append("AND UserID>=@UserID ");
                parList.Add(new SqlParameter("@UserID", SqlDbType.UniqueIdentifier) { Value = userID.ToGuid() });
            }
            if (startTime.IsDateTime())
            {
                WHERE.Append("AND StartTime>=@StartTime ");
                parList.Add(new SqlParameter("@StartTime", SqlDbType.DateTime) { Value = startTime.ToDateTime().ToString("yyyy-MM-dd").ToDateTime() });
            }
            if (endTime.IsDateTime())
            {
                WHERE.Append("AND EndTime>=@EndTime ");
                parList.Add(new SqlParameter("@EndTime", SqlDbType.DateTime) { Value = endTime.ToDateTime().AddDays(1).ToString("yyyy-MM-dd").ToDateTime() });
            }
            long count;
            int pageSize=Utility.Tools.GetPageSize();
            int pageNumber=Utility.Tools.GetPageNumber();
            string sql = dbHelper.GetPaerSql("WorkFlowDelegation", "*", WHERE.ToString(), "WriteTime Desc", pageSize, pageNumber, out count, parList.ToArray());

            pager = Utility.Tools.GetPagerHtml(count, pageSize, pageNumber, query);
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parList.ToArray());
            List<Data.Model.WorkFlowDelegation> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 得到未过期的委托
        /// </summary>
        public List<Data.Model.WorkFlowDelegation> GetNoExpiredList()
        {
            string sql = "SELECT * FROM WorkFlowDelegation WHERE EndTime>=@EndTime";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@EndTime", SqlDbType.DateTime){ Value = Utility.DateTimeNew.Now }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.WorkFlowDelegation> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
    }
}