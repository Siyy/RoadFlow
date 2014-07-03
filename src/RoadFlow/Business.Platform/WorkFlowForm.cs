using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Data;

namespace Business.Platform
{
    /// <summary>
    /// 流程表单相关类
    /// </summary>
    public class WorkFlowForm
    {

        private Data.Interface.IWorkFlowForm dataWorkFlowForm;
		public WorkFlowForm()
		{
            this.dataWorkFlowForm = Data.Factory.Platform.GetWorkFlowFormInstance();
		}
		/// <summary>
		/// 新增
		/// </summary>
		public int Add(Data.Model.WorkFlowForm model)
		{
			return dataWorkFlowForm.Add(model);
		}
		/// <summary>
		/// 更新
		/// </summary>
		public int Update(Data.Model.WorkFlowForm model)
		{
			return dataWorkFlowForm.Update(model);
		}
		/// <summary>
		/// 查询所有记录
		/// </summary>
		public List<Data.Model.WorkFlowForm> GetAll()
		{
			return dataWorkFlowForm.GetAll();
		}
		/// <summary>
		/// 查询单条记录
		/// </summary>
		public Data.Model.WorkFlowForm Get(Guid id)
		{
			return dataWorkFlowForm.Get(id);
		}
		/// <summary>
		/// 删除
		/// </summary>
		public int Delete(Guid id)
		{
			return dataWorkFlowForm.Delete(id);
		}
		/// <summary>
		/// 查询记录条数
		/// </summary>
		public long GetCount()
		{
			return dataWorkFlowForm.GetCount();
		}

