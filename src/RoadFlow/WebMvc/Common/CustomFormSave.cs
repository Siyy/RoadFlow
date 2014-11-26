using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebMvc.Common
{
    public class CustomFormSave
    {
        public static object GetJson(Data.Model.WorkFlowCustomEventParams eventParams)
        {
            return new Data.MSSQL.DBHelper().GetDataTable("select * from users");
        }
        public static string QianShi(Data.Model.WorkFlowCustomEventParams eventParams)
        {
            string title = System.Web.HttpContext.Current.Request.Form["Title"];
            string Contents = System.Web.HttpContext.Current.Request.Form["Contents"];

            if (eventParams.InstanceID.IsInt())
            {
                string sql = "UPDATE TempTest_CustomForm SET Title=@Title,Contents=@Contents WHERE ID=@ID";
                SqlParameter[] parArray = { 
                             new SqlParameter("@Title", title),
                             new SqlParameter("@Contents", Contents),
                             new SqlParameter("@ID", eventParams.InstanceID.ToString())
                             };
                new Data.MSSQL.DBHelper().Execute(sql, parArray);
                return eventParams.InstanceID.ToString();
            }
            else
            {
                string sql = "INSERT INTO TempTest_CustomForm(Title,Contents,FlowCompleted) VALUES(@Title,@Contents,@FlowCompleted);SELECT SCOPE_IDENTITY();";
                SqlParameter[] parArray = { 
                             new SqlParameter("@Title", title),
                             new SqlParameter("@Contents", Contents),
                             new SqlParameter("@FlowCompleted", "0")
                             };
                return new Data.MSSQL.DBHelper().ExecuteScalar(sql, parArray);
            }
        }
    }
}