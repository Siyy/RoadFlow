using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Business.Platform
{
    public class DBConnection
    {
        private Data.Interface.IDBConnection dataDBConnection;
        public DBConnection()
        {
            this.dataDBConnection = Data.Factory.Platform.GetDBConnectionInstance();
        }

        /// <summary>
        /// 连接类型
        /// </summary>
        public enum Types
        { 
            SqlServer
        }

        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.DBConnection model)
        {
            int i = dataDBConnection.Add(model);
            ClearCache();
            return i;
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.DBConnection model)
        {
            int i = dataDBConnection.Update(model);
            ClearCache();
            return i;
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.DBConnection> GetAll(bool fromCache=false)
        {
            if (!fromCache)
            {
                return dataDBConnection.GetAll();
            }
            else
            {
                string key = Utility.Keys.CacheKeys.DBConnnections.ToString();
                object obj = MyCache.IO.Opation.Get(key);
                if (obj != null && obj is List<Data.Model.DBConnection>)
                {
                    return obj as List<Data.Model.DBConnection>;
                }
                else
                {
                    var list = dataDBConnection.GetAll();
                    MyCache.IO.Opation.Set(key, list);
                    return list;
                }
            }
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.DBConnection Get(Guid id)
        {
            return dataDBConnection.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            int i = dataDBConnection.Delete(id);
            ClearCache();
            return i;
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataDBConnection.GetCount();
        }
        /// <summary>
        /// 连接类型
        /// </summary>
        public enum ConnTypes
        { 
            SqlServer
        }
        /// <summary>
        /// 得到所有数据连接类型的下拉选择
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public string GetAllTypeOptions(string value = "")
        {
            StringBuilder options = new StringBuilder();
            var array = Enum.GetValues(typeof(ConnTypes));
            foreach (var arr in array)
            {
                options.AppendFormat("<option value=\"{0}\" {1}>{0}</option>", arr, arr.ToString() == value ? "selected=\"selected\"" : "");
            }
            return options.ToString();
        }
        /// <summary>
        /// 得到所有数据连接的下拉选择
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public string GetAllOptions(string value = "")
        {
            var conns = GetAll(true);
            StringBuilder options = new StringBuilder();
            foreach (var conn in conns)
            {
                options.AppendFormat("<option value=\"{0}\" {1}>{2}</option>", conn.ID,
                    string.Compare(conn.ID.ToString(), value, true) == 0 ? "selected=\"selected\"" : "", conn.Name);
            }
            return options.ToString();
        }
        /// <summary>
        /// 清除缓存
        /// </summary>
        public void ClearCache()
        {
            string key = Utility.Keys.CacheKeys.DBConnnections.ToString();
            MyCache.IO.Opation.Remove(key);
        }

        /// <summary>
        /// 根据连接ID得到所有表
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<string> GetTables(Guid id)
        {
            var allConns = GetAll(true);
            var conn = allConns.Find(p => p.ID == id);
            if (conn == null) return new List<string>();
            List<string> tables = new List<string>();
            switch (conn.Type)
            {
                case "SqlServer":
                    tables = getTables_SqlServer(conn);
                    break;
            }
            return tables;
        }
        /// <summary>
        /// 得到所有字段
        /// </summary>
        /// <param name="id">连接ID</param>
        /// <param name="table">表名</param>
        /// <returns></returns>
        public List<string> GetFields(Guid id, string table)
        {
            if (table.IsNullOrEmpty()) return new List<string>();
            var allConns = GetAll(true);
            var conn = allConns.Find(p => p.ID == id);
            if (conn == null) return new List<string>();
            List<string> fields = new List<string>();
            switch (conn.Type)
            {
                case "SqlServer":
                    fields = getFields_SqlServer(conn, table);
                    break;
            }
            return fields;
        }
        /// <summary>
        /// 得到一个连接一个表一个字段的值
        /// </summary>
        /// <param name="link_table_field"></param>
        /// <returns></returns>
        public string GetFieldValue(string link_table_field, Dictionary<string,string> pkFieldValue)
        {
            if (link_table_field.IsNullOrEmpty()) return "";
            string[] array = link_table_field.Split('.');
            if (array.Length != 3) return "";
            string link = array[0];
            string table = array[1];
            string field = array[2];
            var allConns = GetAll(true);
            Guid linkid;
            if (!link.IsGuid(out linkid)) return "";
            var conn = allConns.Find(p => p.ID == linkid);
            if (conn == null) return "";
            List<string> fields = new List<string>();
            string value = string.Empty;
            switch (conn.Type)
            {
                case "SqlServer":
                    value = getFieldValue_SqlServer(conn, table, field, pkFieldValue);
                    break;
            }
            return value;
        }

        /// <summary>
        /// 得到一个连接一个表一个字段的值
        /// </summary>
        /// <param name="link_table_field"></param>
        /// <returns></returns>
        public string GetFieldValue(string link_table_field, string pkField, string pkFieldValue)
        {
            if (link_table_field.IsNullOrEmpty())
            {
                return "";
            }
            string[] array = link_table_field.Split('.');
            if (array.Length != 3)
            {
                return "";
            }
            string link = array[0];
            string table = array[1];
            string field = array[2];
            var allConns = GetAll(true);
            Guid linkid;
            if (!link.IsGuid(out linkid))
            {
                return "";
            }
            var conn = allConns.Find(p => p.ID == linkid);
            if (conn == null)
            {
                return "";
            }
            string value = string.Empty;
            switch (conn.Type)
            {
                case "SqlServer":
                    value = getFieldValue_SqlServer(conn, table, field, pkField, pkFieldValue);
                    break;
            }
            return value;
        }
        /// <summary>
        /// 测试一个连接
        /// </summary>
        /// <param name="connID"></param>
        /// <returns></returns>
        public string Test(Guid connID)
        {
            var link = Get(connID);
            if (link == null) return "未找到连接!";
            switch (link.Type)
            { 
                case "SqlServer":
                    return test_SqlServer(link);

            }

            return "";
        }

        /// <summary>
        /// 测试一个连接
        /// </summary>
        /// <param name="conn"></param>
        /// <returns></returns>
        private string test_SqlServer(Data.Model.DBConnection conn)
        {
            using (SqlConnection sqlConn = new SqlConnection(conn.ConnectionString))
            {
                try
                {
                    sqlConn.Open();
                    return "连接成功!";
                }
                catch (SqlException err)
                {
                    return err.Message;
                }
            }
        }

        /// <summary>
        /// 测试一个sql条件合法性
        /// </summary>
        /// <param name="conn"></param>
        /// <param name="where"></param>
        /// <returns></returns>
        private string testSql_SqlServer(Data.Model.DBConnection conn, string sql)
        {
            using (SqlConnection sqlConn = new SqlConnection(conn.ConnectionString))
            {
                try
                {
                    sqlConn.Open();
                }
                catch (SqlException err)
                {
                    return err.Message;
                }
                using (SqlCommand cmd = new SqlCommand(sql, sqlConn))
                {
                    try
                    {
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException err)
                    {
                        return err.Message;
                    }
                }
                return "";
            }
        }

        /// <summary>
        /// 得到一个连接所有表
        /// </summary>
        /// <param name="conn"></param>
        /// <returns></returns>
        private List<string> getTables_SqlServer(Data.Model.DBConnection conn)
        {
            using (SqlConnection sqlConn = new SqlConnection(conn.ConnectionString))
            {
                try
                {
                    sqlConn.Open();
                }
                catch (SqlException err)
                {
                    Log.Add(err);
                    return new List<string>();
                }
                List<string> tables = new List<string>();
                string sql = "SELECT name FROM sysobjects WHERE xtype='U' ORDER BY name";
                using (SqlCommand sqlCmd = new SqlCommand(sql, sqlConn))
                {
                    SqlDataReader dr = sqlCmd.ExecuteReader();
                    while (dr.Read())
                    {
                        tables.Add(dr.GetString(0));
                    }
                    dr.Close();
                    return tables;
                }
            }
        }
        /// <summary>
        /// 得到一个连接一个表所有字段
        /// </summary>
        /// <param name="conn"></param>
        /// <param name="table"></param>
        /// <returns></returns>
        private List<string> getFields_SqlServer(Data.Model.DBConnection conn, string table)
        {
            using (SqlConnection sqlConn = new SqlConnection(conn.ConnectionString))
            {
                try
                {
                    sqlConn.Open();
                }
                catch (SqlException err)
                {
                    Log.Add(err);
                    return new List<string>();
                }
                List<string> fields = new List<string>();
                string sql = string.Format(@"select a.name as f_name,b.name as t_name,[length],a.isnullable as is_null from 
                    sys.syscolumns a inner join sys.types b on b.user_type_id=a.xtype 
                    where object_id('{0}')=id order by a.colid", table);
                using (SqlCommand sqlCmd = new SqlCommand(sql, sqlConn))
                {
                    SqlDataReader dr = sqlCmd.ExecuteReader();
                    while (dr.Read())
                    {
                        fields.Add(dr.GetString(0));
                    }
                    dr.Close();
                    return fields;
                }
            }
        }
        /// <summary>
        /// 得到一个连接一个表一个字段的值
        /// </summary>
        /// <param name="conn">连接ID</param>
        /// <param name="table">表名</param>
        /// <param name="field">字段名</param>
        /// <param name="pkFieldValue">主键和值字典</param>
        /// <returns></returns>
        private string getFieldValue_SqlServer(Data.Model.DBConnection conn, string table, string field, Dictionary<string, string> pkFieldValue)
        {
            using (SqlConnection sqlConn = new SqlConnection(conn.ConnectionString))
            {
                try
                {
                    sqlConn.Open();
                }
                catch (SqlException err)
                {
                    Log.Add(err);
                    return "";
                }
                List<string> fields = new List<string>();
                StringBuilder sql = new StringBuilder();
                sql.AppendFormat("select {0} from {1} where 1=1", field, table);
                foreach (var pk in pkFieldValue)
                {
                    sql.AppendFormat(" and {0}='{1}'", pk.Key, pk.Value);
                }
               
                using (SqlCommand sqlCmd = new SqlCommand(sql.ToString(), sqlConn))
                {
                    SqlDataReader dr = sqlCmd.ExecuteReader();
                    string value = string.Empty;
                    if (dr.HasRows)
                    {
                        dr.Read();
                        value = dr.GetString(0);
                    }
                    dr.Close();
                    return value;
                }
            }
        }

        /// <summary>
        /// 得到一个连接一个表一个字段的值
        /// </summary>
        /// <param name="linkID">连接ID</param>
        /// <param name="table">表</param>
        /// <param name="field">字段</param>
        /// <param name="pkField">主键字段</param>
        /// <param name="pkFieldValue">主键值</param>
        /// <returns></returns>
        private string getFieldValue_SqlServer(Data.Model.DBConnection conn, string table, string field, string pkField, string pkFieldValue)
        {
            string v = "";
            using (SqlConnection sqlConn = new SqlConnection(conn.ConnectionString))
            {
                try
                {
                    sqlConn.Open();
                }
                catch (SqlException err)
                {
                    Log.Add(err);
                    return "";
                }
                string sql = string.Format("SELECT {0} FROM {1} WHERE {2} = '{3}'", field, table, pkField, pkFieldValue);
                using (SqlDataAdapter dap = new SqlDataAdapter(sql, sqlConn))
                {
                    try
                    {
                        DataTable dt = new DataTable();
                        dap.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            v = dt.Rows[0][0].ToString();
                        }
                    }
                    catch (SqlException err)
                    {
                        Log.Add(err);
                    }
                    return v;
                }
            }
        }

        /// <summary>
        /// 根据连接实体得到连接
        /// </summary>
        /// <param name="linkID"></param>
        /// <returns></returns>
        public System.Data.IDbConnection GetConnection(Data.Model.DBConnection dbconn)
        {
            if (dbconn == null || dbconn.Type.IsNullOrEmpty() || dbconn.ConnectionString.IsNullOrEmpty())
            {
                return null;
            }
            IDbConnection conn = null;
            switch (dbconn.Type)
            { 
                case "SqlServer":
                    conn = new SqlConnection(dbconn.ConnectionString);
                    break;
            }

            return conn;

        }

        /// <summary>
        /// 根据连接实体得到数据适配器
        /// </summary>
        /// <param name="linkID"></param>
        /// <returns></returns>
        public System.Data.IDbDataAdapter GetDataAdapter(IDbConnection conn, string connType, string cmdText, IDataParameter[] parArray)
        {
            IDbDataAdapter dataAdapter = null;
            switch (connType)
            {
                case "SqlServer":
                    using (SqlCommand cmd = new SqlCommand(cmdText, (SqlConnection)conn))
                    {
                        if (parArray != null && parArray.Length > 0)
                        {
                            cmd.Parameters.AddRange(parArray);
                        }
                        dataAdapter = new SqlDataAdapter(cmd);
                    }
                    break;
            }
            return dataAdapter;
        }

        /// <summary>
        /// 测试一个sql是否合法
        /// </summary>
        /// <param name="dbconn"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public bool TestSql(Data.Model.DBConnection dbconn, string sql)
        {
            if (dbconn == null)
            {
                return false;
            }
            switch (dbconn.Type)
            {
                case "SqlServer":
                    using (SqlConnection conn = new SqlConnection(dbconn.ConnectionString))
                    {
                        try
                        {
                            conn.Open();
                        }
                        catch
                        {
                            return false;
                        }
                        using (SqlCommand cmd = new SqlCommand(sql.ReplaceSelectSql(), (SqlConnection)conn))
                        {
                            try
                            {
                                cmd.ExecuteNonQuery();
                                return true;
                            }
                            catch
                            {
                                return false;
                            }
                        }
                    }
                    break;
            }
            return false;
        }

        /// <summary>
        /// 根据连接实体得到数据表
        /// </summary>
        /// <param name="linkID"></param>
        /// <returns></returns>
        public System.Data.DataTable GetDataTable(Data.Model.DBConnection dbconn, string sql)
        {
            if (dbconn == null || dbconn.Type.IsNullOrEmpty() || dbconn.ConnectionString.IsNullOrEmpty())
            {
                return null;
            }
            DataTable dt = new DataTable();
            switch (dbconn.Type)
            {
                case "SqlServer":
                    using (SqlConnection conn = new SqlConnection(dbconn.ConnectionString))
                    {
                        try
                        {
                            conn.Open();
                            using (SqlDataAdapter dap = new SqlDataAdapter(sql, conn))
                            {
                                dap.Fill(dt);
                            }
                        }
                        catch (SqlException ex)
                        {
                            Platform.Log.Add(ex);
                        }
                    }
                    break;

            }

            return dt;
        }

        /// <summary>
        /// 得到一个表的结构
        /// </summary>
        /// <param name="conn"></param>
        /// <param name="tableName"></param>
        /// <param name="dbType"></param>
        /// <returns></returns>
        public System.Data.DataTable GetTableSchema(System.Data.IDbConnection conn, string tableName, string dbType)
        {
            DataTable dt = new DataTable();
            switch (dbType)
            { 
                case "SqlServer":
                    string sql = string.Format(@"select a.name as f_name,b.name as t_name,[length],a.isnullable as is_null, a.cdefault as cdefault,COLUMNPROPERTY( OBJECT_ID('{0}'),a.name,'IsIdentity') as isidentity from 
                    sys.syscolumns a inner join sys.types b on b.user_type_id=a.xtype 
                    where object_id('{0}')=id order by a.colid", tableName);
                    SqlDataAdapter dap = new SqlDataAdapter(sql, (SqlConnection)conn);
                    dap.Fill(dt);
                    break;
            }
            return dt;
        }

        /// <summary>
        /// 更新一个连接一个表一个字段的值
        /// </summary>
        /// <param name="connID"></param>
        /// <param name="table"></param>
        /// <param name="field"></param>
        /// <param name="value"></param>
        public void UpdateFieldValue(Guid connID, string table, string field, string value, string where)
        {
            var conn = Get(connID);
            if (conn == null)
            {
                return;
            }
            switch (conn.Type)
            {
                case "SqlServer":
                    using (var dbconn = GetConnection(conn))
                    {
                        try
                        {
                            dbconn.Open();
                        }
                        catch(SqlException ex) 
                        {
                            Platform.Log.Add(ex);
                        }
                        string sql = string.Format("UPDATE {0} SET {1}=@value WHERE {2}", table, field, where);
                        SqlParameter par = new SqlParameter("@value", value);
                        using (SqlCommand cmd = new SqlCommand(sql, (SqlConnection)dbconn))
                        {
                            cmd.Parameters.Add(par);
                            try
                            {
                                cmd.ExecuteNonQuery();
                            }
                            catch (SqlException ex)
                            {
                                Platform.Log.Add(ex);
                            }
                        }
                    }
                    break;
            }
        }

    }
}