        /// <summary>
        /// 得到验证提示方式Radio字符串
        /// </summary>
        /// <returns></returns>
        public string GetValidatePropTypeRadios(string name, string value, string att = "")
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("弹出(alert)","0"){ Selected="0"==value},
                new ListItem("图标和提示信息","1"){ Selected="1"==value},
                new ListItem("图标","2"){ Selected="2"==value}
            };
            return Utility.Tools.GetRadioString(items, name, att);
        }

        /// <summary>
        /// 得到流程文本框输入类型Radio字符串
        /// </summary>
        /// <returns></returns>
        public string GetInputTypeRadios(string name, string value, string att="")
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("明文","text"){ Selected="0"==value},
                new ListItem("密码","password"){ Selected="1"==value}
            };
            return Utility.Tools.GetRadioString(items, name, att);
        }

        /// <summary>
        /// 得到流程值类型选择项字符串
        /// </summary>
        /// <returns></returns>
        public string GetValueTypeOptions(string value)
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("字符串","0"){ Selected="0"==value},
                new ListItem("整数","1"){ Selected="1"==value},
                new ListItem("实数","2"){ Selected="2"==value},
                new ListItem("正整数","3"){ Selected="3"==value},
                new ListItem("正实数","4"){ Selected="4"==value},
                new ListItem("负整数","5"){ Selected="5"==value},
                new ListItem("负实数","6"){ Selected="6"==value},
                new ListItem("手机号码","7"){ Selected="7"==value}
            };
            return Utility.Tools.GetOptionsString(items);
        }

        /// <summary>
        /// 得到默认值下拉选项字符串
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public string GetDefaultValueSelect(string value)
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("",""),
                new ListItem("当前步骤用户ID","0"){ Selected="0"==value},
                new ListItem("当前步骤用户姓名","1"){ Selected="1"==value},
                new ListItem("当前步骤用户部门ID","2"){ Selected="2"==value},
                new ListItem("当前步骤用户部门名称","3"){ Selected="3"==value},
                new ListItem("短日期格式(2014/4/15)","4"){ Selected="4"==value},
                new ListItem("长日期格式(2014年4月15日)","5"){ Selected="5"==value},
                new ListItem("短日期时间格式(2014/4/15 22:31)","6"){ Selected="6"==value},
                new ListItem("长日期时间格式(2014年4月15日 22时31分)","7"){ Selected="7"==value},
            };
            return Utility.Tools.GetOptionsString(items);
        }

        /// <summary>
        /// 得到流程文本域模式Radio字符串
        /// </summary>
        /// <returns></returns>
        public string GetTextareaModelRadios(string name, string value, string att = "")
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("普通","default"){ Selected="default"==value},
                new ListItem("HTML","html"){ Selected="html"==value}
            };
            return Utility.Tools.GetRadioString(items, name, att);
        }

        /// <summary>
        /// 得到数据源Radio字符串
        /// </summary>
        /// <returns></returns>
        public string GetDataSourceRadios(string name, string value, string att = "")
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("数据字典","0"){ Selected="0"==value},
                new ListItem("自定义","1"){ Selected="1"==value},
                new ListItem("SQL语句","2"){ Selected="2"==value}
            };

            return Utility.Tools.GetRadioString(items, name, att);
        }

        /// <summary>
        /// 得到组织机构选择范围Radio字符串
        /// </summary>
        /// <returns></returns>
        public string GetOrgRangeRadios(string name, string value, string att = "")
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("发起者部门","0"){ Selected="0"==value},
                new ListItem("处理者部门","1"){ Selected="1"==value},
            };
            return Utility.Tools.GetRadioString(items, name, att);
        }

        /// <summary>
        /// 得到组织机构选择类型Radio字符串
        /// </summary>
        /// <returns></returns>
        public string GetOrgSelectTypeCheckboxs(string name, string value, string att = "")
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("部门","0"){ Selected="0"==value},
                new ListItem("岗位","1"){ Selected="1"==value},
                new ListItem("人员","2"){ Selected="2"==value},
                new ListItem("工作组","3"){ Selected="3"==value},
                new ListItem("单位","4"){ Selected="4"==value}
            };
            return Utility.Tools.GetCheckBoxString(items, name, value.Split(','), att);
        }

        /// <summary>
        /// 得到从表编辑模式选择
        /// </summary>
        /// <returns></returns>
        public string GetEditmodeOptions(string value)
        {
            ListItem[] items = new ListItem[]{ 
                new ListItem("无",""){ Selected=""==value},
                new ListItem("文本框","text"){ Selected="text"==value},
                new ListItem("文本域","textarea"){ Selected="textarea"==value},
                new ListItem("下拉列表","select"){ Selected="select"==value},
                new ListItem("复选框","checkbox"){ Selected="checkbox"==value},
                new ListItem("日期时间","datetime"){ Selected="datetime"==value},
                new ListItem("组织机构选择","org"){ Selected="org"==value},
                new ListItem("数据字典选择","dict"){ Selected="dict"==value},
                new ListItem("附件","files"){ Selected="files"==value}
            };
            return Utility.Tools.GetOptionsString(items);
        }

        /// <summary>
        /// 得到状态显示
        /// </summary>
        /// <param name="status"></param>
        /// <returns></returns>
        public string GetStatusTitle(int status)
        {
            string title = string.Empty;
            switch (status)
            { 
                case 0:
                    title = "已保存";break;
                case 1:
                    title = "已发布";break;
                case 2:
                    title = "已作废";break;
            }
            return title;
        }

        /// <summary>
        /// 得到编译页面的头部
        /// </summary>
        /// <param name="serverScript">服务端脚本</param>
        /// <returns></returns>
        public string GetHeadHtml(string serverScript)
        {
            return "";
        }

        /// <summary>
        /// 根据sql得到下拉列表项
        /// </summary>
        /// <param name="dbconn"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string GetOptionsFromSql(string connID, string sql, string value)
        { 
            Guid cid;
            if(!connID.IsGuid(out cid))
            {
                return "";
            }
            DBConnection dbConn = new DBConnection();
            var dbconn = dbConn.Get(cid);
            if (dbconn == null)
            {
                return "";
            }
            DataTable dt = dbConn.GetDataTable(dbconn, sql.ReplaceSelectSql());
            if (dt.Rows.Count == 0)
            {
                return "";
            }
            List<ListItem> items = new List<ListItem>();
            foreach (DataRow dr in dt.Rows)
            {
                if (dt.Columns.Count == 0)
                {
                    continue;
                }
                string value1 = dr[0].ToString();
                string title = value1;
                if (dt.Columns.Count > 1)
                {
                    title = dr[1].ToString();
                }

                items.Add(new ListItem(title, value1) { Selected = value == value1 });
            }
            return Utility.Tools.GetOptionsString(items.ToArray());
        }

        /// <summary>
        /// 根据sql得到单选按钮组
        /// </summary>
        /// <param name="dbconn"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string GetRadioFromSql(string connID, string sql, string name, string value, string attr = "")
        {
            Guid cid;
            if (!connID.IsGuid(out cid))
            {
                return "";
            }
            DBConnection dbConn = new DBConnection();
            var dbconn = dbConn.Get(cid);
            if (dbconn == null)
            {
                return "";
            }
            DataTable dt = dbConn.GetDataTable(dbconn, sql.ReplaceSelectSql());
            if (dt.Rows.Count == 0)
            {
                return "";
            }
            List<ListItem> items = new List<ListItem>();
            foreach (DataRow dr in dt.Rows)
            {
                if (dt.Columns.Count == 0)
                {
                    continue;
                }
                string value1 = dr[0].ToString();
                string title = value1;
                if (dt.Columns.Count > 1)
                {
                    title = dr[1].ToString();
                }

                items.Add(new ListItem(title, value1) { Selected = value == value1 });
            }
            return Utility.Tools.GetRadioString(items.ToArray(), name, attr);
        }

        /// <summary>
        /// 根据sql得到复选框
        /// </summary>
        /// <param name="dbconn"></param>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string GetCheckboxFromSql(string connID, string sql, string name, string value, string attr="")
        {
            Guid cid;
            if (!connID.IsGuid(out cid))
            {
                return "";
            }
            DBConnection dbConn = new DBConnection();
            var dbconn = dbConn.Get(cid);
            if (dbconn == null)
            {
                return "";
            }
            DataTable dt = dbConn.GetDataTable(dbconn, sql.ReplaceSelectSql());
            if (dt.Rows.Count == 0)
            {
                return "";
            }
            List<ListItem> items = new List<ListItem>();
            foreach (DataRow dr in dt.Rows)
            {
                if (dt.Columns.Count == 0)
                {
                    continue;
                }
                string value1 = dr[0].ToString();
                string title = value1;
                if (dt.Columns.Count > 1)
                {
                    title = dr[1].ToString();
                }

                items.Add(new ListItem(title, value1));
            }
            return Utility.Tools.GetCheckBoxString(items.ToArray(), name, (value ?? "").Split(','), attr);
        }


        /// <summary>
        /// 得到下级ID字符串
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string GetAllChildsIDString(Guid id, bool isSelf = true)
        {
            return new Dictionary().GetAllChildsIDString(id, true);
        }

        /// <summary>
        /// 查询一个分类所有记录
        /// </summary>
        public List<Data.Model.WorkFlowForm> GetAllByType(Guid id)
        {
            return dataWorkFlowForm.GetAllByType(GetAllChildsIDString(id));
        }

        /// <summary>
        /// 得到类型选择项
        /// </summary>
        /// <returns></returns>
        public string GetTypeOptions(string value = "")
        {
            return new Dictionary().GetOptionsByCode("FormTypes", Dictionary.OptionValueField.ID, value);
        }

    }
}
