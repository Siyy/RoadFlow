using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class WorkFlowForm : Data.Interface.IWorkFlowForm
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public WorkFlowForm()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowForm实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.WorkFlowForm model)
        {
            string sql = @"INSERT INTO WorkFlowForm
				(ID,Name,Type,CreateUserID,CreateUserName,CreateTime,LastModifyTime,Html,SubTableJson,EventsJson,Attribute,Status) 
				VALUES(@ID,@Name,@Type,@CreateUserID,@CreateUserName,@CreateTime,@LastModifyTime,@Html,@SubTableJson,@EventsJson,@Attribute,@Status)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@Name", SqlDbType.NVarChar, 1000){ Value = model.Name },
				new SqlParameter("@Type", SqlDbType.UniqueIdentifier, -1){ Value = model.Type },
				new SqlParameter("@CreateUserID", SqlDbType.UniqueIdentifier, -1){ Value = model.CreateUserID },
				new SqlParameter("@CreateUserName", SqlDbType.NVarChar, 100){ Value = model.CreateUserName },
				new SqlParameter("@CreateTime", SqlDbType.DateTime, 8){ Value = model.CreateTime },
				new SqlParameter("@LastModifyTime", SqlDbType.DateTime, 8){ Value = model.LastModifyTime },
				model.Html == null ? new SqlParameter("@Html", SqlDbType.Text, -1) { Value = DBNull.Value } : new SqlParameter("@Html", SqlDbType.Text, -1) { Value = model.Html },
				model.SubTableJson == null ? new SqlParameter("@SubTableJson", SqlDbType.Text, -1) { Value = DBNull.Value } : new SqlParameter("@SubTableJson", SqlDbType.Text, -1) { Value = model.SubTableJson },
				model.EventsJson == null ? new SqlParameter("@EventsJson", SqlDbType.Text, -1) { Value = DBNull.Value } : new SqlParameter("@EventsJson", SqlDbType.Text, -1) { Value = model.EventsJson },
				model.Attribute == null ? new SqlParameter("@Attribute", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Attribute", SqlDbType.VarChar, -1) { Value = model.Attribute },
				new SqlParameter("@Status", SqlDbType.Int, -1){ Value = model.Status }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowForm实体类</param>
        public int Update(Data.Model.WorkFlowForm model)
        {
            string sql = @"UPDATE WorkFlowForm SET 
				Name=@Name,Type=@Type,CreateUserID=@CreateUserID,CreateUserName=@CreateUserName,CreateTime=@CreateTime,LastModifyTime=@LastModifyTime,Html=@Html,SubTableJson=@SubTableJson,EventsJson=@EventsJson,Attribute=@Attribute,Status=@Status
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@Name", SqlDbType.NVarChar, 1000){ Value = model.Name },
				new SqlParameter("@Type", SqlDbType.UniqueIdentifier, -1){ Value = model.Type },
				new SqlParameter("@CreateUserID", SqlDbType.UniqueIdentifier, -1){ Value = model.CreateUserID },
				new SqlParameter("@CreateUserName", SqlDbType.NVarChar, 100){ Value = model.CreateUserName },
				new SqlParameter("@CreateTime", SqlDbType.DateTime, 8){ Value = model.CreateTime },
				new SqlParameter("@LastModifyTime", SqlDbType.DateTime, 8){ Value = model.LastModifyTime },
				model.Html == null ? new SqlParameter("@Html", SqlDbType.Text, -1) { Value = DBNull.Value } : new SqlParameter("@Html", SqlDbType.Text, -1) { Value = model.Html },
				model.SubTableJson == null ? new SqlParameter("@SubTableJson", SqlDbType.Text, -1) { Value = DBNull.Value } : new SqlParameter("@SubTableJson", SqlDbType.Text, -1) { Value = model.SubTableJson },
				model.EventsJson == null ? new SqlParameter("@EventsJson", SqlDbType.Text, -1) { Value = DBNull.Value } : new SqlParameter("@EventsJson", SqlDbType.Text, -1) { Value = model.EventsJson },
				model.Attribute == null ? new SqlParameter("@Attribute", SqlDbType.VarChar, -1) { Value = DBNull.Value } : new SqlParameter("@Attribute", SqlDbType.VarChar, -1) { Value = model.Attribute },
				new SqlParameter("@Status", SqlDbType.Int, -1){ Value = model.Status },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM WorkFlowForm WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.WorkFlowForm> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.WorkFlowForm> List = new List<Data.Model.WorkFlowForm>();
            Data.Model.WorkFlowForm model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.WorkFlowForm();
                model.ID = dataReader.GetGuid(0);
                model.Name = dataReader.GetString(1);
                model.Type = dataReader.GetGuid(2);
                model.CreateUserID = dataReader.GetGuid(3);
                model.CreateUserName = dataReader.GetString(4);
                model.CreateTime = dataReader.GetDateTime(5);
                model.LastModifyTime = dataReader.GetDateTime(6);
                if (!dataReader.IsDBNull(7))
                    model.Html = dataReader.GetString(7);
                if (!dataReader.IsDBNull(8))
                    model.SubTableJson = dataReader.GetString(8);
                if (!dataReader.IsDBNull(9))
                    model.EventsJson = dataReader.GetString(9);
                if (!dataReader.IsDBNull(10))
                    model.Attribute = dataReader.GetString(10);
                model.Status = dataReader.GetInt32(11);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowForm> GetAll()
        {
            string sql = "SELECT * FROM WorkFlowForm";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.WorkFlowForm> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM WorkFlowForm";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.WorkFlowForm Get(Guid id)
        {
            string sql = "SELECT * FROM WorkFlowForm WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.WorkFlowForm> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }



        /// <summary>
        /// 查询一个分类所有记录
        /// </summary>
        public List<Data.Model.WorkFlowForm> GetAllByType(string types)
        {
            string sql = "SELECT * FROM WorkFlowForm where Type IN(" + Utility.Tools.GetSqlInString(types) + ")";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.WorkFlowForm> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
    }
}