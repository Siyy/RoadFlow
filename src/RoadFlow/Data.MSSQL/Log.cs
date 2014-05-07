using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class Log : Data.Interface.ILog
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public Log()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.Log实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.Log model)
        {
            string sql = @"INSERT INTO Log
				(ID,Title,Type,WriteTime,UserID,UserName,IPAddress,URL,Contents,Others) 
				VALUES(@ID,@Title,@Type,@WriteTime,@UserID,@UserName,@IPAddress,@URL,@Contents,@Others)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@Title", SqlDbType.NVarChar, -1){ Value = model.Title },
				new SqlParameter("@Type", SqlDbType.NVarChar, 100){ Value = model.Type },
				new SqlParameter("@WriteTime", SqlDbType.DateTime, 8){ Value = model.WriteTime },
				model.UserID == null ? new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1) { Value = DBNull.Value } : new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1) { Value = model.UserID },
				model.UserName == null ? new SqlParameter("@UserName", SqlDbType.NVarChar, 100) { Value = DBNull.Value } : new SqlParameter("@UserName", SqlDbType.NVarChar, 100) { Value = model.UserName },
				model.IPAddress == null ? new SqlParameter("@IPAddress", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@IPAddress", SqlDbType.VarChar, 50) { Value = model.IPAddress },
				model.URL == null ? new SqlParameter("@URL", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@URL", SqlDbType.VarChar, -1) { Value = model.URL },
				model.Contents == null ? new SqlParameter("@Contents", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Contents", SqlDbType.VarChar, -1) { Value = model.Contents },
				model.Others == null ? new SqlParameter("@Others", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Others", SqlDbType.VarChar, -1) { Value = model.Others }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.Log实体类</param>
        public int Update(Data.Model.Log model)
        {
            string sql = @"UPDATE Log SET 
				Title=@Title,Type=@Type,WriteTime=@WriteTime,UserID=@UserID,UserName=@UserName,IPAddress=@IPAddress,URL=@URL,Contents=@Contents,Others=@Others
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@Title", SqlDbType.NVarChar, -1){ Value = model.Title },
				new SqlParameter("@Type", SqlDbType.NVarChar, 100){ Value = model.Type },
				new SqlParameter("@WriteTime", SqlDbType.DateTime, 8){ Value = model.WriteTime },
				model.UserID == null ? new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1) { Value = DBNull.Value } : new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1) { Value = model.UserID },
				model.UserName == null ? new SqlParameter("@UserName", SqlDbType.NVarChar, 100) { Value = DBNull.Value } : new SqlParameter("@UserName", SqlDbType.NVarChar, 100) { Value = model.UserName },
				model.IPAddress == null ? new SqlParameter("@IPAddress", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@IPAddress", SqlDbType.VarChar, 50) { Value = model.IPAddress },
				model.URL == null ? new SqlParameter("@URL", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@URL", SqlDbType.VarChar, -1) { Value = model.URL },
				model.Contents == null ? new SqlParameter("@Contents", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Contents", SqlDbType.VarChar, -1) { Value = model.Contents },
				model.Others == null ? new SqlParameter("@Others", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Others", SqlDbType.VarChar, -1) { Value = model.Others },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM Log WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.Log> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.Log> List = new List<Data.Model.Log>();
            Data.Model.Log model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.Log();
                model.ID = dataReader.GetGuid(0);
                model.Title = dataReader.GetString(1);
                model.Type = dataReader.GetString(2);
                model.WriteTime = dataReader.GetDateTime(3);
                if (!dataReader.IsDBNull(4))
                    model.UserID = dataReader.GetGuid(4);
                if (!dataReader.IsDBNull(5))
                    model.UserName = dataReader.GetString(5);
                if (!dataReader.IsDBNull(6))
                    model.IPAddress = dataReader.GetString(6);
                if (!dataReader.IsDBNull(7))
                    model.URL = dataReader.GetString(7);
                if (!dataReader.IsDBNull(8))
                    model.Contents = dataReader.GetString(8);
                if (!dataReader.IsDBNull(9))
                    model.Others = dataReader.GetString(9);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.Log> GetAll()
        {
            string sql = "SELECT * FROM Log";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.Log> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM Log";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.Log Get(Guid id)
        {
            string sql = "SELECT * FROM Log WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.Log> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 得到一页日志数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="order"></param>
        /// <param name="size"></param>
        /// <param name="number"></param>
        /// <param name="title"></param>
        /// <param name="type"></param>
        /// <param name="date1"></param>
        /// <param name="date2"></param>
        /// <param name="userID"></param>
        /// <returns></returns>
        public DataTable GetPagerData(out string pager, string query = "", int size = 15, int number = 1, string title = "", string type = "", string date1 = "", string date2 = "", string userID = "")
        {
            StringBuilder where = new StringBuilder();
            List<SqlParameter> parList = new List<SqlParameter>();
            if (!title.IsNullOrEmpty())
            {
                where.Append("AND CHARINDEX(@Title,Title)>0 ");
                parList.Add(new SqlParameter("@Title", SqlDbType.NVarChar) { Value = title });
            }
            if (!type.IsNullOrEmpty())
            {
                where.Append("AND Type=@Type ");
                parList.Add(new SqlParameter("@Type", SqlDbType.NVarChar) { Value = type });
            }
            if (date1.IsDateTime())
            {
                where.Append("AND WriteTime>=@Date1 ");
                parList.Add(new SqlParameter("@Date1", SqlDbType.DateTime) { Value = date1.ToDateTime().ToString("yyyy-MM-dd 00:00:00") });
            }
            if (date2.IsDateTime())
            {
                where.Append("AND WriteTime<=@Date2 ");
                parList.Add(new SqlParameter("@Date2", SqlDbType.DateTime) { Value = date2.ToDateTime().AddDays(1).ToString("yyyy-MM-dd 00:00:00") });
            }
            if (userID.IsGuid())
            {
                where.Append("AND UserID=@UserID ");
                parList.Add(new SqlParameter("@UserID", SqlDbType.UniqueIdentifier) { Value = userID.ToGuid() });
            }
            long count;
            string sql = dbHelper.GetPaerSql("Log", "ID,Title,Type,WriteTime,UserName,IPAddress", where.ToString(), "WriteTime DESC", size, number, out count, parList.ToArray());


            pager = Utility.Tools.GetPagerHtml(count, size, number, query);
            return dbHelper.GetDataTable(sql.ToString(), parList.ToArray());
        }
    }
}