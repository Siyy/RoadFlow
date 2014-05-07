using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Data.MSSQL
{
    public class WorkFlowData : Data.Interface.IWorkFlowData
    {
        private DBHelper dbHelper = new DBHelper();
        /// <summary>
        /// 构造函数
        /// </summary>
        public WorkFlowData()
        {
        }
        /// <summary>
        /// 添加记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowData实体类</param>
        /// <returns>操作所影响的行数</returns>
        public int Add(Data.Model.WorkFlowData model)
        {
            string sql = @"INSERT INTO WorkFlowData
				(ID,InstanceID,LinkID,TableName,FieldName,Value) 
				VALUES(@ID,@InstanceID,@LinkID,@TableName,@FieldName,@Value)";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID },
				new SqlParameter("@InstanceID", SqlDbType.UniqueIdentifier, -1){ Value = model.InstanceID },
				new SqlParameter("@LinkID", SqlDbType.UniqueIdentifier, -1){ Value = model.LinkID },
				new SqlParameter("@TableName", SqlDbType.VarChar, 500){ Value = model.TableName },
				new SqlParameter("@FieldName", SqlDbType.VarChar, 500){ Value = model.FieldName },
				new SqlParameter("@Value", SqlDbType.VarChar, 8000){ Value = model.Value }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="model">Data.Model.WorkFlowData实体类</param>
        public int Update(Data.Model.WorkFlowData model)
        {
            string sql = @"UPDATE WorkFlowData SET 
				InstanceID=@InstanceID,LinkID=@LinkID,TableName=@TableName,FieldName=@FieldName,Value=@Value
				WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@InstanceID", SqlDbType.UniqueIdentifier, -1){ Value = model.InstanceID },
				new SqlParameter("@LinkID", SqlDbType.UniqueIdentifier, -1){ Value = model.LinkID },
				new SqlParameter("@TableName", SqlDbType.VarChar, 500){ Value = model.TableName },
				new SqlParameter("@FieldName", SqlDbType.VarChar, 500){ Value = model.FieldName },
				new SqlParameter("@Value", SqlDbType.VarChar, 8000){ Value = model.Value },
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier, -1){ Value = model.ID }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 删除记录
        /// </summary>
        public int Delete(Guid id)
        {
            string sql = "DELETE FROM WorkFlowData WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            return dbHelper.Execute(sql, parameters);
        }
        /// <summary>
        /// 将DataRedar转换为List
        /// </summary>
        private List<Data.Model.WorkFlowData> DataReaderToList(SqlDataReader dataReader)
        {
            List<Data.Model.WorkFlowData> List = new List<Data.Model.WorkFlowData>();
            Data.Model.WorkFlowData model = null;
            while (dataReader.Read())
            {
                model = new Data.Model.WorkFlowData();
                model.ID = dataReader.GetGuid(0);
                model.InstanceID = dataReader.GetGuid(1);
                model.LinkID = dataReader.GetGuid(2);
                model.TableName = dataReader.GetString(3);
                model.FieldName = dataReader.GetString(4);
                model.Value = dataReader.GetString(5);
                List.Add(model);
            }
            return List;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.WorkFlowData> GetAll()
        {
            string sql = "SELECT * FROM WorkFlowData";
            SqlDataReader dataReader = dbHelper.GetDataReader(sql);
            List<Data.Model.WorkFlowData> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
        /// <summary>
        /// 查询记录数
        /// </summary>
        public long GetCount()
        {
            string sql = "SELECT COUNT(*) FROM WorkFlowData";
            long count;
            return long.TryParse(dbHelper.GetFieldValue(sql), out count) ? count : 0;
        }
        /// <summary>
        /// 根据主键查询一条记录
        /// </summary>
        public Data.Model.WorkFlowData Get(Guid id)
        {
            string sql = "SELECT * FROM WorkFlowData WHERE ID=@ID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@ID", SqlDbType.UniqueIdentifier){ Value = id }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.WorkFlowData> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List.Count > 0 ? List[0] : null;
        }


        /// <summary>
        /// 查询一个实例ID所有记录
        /// </summary>
        public List<Data.Model.WorkFlowData> GetAll(Guid instanceID)
        {
            string sql = "SELECT * FROM WorkFlowData WHERE InstanceID=@InstanceID";
            SqlParameter[] parameters = new SqlParameter[]{
				new SqlParameter("@InstanceID", SqlDbType.UniqueIdentifier){ Value = instanceID }
			};
            SqlDataReader dataReader = dbHelper.GetDataReader(sql, parameters);
            List<Data.Model.WorkFlowData> List = DataReaderToList(dataReader);
            dataReader.Close();
            return List;
        }
    }
}