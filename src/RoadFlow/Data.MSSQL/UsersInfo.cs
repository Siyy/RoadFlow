using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class UsersInfo : Data.Interface.IUsersInfo
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public UsersInfo()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.UsersInfo实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.UsersInfo model)
        {
            string sql = @"INSERT INTO UsersInfo
				(UserID,Officer,Tel,Fax,Address,Email,QQ,MSN,Note) 
				VALUES(@UserID,@Officer,@Tel,@Fax,@Address,@Email,@QQ,@MSN,@Note)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1){ Value = model.UserID },
				model.Officer == null ? new SqlParameter("@Officer", SqlDbType.NVarChar, 1000) { Value = DBNull.Value } : new SqlParameter("@Officer", SqlDbType.NVarChar, 1000) { Value = model.Officer },
				model.Tel == null ? new SqlParameter("@Tel", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Tel", SqlDbType.VarChar, 500) { Value = model.Tel },
				model.Fax == null ? new SqlParameter("@Fax", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Fax", SqlDbType.VarChar, 500) { Value = model.Fax },
				model.Address == null ? new SqlParameter("@Address", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Address", SqlDbType.VarChar, 500) { Value = model.Address },
				model.Email == null ? new SqlParameter("@Email", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@Email", SqlDbType.VarChar, 50) { Value = model.Email },
				model.QQ == null ? new SqlParameter("@QQ", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@QQ", SqlDbType.VarChar, 50) { Value = model.QQ },
				model.MSN == null ? new SqlParameter("@MSN", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@MSN", SqlDbType.VarChar, 50) { Value = model.MSN },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.NVarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.NVarChar, -1) { Value = model.Note }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.UsersInfo实体类</param>
        public int Update(Data.Model.UsersInfo model)
        {
            string sql = @"UPDATE UsersInfo SET 
				Officer=@Officer,Tel=@Tel,Fax=@Fax,Address=@Address,Email=@Email,QQ=@QQ,MSN=@MSN,Note=@Note
				WHERE UserID=@UserID";
            SqlParameter[] parameters = new SqlParameter[]{
				model.Officer == null ? new SqlParameter("@Officer", SqlDbType.NVarChar, 1000) { Value = DBNull.Value } : new SqlParameter("@Officer", SqlDbType.NVarChar, 1000) { Value = model.Officer },
				model.Tel == null ? new SqlParameter("@Tel", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Tel", SqlDbType.VarChar, 500) { Value = model.Tel },
				model.Fax == null ? new SqlParameter("@Fax", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Fax", SqlDbType.VarChar, 500) { Value = model.Fax },
				model.Address == null ? new SqlParameter("@Address", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Address", SqlDbType.VarChar, 500) { Value = model.Address },
				model.Email == null ? new SqlParameter("@Email", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@Email", SqlDbType.VarChar, 50) { Value = model.Email },
				model.QQ == null ? new SqlParameter("@QQ", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@QQ", SqlDbType.VarChar, 50) { Value = model.QQ },
				model.MSN == null ? new SqlParameter("@MSN", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@MSN", SqlDbType.VarChar, 50) { Value = model.MSN },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.NVarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.NVarChar, -1) { Value = model.Note },
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1){ Value = model.UserID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid userid)
        {
            string sql = "DELETE FROM UsersInfo WHERE UserID=@UserID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier){ Value = userid }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.UsersInfo> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.UsersInfo> List = new List<Data.Model.UsersInfo>();
            Data.Model.UsersInfo model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.UsersInfo();
                model.UserID = dataReader.GetGuid(0);
                if (!dataReader.IsDBNull(1))
                    model.Officer = dataReader.GetString(1);
                if (!dataReader.IsDBNull(2))
                    model.Tel = dataReader.GetString(2);
                if (!dataReader.IsDBNull(3))
                    model.Fax = dataReader.GetString(3);
                if (!dataReader.IsDBNull(4))
                    model.Address = dataReader.GetString(4);
                if (!dataReader.IsDBNull(5))
                    model.Email = dataReader.GetString(5);
                if (!dataReader.IsDBNull(6))
                    model.QQ = dataReader.GetString(6);
                if (!dataReader.IsDBNull(7))
                    model.MSN = dataReader.GetString(7);
                if (!dataReader.IsDBNull(8))
                    model.Note = dataReader.GetString(8);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.UsersInfo> GetAll()
        {
            string sql = "SELECT * FROM UsersInfo";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.UsersInfo> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM UsersInfo";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.UsersInfo Get(Guid userid)
        {
            string sql = "SELECT * FROM UsersInfo WHERE UserID=@UserID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier){ Value = userid }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.UsersInfo> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }
    }
}