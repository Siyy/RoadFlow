using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Platform
{
    public class UsersApp
    {
        private Data.Interface.IUsersApp dataUsersApp;
        public UsersApp()
        {
            this.dataUsersApp = Data.Factory.Platform.GetUsersAppInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.UsersApp model)
        {
            return dataUsersApp.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.UsersApp model)
        {
            return dataUsersApp.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.UsersApp> GetAll()
        {
            return dataUsersApp.GetAll();
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.UsersApp Get(Guid id)
        {
            return dataUsersApp.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataUsersApp.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataUsersApp.GetCount();
        }


        /// <summary>
        /// 查询所有记录
        /// </summary>
        /// <param name="fromCache">是否使用缓存</param>
        /// <returns></returns>
        public System.Data.DataTable GetAllDataTable(bool fromCache = true)
        {
            string cacheKey = Utility.Keys.CacheKeys.UsersApp.ToString();
            if (fromCache)
            {
                object obj = MyCache.IO.Opation.Get(cacheKey);
                if (obj == null || !(obj is System.Data.DataTable))
                {
                    var dt = dataUsersApp.GetAllDataTable();
                    MyCache.IO.Opation.Insert(cacheKey, dt);
                    return dt;
                }
                else
                {
                    return (obj as System.Data.DataTable);
                }
            }
            else
            {
                return dataUsersApp.GetAllDataTable();
            }
        }

        /// <summary>
        /// 清除缓存
        /// </summary>
        public void ClearCache()
        {
            string cacheKey = Utility.Keys.CacheKeys.UsersApp.ToString();
            MyCache.IO.Opation.Remove(cacheKey);
        }

        /// <summary>
        /// 查询个人应用
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public System.Data.DataRow[] GetUserDataRows(Guid userID)
        {
            return GetAllDataTable().Select("UserID='" + userID.ToString() + "'");
        }

        /// <summary>
        /// 更新排序
        /// </summary>
        public int UpdateSort(Guid id, int sort)
        {
            return dataUsersApp.UpdateSort(id, sort);
        }

        /// <summary>
        /// 将个人应用加入列表
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="parentID">上级ID</param>
        /// <param name="appList"></param>
        public void AppendUserApps(Guid userID, Guid parentID, List<Data.Model.RoleApp> appList)
        {
            var userApps = GetUserDataRows(userID);
            foreach (var userApp in userApps)
            {
                if (userApp["ParentID"].ToString().ToGuid() == parentID)
                {
                    Data.Model.RoleApp app = new Data.Model.RoleApp();
                    app.ID = userApp["ID"].ToString().ToGuid();
                    app.AppID = userApp["AppID"].ToString().ToGuid();
                    app.Ico = userApp["Ico"].ToString();
                    app.Params = userApp["Params"].ToString();
                    app.ParentID = userApp["ParentID"].ToString().ToGuid();
                    app.RoleID = userApp["RoleID"].ToString().ToGuid();
                    app.Sort = userApp["Sort"].ToString().ToInt();
                    app.Title = userApp["Title"].ToString();
                    app.Type = 1;
                    appList.Add(app);
                }
            }
        }

        /// <summary>
        /// 将个人应用加入表(Table)
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="appDt"></param>
        public void AppendUserApps(Guid userID, System.Data.DataTable appDt)
        {
            var userApps = GetUserDataRows(userID);
            foreach (var userApp in userApps)
            {
                if (appDt.Select("ID='" + userApp["ID"].ToString() + "'").Length == 0)
                {
                    System.Data.DataRow dr = appDt.NewRow();
                    dr["ID"] = userApp["ID"];
                    dr["ParentID"] = userApp["ParentID"];
                    dr["RoleID"] = userApp["RoleID"];
                    dr["AppID"] = userApp["AppID"];
                    dr["Title"] = userApp["Title"];
                    dr["Params"] = userApp["Params"];
                    dr["Sort"] = userApp["Sort"];
                    dr["Ico"] = userApp["Ico"];
                    dr["Type"] = 1;
                    dr["Address"] = userApp["Address"];
                    dr["OpenMode"] = userApp["OpenMode"];
                    dr["Width"] = userApp["Width"];
                    dr["Height"] = userApp["Height"];
                    dr["Params1"] = userApp["Params1"];
                    dr["Manager"] = userApp["Manager"];
                    appDt.Rows.Add(dr);
                }
            }
        }

        /// <summary>
        /// 是否有下级
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool HasChild(Guid id)
        {
            return GetAllDataTable().Select("ParentID='" + id.ToString() + "'").Length > 0;
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public List<Data.Model.UsersApp> GetChilds(Guid id)
        {
            return dataUsersApp.GetChild(id);
        }

        /// <summary>
        /// 查询所有下级记录
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Data.Model.UsersApp> GetAllChilds(Guid id)
        {
            List<Data.Model.UsersApp> list = new List<Data.Model.UsersApp>();
            addChilds(id, list);
            return list;
        }

        private void addChilds(Guid id, List<Data.Model.UsersApp> list)
        {
            var childs = GetChilds(id);
            foreach (var child in childs)
            {
                list.Add(child);
                addChilds(child.ID, list);
            }
        }

        /// <summary>
        /// 删除一个记录和所有下级记录
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteAndAllChilds(Guid id)
        {
            int i = 0;
            var childs = GetAllChilds(id);
            using (System.Transactions.TransactionScope scope = new System.Transactions.TransactionScope())
            {
                foreach (var child in childs)
                {
                    i += Delete(child.ID);
                }
                i += Delete(id);
                scope.Complete();
            }
            return i;
        }

        /// <summary>
        /// 删除一个用户记录
        /// </summary>
        public int DeleteByUserID(Guid userID)
        {
            return dataUsersApp.DeleteByUserID(userID);
        }
    }
}
