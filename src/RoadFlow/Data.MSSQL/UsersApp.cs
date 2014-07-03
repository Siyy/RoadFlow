using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class UsersApp : Data.Interface.IUsersApp
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public UsersApp()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.UsersApp实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.UsersApp model)
        {
            string sql = @"INSERT INTO UsersApp
				(ID,UserID,ParentID,RoleID,AppID,Title,Params,Ico,Sort) 
				VALUES(@ID,@UserID,@ParentID,@RoleID,@AppID,@Title,@Params,@Ico,@Sort)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1){ Value = model.UserID },
				new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier, -1){ Value = model.ParentID },
				new SqlParameter("@RoleID", SqlDbType.UniqueIdentifier, -1){ Value = model.RoleID },
				model.AppID == null ? new SqlParameter("@AppID", SqlDbType.UniqueIdentifier, -1) { Value = DBNull.Value } : new SqlParameter("@AppID", SqlDbType.UniqueIdentifier, -1) { Value = model.AppID },
				model.Title == null ? new SqlParameter("@Title", SqlDbType.NVarChar, 400) { Value = DBNull.Value } : new SqlParameter("@Title", SqlDbType.NVarChar, 400) { Value = model.Title },
				model.Params == null ? new SqlParameter("@Params", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Params", SqlDbType.VarChar, 500) { Value = model.Params },
				model.Ico == null ? new SqlParameter("@Ico", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Ico", SqlDbType.VarChar, 500) { Value = model.Ico },
				new SqlParameter("@Sort", SqlDbType.Int, -1){ Value = model.Sort }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.UsersApp实体类</param>
        public int Update(Data.Model.UsersApp model)
        {
            string sql = @"UPDATE UsersApp SET 
				UserID=@UserID,ParentID=@ParentID,RoleID=@RoleID,AppID=@AppID,Title=@Title,Params=@Params,Ico=@Ico,Sort=@Sort
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier, -1){ Value = model.UserID },
				new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier, -1){ Value = model.ParentID },
				new SqlParameter("@RoleID", SqlDbType.UniqueIdentifier, -1){ Value = model.RoleID },
				model.AppID == null ? new SqlParameter("@AppID", SqlDbType.UniqueIdentifier, -1) { Value = DBNull.Value } : new SqlParameter("@AppID", SqlDbType.UniqueIdentifier, -1) { Value = model.AppID },
				model.Title == null ? new SqlParameter("@Title", SqlDbType.NVarChar, 400) { Value = DBNull.Value } : new SqlParameter("@Title", SqlDbType.NVarChar, 400) { Value = model.Title },
				model.Params == null ? new SqlParameter("@Params", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Params", SqlDbType.VarChar, 500) { Value = model.Params },
				model.Ico == null ? new SqlParameter("@Ico", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Ico", SqlDbType.VarChar, 500) { Value = model.Ico },
				new SqlParameter("@Sort", SqlDbType.Int, -1){ Value = model.Sort },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM UsersApp WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.UsersApp> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.UsersApp> List = new List<Data.Model.UsersApp>();
            Data.Model.UsersApp model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.UsersApp();
                model.ID = dataReader.GetGuid(0);
                model.UserID = dataReader.GetGuid(1);
                model.ParentID = dataReader.GetGuid(2);
                model.RoleID = dataReader.GetGuid(3);
                if (!dataReader.IsDBNull(4))
                    model.AppID = dataReader.GetGuid(4);
                if (!dataReader.IsDBNull(5))
                    model.Title = dataReader.GetString(5);
                if (!dataReader.IsDBNull(6))
                    model.Params = dataReader.GetString(6);
                if (!dataReader.IsDBNull(7))
                    model.Ico = dataReader.GetString(7);
                model.Sort = dataReader.GetInt32(8);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.UsersApp> GetAll()
        {
            string sql = "SELECT * FROM UsersApp";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.UsersApp> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM UsersApp";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.UsersApp Get(Guid id)
        {
            string sql = "SELECT * FROM UsersApp WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.UsersApp> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }


        /// <summary>
        /// 查询所有记录
        /// </summary>
        public System.Data.DataTable GetAllDataTable()
        {
            string sql = "SELECT a.*,b.Address,b.OpenMode,b.Width,b.Height,b.Params AS Params1,b.Manager FROM UsersApp a LEFT JOIN AppLibrary b ON a.AppID=b.ID";
            return dbHelper.GetDataTable(sql);
        }

        /// <summary>
        /// 更新排序
        /// </summary>
        public int UpdateSort(Guid id, int sort)
        {
            string sql = "UPDATE UsersApp SET Sort=@Sort WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
                new SqlParameter("@Sort", SqlDbType.Int){ Value = sort },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public List<Data.Model.UsersApp> GetChild(Guid id)
        {
            string sql = "SELECT * FROM UsersApp WHERE ParentID=@ParentID ORDER BY Sort";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ParentID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.UsersApp> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 删除一个用户记录
        /// </summary>
        public int DeleteByUserID(Guid userID)
        {
            string sql = "DELETE FROM UsersApp WHERE UserID=@UserID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@UserID", SqlDbType.UniqueIdentifier){ Value = userID }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            return dbHelper.Execute(sql, parameters);
        }
    }
}