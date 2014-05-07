using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class DBConnection : Data.Interface.IDBConnection
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public DBConnection()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.DBConnection实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.DBConnection model)
        {
            string sql = @"INSERT INTO DBConnection
				(ID,Name,Type,ConnectionString,Note) 
				VALUES(@ID,@Name,@Type,@ConnectionString,@Note)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@Name", SqlDbType.VarChar, 500){ Value = model.Name },
				new SqlParameter("@Type", SqlDbType.VarChar, 500){ Value = model.Type },
				new SqlParameter("@ConnectionString", SqlDbType.VarChar, -1){ Value = model.ConnectionString },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = model.Note }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.DBConnection实体类</param>
        public int Update(Data.Model.DBConnection model)
        {
            string sql = @"UPDATE DBConnection SET 
				Name=@Name,Type=@Type,ConnectionString=@ConnectionString,Note=@Note
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@Name", SqlDbType.VarChar, 500){ Value = model.Name },
				new SqlParameter("@Type", SqlDbType.VarChar, 500){ Value = model.Type },
				new SqlParameter("@ConnectionString", SqlDbType.VarChar, -1){ Value = model.ConnectionString },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = model.Note },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM DBConnection WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.DBConnection> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.DBConnection> List = new List<Data.Model.DBConnection>();
            Data.Model.DBConnection model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.DBConnection();
                model.ID = dataReader.GetGuid(0);
                model.Name = dataReader.GetString(1);
                model.Type = dataReader.GetString(2);
                model.ConnectionString = dataReader.GetString(3);
                if (!dataReader.IsDBNull(4))
                    model.Note = dataReader.GetString(4);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.DBConnection> GetAll()
        {
            string sql = "SELECT * FROM DBConnection";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.DBConnection> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM DBConnection";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.DBConnection Get(Guid id)
        {
            string sql = "SELECT * FROM DBConnection WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.DBConnection> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }
    }
}