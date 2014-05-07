using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class Role : Data.Interface.IRole
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public Role()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.Role实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.Role model)
        {
            string sql = @"INSERT INTO Role
				(ID,Name,UseMember,Note) 
				VALUES(@ID,@Name,@UseMember,@Note)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@Name", SqlDbType.NVarChar, 400){ Value = model.Name },
				model.UseMember == null ? new SqlParameter("@UseMember", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@UseMember", SqlDbType.VarChar, -1) { Value = model.UseMember },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.NVarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.NVarChar, -1) { Value = model.Note }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.Role实体类</param>
        public int Update(Data.Model.Role model)
        {
            string sql = @"UPDATE Role SET 
				Name=@Name,UseMember=@UseMember,Note=@Note
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@Name", SqlDbType.NVarChar, 400){ Value = model.Name },
				model.UseMember == null ? new SqlParameter("@UseMember", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@UseMember", SqlDbType.VarChar, -1) { Value = model.UseMember },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.NVarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.NVarChar, -1) { Value = model.Note },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM Role WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.Role> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.Role> List = new List<Data.Model.Role>();
            Data.Model.Role model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.Role();
                model.ID = dataReader.GetGuid(0);
                model.Name = dataReader.GetString(1);
                if (!dataReader.IsDBNull(2))
                    model.UseMember = dataReader.GetString(2);
                if (!dataReader.IsDBNull(3))
                    model.Note = dataReader.GetString(3);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.Role> GetAll()
        {
            string sql = "SELECT * FROM Role";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.Role> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM Role";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.Role Get(Guid id)
        {
            string sql = "SELECT * FROM Role WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.Role> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }
    }
}