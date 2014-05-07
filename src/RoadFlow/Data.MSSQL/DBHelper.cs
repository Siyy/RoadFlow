using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace Data.MSSQL
{
    /// <summary>
    /// SQLSERVER助手类
    /// </summary>
    public class DBHelper
    {
        private string connectionString;
        private SqlConnection connection;

        public DBHelper()
        {
            this.connectionString = Utility.Config.PlatformConnectionString;
        }
        public DBHelper(string connString)
        {
            this.connectionString = connString;
        }
       
        /// <summary>
        /// 连接字符串
        /// </summary>
        public string ConnectionString
        {
            get { return this.connectionString; }
        }
        /// <summary>
        /// 数据连接
        /// </summary>
        public SqlConnection Connection
        {
            get
            {
                if (this.connection == null)
                {
                    this.connection = new SqlConnection(this.connectionString);
                    this.connection.Open();
                }
                else if (this.connection.State != ConnectionState.Open)
                {
                    this.connection.Open();
                }
                return this.connection;
            }
        }

        /// <summary>
        /// 释放连接
        /// </summary>
        public void Dispose()
        {
            if (this.connection != null && this.connection.State != ConnectionState.Closed)
            {
                this.connection.Close();
            }
            this.connection.Dispose();
        }

        /// <summary>
        /// 得到一个SqlDataReader
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns></returns>
        public SqlDataReader GetDataReader(string sql)
        {
            this.connection = new SqlConnection(ConnectionString);
            this.connection.Open();
            using (SqlCommand cmd = new SqlCommand(sql, this.connection))
            {
                cmd.Prepare();
                return cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
        }

        /// <summary>
        /// 得到一个SqlDataReader
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns></returns>
        public SqlDataReader GetDataReader(string sql, SqlParameter[] parameter)
        {
            this.connection = new SqlConnection(ConnectionString);
            this.connection.Open();
            using (SqlCommand cmd = new SqlCommand(sql, this.connection))
            {
                if (parameter != null && parameter.Length > 0)
                    cmd.Parameters.AddRange(parameter);
                SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                cmd.Parameters.Clear();
                cmd.Prepare();
                return dr;
            }
        }

        /// <summary>
        /// 得到一个DataTable
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns></returns>
        public DataTable GetDataTable(string sql)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlCommand cmd = new SqlCommand(sql, this.connection))
                {
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(dr);
                    dr.Close();
                    dr.Dispose();
                    cmd.Prepare();
                    return dt;
                }
            }
        }

        /// <summary>
        /// 得到一个DataTable
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns></returns>
        public DataTable GetDataTable(string sql, SqlParameter[] parameter)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlCommand cmd = new SqlCommand(sql, this.connection))
                {
                    if (parameter != null && parameter.Length > 0)
                        cmd.Parameters.AddRange(parameter);
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(dr);
                    dr.Close();
                    dr.Dispose();
                    cmd.Parameters.Clear();
                    cmd.Prepare();
                    return dt;
                }
            }
        }

        /// <summary>
        /// 得到数据集
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public DataSet GetDataSet(string sql)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlDataAdapter dap = new SqlDataAdapter(sql, this.connection))
                {
                    DataSet ds = new DataSet();
                    dap.Fill(ds);
                    return ds;
                }
            }
        }

        /// <summary>
        /// 执行SQL
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public int Execute(string sql)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlCommand cmd = new SqlCommand(sql, this.connection))
                {
                    cmd.Prepare();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        /// <summary>
        /// 执行SQL(事务)
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public int Execute(List<string> sqlList)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    int i = 0;
                    cmd.Connection = connection;
                    foreach (string sql in sqlList)
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = sql;
                        cmd.Prepare();
                        i += cmd.ExecuteNonQuery();
                    }
                    return i;
                }
            }
        }

        /// <summary>
        /// 执行带参数的SQL
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <returns></returns>
        public int Execute(string sql, SqlParameter[] parameter)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlCommand cmd = new SqlCommand(sql, this.connection))
                {
                    if (parameter != null && parameter.Length > 0)
                        cmd.Parameters.AddRange(parameter);
                    int i = cmd.ExecuteNonQuery();
                    cmd.Parameters.Clear();
                    cmd.Prepare();
                    return i;
                }
            }
        }

        /// <summary>
        /// 执行SQL(事务)
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public int Execute(List<string> sqlList, List<SqlParameter[]> parameterList)
        {
            if (sqlList.Count > parameterList.Count)
            {
                throw new Exception("参数错误");
            }
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    int i = 0;
                    cmd.Connection = connection;
                    for (int j = 0; j < sqlList.Count; j++)
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = sqlList[j];
                        if (parameterList[j] != null && parameterList[j].Length > 0)
                        {
                            cmd.Parameters.AddRange(parameterList[j]);
                        }
                        i += cmd.ExecuteNonQuery();
                        cmd.Parameters.Clear();
                        cmd.Prepare();
                    }
                    return i;
                }
            }
        }

        /// <summary>
        /// 得到一个字段的值
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string ExecuteScalar(string sql)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlCommand cmd = new SqlCommand(sql, this.connection))
                {
                    object obj = cmd.ExecuteScalar();
                    cmd.Prepare();
                    return obj != null ? obj.ToString() : string.Empty;
                }
            }
        }

        /// <summary>
        /// 得到一个字段的值
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string ExecuteScalar(string sql, SqlParameter[] parameter)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                using (SqlCommand cmd = new SqlCommand(sql, this.connection))
                {
                    if (parameter != null && parameter.Length > 0)
                        cmd.Parameters.AddRange(parameter);
                    object obj = cmd.ExecuteScalar();
                    cmd.Parameters.Clear();
                    cmd.Prepare();
                    return obj != null ? obj.ToString() : string.Empty;
                }
            }
        }
        /// <summary>
        /// 得到一个字段的值
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string GetFieldValue(string sql)
        {
            return ExecuteScalar(sql);
        }
        /// <summary>
        /// 得到一个字段的值
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="parameter"></param>
        /// <returns></returns>
        public string GetFieldValue(string sql, SqlParameter[] parameter)
        {
            return ExecuteScalar(sql, parameter);
        }

        /// <summary>
        /// 获取一个sql的字段名称
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns></returns>
        public string GetFields(string sql, SqlParameter[] param)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                System.Text.StringBuilder names = new System.Text.StringBuilder(500);
                using (SqlCommand cmd = new SqlCommand(sql, this.connection))
                {
                    if (param != null && param.Length > 0)
                        cmd.Parameters.AddRange(param);
                    SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SchemaOnly);
                    for (int i = 0; i < dr.FieldCount; i++)
                    {
                        names.Append("[" + dr.GetName(i) + "]" + (i < dr.FieldCount - 1 ? "," : string.Empty));
                    }
                    cmd.Parameters.Clear();
                    dr.Close();
                    dr.Dispose();
                    cmd.Prepare();
                    return names.ToString();
                }
            }
        }

        /// <summary>
        /// 获取一个sql的字段名称
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <param name="tableName">表名 </param>
        /// <returns></returns>
        public string GetFields(string sql, SqlParameter[] param, out string tableName)
        {
            using (this.connection = new SqlConnection(ConnectionString))
            {
                this.connection.Open();
                System.Text.StringBuilder names = new System.Text.StringBuilder(500);
                using (SqlCommand cmd = new SqlCommand(sql, this.connection))
                {
                    if (param != null && param.Length > 0)
                        cmd.Parameters.AddRange(param);
                    SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SchemaOnly);
                    tableName = dr.GetSchemaTable().TableName;
                    for (int i = 0; i < dr.FieldCount; i++)
                    {
                        names.Append("[" + dr.GetName(i) + "]" + (i < dr.FieldCount - 1 ? "," : string.Empty));
                    }
                    cmd.Parameters.Clear();
                    dr.Close();
                    dr.Dispose();
                    cmd.Prepare();
                    return names.ToString();
                }
            }
        }

        /// <summary>
        /// 得到分页sql
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string GetPaerSql(string sql, int size, int number, out long count, SqlParameter[] param = null)
        {
            string count1 = GetFieldValue(string.Format("select count(*) from ({0}) as countTemp", sql), param);
            long i;
            count = count1.IsLong(out i) ? i : 0;

            StringBuilder sql1 = new StringBuilder();
            sql1.Append("select * from (");
            sql1.Append(sql);
            sql1.AppendFormat(") as temp");
            if (count > size)
            {
                sql1.AppendFormat(" where PagerAutoRowNumber between {0} and {1}", number * size - size + 1, number * size);
            }

            return sql1.ToString();
        }

        /// <summary>
        /// 得到分页sql
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string GetPaerSql(string table, string fileds, string where, string order, int size, int number, out long count, SqlParameter[] param = null)
        {
            string where1 = string.Empty;
            if (where.IsNullOrEmpty())
            {
                where1 = "";
            }
            else
            {
                where1 = where.Trim();
                if (where1.StartsWith("and", StringComparison.CurrentCultureIgnoreCase))
                {
                    where1 = where1.Substring(3);
                }
            }
            string where2 = where1.IsNullOrEmpty() ? "" : "where " + where1;
            string sql = string.Format("select {0},ROW_NUMBER() OVER(ORDER BY {1}) as PagerAutoRowNumber from {2} {3}", fileds, order, table, where2);


            string count1 = GetFieldValue(string.Format("select count(*) from {0} {1}", table, where2), param);
            long i;
            count = count1.IsLong(out i) ? i : 0;

            StringBuilder sql1 = new StringBuilder();
            sql1.Append("select * from (");
            sql1.Append(sql);
            sql1.AppendFormat(") as temp");
            if (count > size)
            {
                sql1.AppendFormat(" where PagerAutoRowNumber between {0} and {1}", number * size - size + 1, number * size);
            }

            return sql1.ToString();
        }

    }
}
