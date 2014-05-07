using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class AppLibrary : Data.Interface.IAppLibrary
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public AppLibrary()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.AppLibrary实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.AppLibrary model)
        {
            string sql = @"INSERT INTO AppLibrary
				(ID,Title,Address,Type,OpenMode,Width,Height,Params,Manager,Note,Code) 
				VALUES(@ID,@Title,@Address,@Type,@OpenMode,@Width,@Height,@Params,@Manager,@Note,@Code)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@Title", SqlDbType.NVarChar, 510){ Value = model.Title },
				new SqlParameter("@Address", SqlDbType.VarChar, 200){ Value = model.Address },
				new SqlParameter("@Type", SqlDbType.NVarChar, 100){ Value = model.Type },
				new SqlParameter("@OpenMode", SqlDbType.Int, -1){ Value = model.OpenMode },
				model.Width == null ? new SqlParameter("@Width", SqlDbType.Int, -1) { Value = DBNull.Value } : new SqlParameter("@Width", SqlDbType.Int, -1) { Value = model.Width },
				model.Height == null ? new SqlParameter("@Height", SqlDbType.Int, -1) { Value = DBNull.Value } : new SqlParameter("@Height", SqlDbType.Int, -1) { Value = model.Height },
				model.Params == null ? new SqlParameter("@Params", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Params", SqlDbType.VarChar, -1) { Value = model.Params },
				model.Manager == null ? new SqlParameter("@Manager", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Manager", SqlDbType.VarChar, -1) { Value = model.Manager },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = model.Note },
				model.Code == null ? new SqlParameter("@Code", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@Code", SqlDbType.VarChar, 50) { Value = model.Code }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.AppLibrary实体类</param>
        public int Update(Data.Model.AppLibrary model)
        {
            string sql = @"UPDATE AppLibrary SET 
				Title=@Title,Address=@Address,Type=@Type,OpenMode=@OpenMode,Width=@Width,Height=@Height,Params=@Params,Manager=@Manager,Note=@Note,Code=@Code
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@Title", SqlDbType.NVarChar, 510){ Value = model.Title },
				new SqlParameter("@Address", SqlDbType.VarChar, 200){ Value = model.Address },
				new SqlParameter("@Type", SqlDbType.NVarChar, 100){ Value = model.Type },
				new SqlParameter("@OpenMode", SqlDbType.Int, -1){ Value = model.OpenMode },
				model.Width == null ? new SqlParameter("@Width", SqlDbType.Int, -1) { Value = DBNull.Value } : new SqlParameter("@Width", SqlDbType.Int, -1) { Value = model.Width },
				model.Height == null ? new SqlParameter("@Height", SqlDbType.Int, -1) { Value = DBNull.Value } : new SqlParameter("@Height", SqlDbType.Int, -1) { Value = model.Height },
				model.Params == null ? new SqlParameter("@Params", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Params", SqlDbType.VarChar, -1) { Value = model.Params },
				model.Manager == null ? new SqlParameter("@Manager", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Manager", SqlDbType.VarChar, -1) { Value = model.Manager },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = model.Note },
				model.Code == null ? new SqlParameter("@Code", SqlDbType.VarChar, 50) { Value = DBNull.Value } : new SqlParameter("@Code", SqlDbType.VarChar, 50) { Value = model.Code },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM AppLibrary WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.AppLibrary> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.AppLibrary> List = new List<Data.Model.AppLibrary>();
            Data.Model.AppLibrary model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.AppLibrary();
                model.ID = dataReader.GetGuid(0);
                model.Title = dataReader.GetString(1);
                model.Address = dataReader.GetString(2);
                model.Type = dataReader.GetString(3);
                model.OpenMode = dataReader.GetInt32(4);
                if (!dataReader.IsDBNull(5))
                    model.Width = dataReader.GetInt32(5);
                if (!dataReader.IsDBNull(6))
                    model.Height = dataReader.GetInt32(6);
                if (!dataReader.IsDBNull(7))
                    model.Params = dataReader.GetString(7);
                if (!dataReader.IsDBNull(8))
                    model.Manager = dataReader.GetString(8);
                if (!dataReader.IsDBNull(9))
                    model.Note = dataReader.GetString(9);
                if (!dataReader.IsDBNull(10))
                    model.Code = dataReader.GetString(10);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.AppLibrary> GetAll()
        {
            string sql = "SELECT * FROM AppLibrary";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.AppLibrary> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM AppLibrary";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.AppLibrary Get(Guid id)
        {
            string sql = "SELECT * FROM AppLibrary WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.AppLibrary> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 得到所有分类
        /// </summary>
        /// <returns></returns>
        public List<string> GetAllTypes()
        {
            string sql = "SELECT Type FROM AppLibrary GROUP BY Type";
            DataTable dt = dbHelper.GetDataTable(sql);
            List<string> list = new List<string>();
            foreach (DataRow dr in dt.Rows)
            {
                list.Add(dr[0].ToString());
            }
            return list;
        }

        /// <summary>
        /// 得到一页数据
        /// </summary>
        /// <param name="pager"></param>
        /// <param name="query"></param>
        /// <param name="order"></param>
        /// <param name="size"></param>
        /// <param name="numbe"></param>
        /// <param name="title"></param>
        /// <param name="type"></param>
        /// <param name="address"></param>
        /// <returns></returns>
        public List<Data.Model.AppLibrary> GetPagerData(out string pager, string query = "", string order = "Type,Title", int size = 15, int number = 1, string title = "", string type = "", string address = "")
        {
            StringBuilder WHERE = new StringBuilder();
            List<SqlParameter> parList = new List<SqlParameter>();
            if (!title.IsNullOrEmpty())
            {
                WHERE.Append("AND CHARINDEX(@Title,Title)>0 ");
                parList.Add(new SqlParameter("@Title", SqlDbType.NVarChar) { Value = title });
            }
            if (!type.IsNullOrEmpty())
            {
                WHERE.Append("AND Type=@Type ");
                parList.Add(new SqlParameter("@Type", SqlDbType.NVarChar) { Value = type });
            }
            if (!address.IsNullOrEmpty())
            {
                WHERE.Append("AND CHARINDEX(@Address,Address)>0 ");
                parList.Add(new SqlParameter("@Address", SqlDbType.VarChar) { Value = address });
            }
            long count;
            string sql = dbHelper.GetPaerSql("AppLibrary", "*", WHERE.ToString(), order, size, number, out count, parList.ToArray());

            pager = Utility.Tools.GetPagerHtml(count, size, number, query);
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parList.ToArray());
            List<Data.Model.AppLibrary> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 查询一个类别下所有记录
        /// </summary>
        public List<Data.Model.AppLibrary> GetAllByType(string type)
        {
            string sql = "SELECT * FROM AppLibrary WHERE Type=@Type";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@Type", SqlDbType.NVarChar){ Value = type }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.AppLibrary> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }

        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(string[] idArray)
        {
            string sql = "DELETE FROM AppLibrary WHERE ID in(" + Utility.Tools.GetSqlInString(idArray) + ")";
            return dbHelper.Execute(sql);
        }

        /// <summary>
        /// 根据代码查询一条记录
        /// </summary>
        public Data.Model.AppLibrary GetByCode(string code)
        {
            string sql = "SELECT * FROM AppLibrary WHERE Code=@Code";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@Code", SqlDbType.VarChar, 50){ Value = code }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.AppLibrary> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }
    }
}