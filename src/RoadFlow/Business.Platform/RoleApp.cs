using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace Business.Platform
{
    public class RoleApp
    {
        private Data.Interface.IRoleApp dataRoleApp;
        public RoleApp()
        {
            this.dataRoleApp = Data.Factory.Platform.GetRoleAppInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.RoleApp model)
        {
            return dataRoleApp.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.RoleApp model)
        {
            return dataRoleApp.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.RoleApp> GetAll()
        {
            return dataRoleApp.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.RoleApp Get(Guid id)
        {
            return dataRoleApp.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataRoleApp.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataRoleApp.GetCount();
        }

        /// <summary>
        /// 查询一个角色所有记录
        /// </summary>
        public List<Data.Model.RoleApp> GetAllByRoleID(Guid roleID)
        {
            return dataRoleApp.GetAllByRoleID(roleID);
        }

        /// <summary>
        /// 查询一个角色所有记录
        /// </summary>
        public System.Data.DataTable GetAllDataTableByRoleID(Guid roleID)
        {
            return dataRoleApp.GetAllDataTableByRoleID(roleID);
        }

        /// <summary>
        /// 查询所有记录
        /// </summary>
        public System.Data.DataTable GetAllDataTable()
        {
            return dataRoleApp.GetAllDataTable();
        }

        /// <summary>
        /// 查询单条记录
        /// </summary>
        public System.Data.DataRow GetFromCache(string id)
        {
            var dt = GetAllDataTableFromCache();
            var rows = dt.Select("ID='" + id.ToString() + "'");
            return rows.Length > 0 ? rows[0] : null;
        }

        /// <summary>
        /// 查询所有记录(缓存)
        /// </summary>
        public System.Data.DataTable GetAllDataTableFromCache()
        {
            string key = Utility.Keys.CacheKeys.RoleApp.ToString();
            object obj = MyCache.IO.Opation.Get(key);
            if (obj == null || !(obj is System.Data.DataTable))
            {
                System.Data.DataTable dt = GetAllDataTable();
                MyCache.IO.Opation.Set(key, dt);
                return dt;
            }
            else
            {
                return obj as System.Data.DataTable;
            }
        }

        /// <summary>
        /// 清空缓存
        /// </summary>
        public void ClearAllDataTableCache()
        {
            string key = Utility.Keys.CacheKeys.RoleApp.ToString();
            MyCache.IO.Opation.Remove(key);
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public System.Data.DataTable GetChildsDataTable(Guid id)
        {
            return dataRoleApp.GetChildsDataTable(id);
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public List<Data.Model.RoleApp> GetChild(Guid id)
        {
            return dataRoleApp.GetChild(id);
        }

        /// <summary>
        /// 得到所有下级
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Data.Model.RoleApp> GetAllChild(Guid id)
        {
            List<Data.Model.RoleApp> list = new List<Data.Model.RoleApp>();
            var childs = GetChild(id);
            foreach (var child in childs)
            {
                list.Add(child);
                addChilds(list, child.ID);
            }
            return list;
        }
        private void addChilds(List<Data.Model.RoleApp> list, Guid id)
        {
            var childs = GetChild(id);
            foreach (var child in childs)
            {
                list.Add(child);
                addChilds(list, child.ID);
            }
        }
        /// <summary>
        /// 删除当有应用和所有下级应用
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteAndAllChilds(Guid id)
        {
            var childs = GetAllChild(id);
            int i = 0;
            foreach (var child in childs)
            {
                i += Delete(child.ID);
            }
            i += Delete(id);
            return i;
        }

        /// <summary>
        /// 是否有下级记录
        /// </summary>
        public bool HasChild(Guid id)
        {
            return dataRoleApp.HasChild(id);
        }

        /// <summary>
        /// 更新排序
        /// </summary>
        public int UpdateSort(Guid id, int sort)
        {
            return dataRoleApp.UpdateSort(id, sort);
        }

        /// <summary>
        /// 删除一个角色记录
        /// </summary>
        public int DeleteByRoleID(Guid roleID)
        {
            return dataRoleApp.DeleteByRoleID(roleID);
        }
        /// <summary>
        /// 删除一个应用记录
        /// </summary>
        public int DeleteByAppID(Guid appID)
        {
            return dataRoleApp.DeleteByAppID(appID);
        }

        /// <summary>
        /// 克隆表
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public DataTable CloneDataTable(DataTable dt)
        {
            DataTable dt1 = dt.Clone();
            dt1.Merge(dt);
            return dt1;
        }

        /// <summary>
        /// 得到角色应用JSON
        /// </summary>
        /// <param name="roleID"></param>
        /// <returns></returns>
        public string GetRoleAppJsonString(Guid roleID, Guid userID, string rootDir="")
        {
            Business.Platform.RoleApp RoleApp = new Business.Platform.RoleApp();
            Business.Platform.UsersApp UsersApp = new Platform.UsersApp();
            System.Data.DataTable roleAppDt = RoleApp.GetAllDataTableFromCache();
            System.Data.DataTable appDt = CloneDataTable(roleAppDt);
            UsersApp.AppendUserApps(userID, appDt);
            if (appDt.Rows.Count == 0)
            {
                return "[]";
            }
            var root = appDt.Select(string.Format("ParentID='{0}' AND RoleID='{1}'", Guid.Empty.ToString(), roleID));
            if (root.Length == 0)
            {
                return "[]";
            }

            var apps = appDt.Select(string.Format("ParentID='{0}'", root[0]["ID"].ToString()));
            
            System.Text.StringBuilder json = new System.Text.StringBuilder("[", 1000);
            System.Data.DataRow rootDr = root[0];
            json.Append("{");
            json.AppendFormat("\"id\":\"{0}\",", rootDr["ID"]);
            json.AppendFormat("\"title\":\"{0}\",", rootDr["Title"].ToString().Trim());
            json.AppendFormat("\"ico\":\"{0}\",", rootDr["Ico"].ToString().IsNullOrEmpty() ? "" : rootDir + rootDr["Ico"]);
            json.AppendFormat("\"link\":\"{0}\",", getAddress(rootDr));
            json.AppendFormat("\"model\":\"{0}\",", rootDr["OpenMode"]);
            json.AppendFormat("\"width\":\"{0}\",", rootDr["Width"]);
            json.AppendFormat("\"height\":\"{0}\",", rootDr["Height"]);
            json.AppendFormat("\"hasChilds\":\"{0}\",", apps.Length > 0 ? "1" : "0");
            json.AppendFormat("\"childs\":[");

            for (int i = 0; i < apps.Length; i++)
            {
                DataRow dr = apps[i];
                var childs = appDt.Select("ParentID='" + dr["ID"].ToString() + "'");
                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", dr["ID"]);
                json.AppendFormat("\"title\":\"{0}\",", dr["Title"]);
                json.AppendFormat("\"ico\":\"{0}\",", dr["Ico"].ToString().IsNullOrEmpty() ? "" : rootDir + dr["Ico"]);
                json.AppendFormat("\"link\":\"{0}\",", getAddress(dr));
                json.AppendFormat("\"model\":\"{0}\",", dr["OpenMode"]);
                json.AppendFormat("\"width\":\"{0}\",", dr["Width"]);
                json.AppendFormat("\"height\":\"{0}\",", dr["Height"]);
                json.AppendFormat("\"hasChilds\":\"{0}\",", childs.Length > 0 ? "1" : "0");
                json.AppendFormat("\"childs\":[");

                DataRow[] apps1 = appDt.Select(string.Format("ParentID='{0}'", dr["ID"].ToString()));
                for (int j = 0; j < apps1.Length; j++)
                {
                    DataRow dr1 = apps1[j];
                    var childs1 = appDt.Select("ParentID='" + dr1["ID"].ToString() + "'");
                    json.Append("{");
                    json.AppendFormat("\"id\":\"{0}\",", dr1["ID"]);
                    json.AppendFormat("\"title\":\"{0}\",", dr1["Title"]);
                    json.AppendFormat("\"ico\":\"{0}\",", dr1["Ico"].ToString().IsNullOrEmpty() ? "" : rootDir + dr1["Ico"]);
                    json.AppendFormat("\"link\":\"{0}\",", getAddress(dr1));
                    json.AppendFormat("\"model\":\"{0}\",", dr1["OpenMode"]);
                    json.AppendFormat("\"width\":\"{0}\",", dr1["Width"]);
                    json.AppendFormat("\"height\":\"{0}\",", dr1["Height"]);
                    json.AppendFormat("\"hasChilds\":\"{0}\",", childs1.Length > 0 ? "1" : "0");
                    json.AppendFormat("\"childs\":[");
                    json.Append("]");
                    json.Append("}");
                    if (j < apps1.Length - 1)
                    {
                        json.Append(",");
                    }
                }

                json.Append("]");
                json.Append("}");
                if (i < apps.Length - 1)
                {
                    json.Append(",");
                }
            }
            json.Append("]");
            json.Append("}");
            json.Append("]");
            return json.ToString();
        }

        /// <summary>
        /// 得到角色应用刷新JSON
        /// </summary>
        /// <returns></returns>
        public string GetRoleAppRefreshJsonString(Guid roleID, Guid userID, Guid refreshID, string rootDir = "")
        {
            Business.Platform.RoleApp roleApp = new Business.Platform.RoleApp();
            Business.Platform.UsersApp UsersApp = new Platform.UsersApp();
            DataTable roleAppDt = roleApp.GetAllDataTableFromCache();
            DataTable appDt1 = CloneDataTable(roleAppDt);
            UsersApp.AppendUserApps(userID, appDt1);
            var dv = appDt1.DefaultView;
            dv.RowFilter = string.Format("ParentID='{0}'", refreshID);
            dv.Sort = "Sort";
            var appDt = dv.ToTable();
            if (appDt.Rows.Count == 0)
            {
                return "[]";
            }
            int count = appDt.Rows.Count;
            System.Text.StringBuilder json = new System.Text.StringBuilder("[", count * 100);
            int i = 0;
            foreach (DataRow dr in appDt.Rows)
            {
                json.Append("{");
                json.AppendFormat("\"id\":\"{0}\",", dr["ID"]);
                json.AppendFormat("\"title\":\"{0}\",", dr["Title"].ToString().Trim());
                json.AppendFormat("\"ico\":\"{0}\",", dr["Ico"].ToString().IsNullOrEmpty() ? "" : rootDir + dr["Ico"]);
                json.AppendFormat("\"link\":\"{0}\",", getAddress(dr));
                json.AppendFormat("\"model\":\"{0}\",", dr["OpenMode"]);
                json.AppendFormat("\"width\":\"{0}\",", dr["Width"]);
                json.AppendFormat("\"height\":\"{0}\",", dr["Height"]);
                json.AppendFormat("\"hasChilds\":\"{0}\",", appDt1.Select(string.Format("ParentID='{0}'", dr["id"])).Length > 0 ? "1" : "0");
                json.AppendFormat("\"childs\":[");

                json.Append("]");
                json.Append("}");
                if (i++ < count - 1)
                {
                    json.Append(",");
                }
            }
            json.Append("]");
            return json.ToString();
        }

        /// <summary>
        /// 得到应用地址
        /// </summary>
        /// <param name="dr"></param>
        /// <returns></returns>
        private string getAddress(System.Data.DataRow dr)
        {
            string address = dr["Address"].ToString().Trim();
            string params1 = dr["Params"].ToString().Trim();
            string params2 = dr["Params1"].ToString().Trim();
            StringBuilder sb = new StringBuilder();
            if (params1.IsNullOrEmpty() && params2.IsNullOrEmpty())
            {
                return address;
            }

            if (!params2.IsNullOrEmpty())
            {
                sb.Append(params2.TrimStart('?').TrimStart('&').TrimEnd('&').TrimEnd('?'));
            }
            if (!params1.IsNullOrEmpty())
            {
                sb.Append('&');
                sb.Append(params1.TrimStart('?').TrimStart('&').TrimEnd('&').TrimEnd('?'));
            }

            return address.Contains("?") ? string.Concat(address, "&", sb.ToString()) : string.Concat(address, "?", sb.ToString());
            
        }

        /// <summary>
        /// 得到最大排序值
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int GetMaxSort(Guid id)
        {
            return dataRoleApp.GetMaxSort(id);
        }

        /// <summary>
        /// 复制角色应用
        /// </summary>
        /// <param name="fromID"></param>
        /// <param name="toID"></param>
        /// <returns></returns>
        public bool CopyRoleApp(Guid fromID, Guid toID)
        {
            var toRole = new Role().Get(toID);
            if (toRole == null)
            {
                return false;
            }
            using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
            {
                DeleteByRoleID(toID);//先删除要复制的角色
                var apps = GetAllByRoleID(fromID);
                var root = apps.Find(p => p.ParentID == Guid.Empty);
                if (root != null)
                {
                    Guid fID = root.ID;
                    root.ID = Guid.NewGuid();
                    root.RoleID = toID;
                    Add(root);
                    insertChilds(fID, root.ID, toID, apps);
                }
                scope.Complete();
                return true;
            }
        }
        private void insertChilds(Guid oldID, Guid newID, Guid roleID, List<Data.Model.RoleApp> apps)
        {
            var childs = apps.FindAll(p => p.ParentID == oldID);
            foreach (var child in childs)
            {
                Guid fID = child.ID;
                child.ID = Guid.NewGuid();
                child.RoleID = roleID;
                child.ParentID = newID;
                Add(child);
                insertChilds(fID, child.ID, roleID, apps);
            }
        }
        /// <summary>
        /// 得到一个角色的根
        /// </summary>
        /// <param name="roleID"></param>
        /// <returns></returns>
        public Data.Model.RoleApp GetRootByRoleID(Guid roleID)
        {
            var roles = GetAllByRoleID(roleID);
            return roles.Find(p => p.ParentID == Guid.Empty);
        }
    }
}
