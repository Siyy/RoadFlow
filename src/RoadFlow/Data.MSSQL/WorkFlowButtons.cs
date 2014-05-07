using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class WorkFlowButtons : Data.Interface.IWorkFlowButtons
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public WorkFlowButtons()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowButtons实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.WorkFlowButtons model)
        {
            string sql = @"INSERT INTO WorkFlowButtons
				(ID,Title,Ico,Script,Note,Sort) 
				VALUES(@ID,@Title,@Ico,@Script,@Note,@Sort)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@Title", SqlDbType.NVarChar, 1000){ Value = model.Title },
				model.Ico == null ? new SqlParameter("@Ico", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Ico", SqlDbType.VarChar, 500) { Value = model.Ico },
				model.Script == null ? new SqlParameter("@Script", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Script", SqlDbType.VarChar, -1) { Value = model.Script },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = model.Note },
				new SqlParameter("@Sort", SqlDbType.Int, -1){ Value = model.Sort }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowButtons实体类</param>
        public int Update(Data.Model.WorkFlowButtons model)
        {
            string sql = @"UPDATE WorkFlowButtons SET 
				Title=@Title,Ico=@Ico,Script=@Script,Note=@Note,Sort=@Sort
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@Title", SqlDbType.NVarChar, 1000){ Value = model.Title },
				model.Ico == null ? new SqlParameter("@Ico", SqlDbType.VarChar, 500) { Value = DBNull.Value } : new SqlParameter("@Ico", SqlDbType.VarChar, 500) { Value = model.Ico },
				model.Script == null ? new SqlParameter("@Script", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Script", SqlDbType.VarChar, -1) { Value = model.Script },
				model.Note == null ? new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Note", SqlDbType.VarChar, -1) { Value = model.Note },
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
            string sql = "DELETE FROM WorkFlowButtons WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.WorkFlowButtons> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.WorkFlowButtons> List = new List<Data.Model.WorkFlowButtons>();
            Data.Model.WorkFlowButtons model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.WorkFlowButtons();
                model.ID = dataReader.GetGuid(0);
                model.Title = dataReader.GetString(1);
                if (!dataReader.IsDBNull(2))
                    model.Ico = dataReader.GetString(2);
                if (!dataReader.IsDBNull(3))
                    model.Script = dataReader.GetString(3);
                if (!dataReader.IsDBNull(4))
                    model.Note = dataReader.GetString(4);
                model.Sort = dataReader.GetInt32(5);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowButtons> GetAll()
        {
            string sql = "SELECT * FROM WorkFlowButtons";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.WorkFlowButtons> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM WorkFlowButtons";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.WorkFlowButtons Get(Guid id)
        {
            string sql = "SELECT * FROM WorkFlowButtons WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.WorkFlowButtons> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }

        /// <summary>
        /// 查询最大排序
        /// </summary>
        public int GetMaxSort()
        {
            string sql = "SELECT ISNULL(MAX(Sort),0)+1 FROM WorkFlowButtons";
            string max = dbHelper.GetFieldValue(sql);
            return max.IsInt() ? max.ToInt() : 1;
        }
    }
}