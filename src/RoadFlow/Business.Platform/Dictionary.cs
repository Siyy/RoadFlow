using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Business.Platform
{
    public class Dictionary
    {
        private Data.Interface.IDictionary dataDictionary;
        private static string cacheKey = Utility.Keys.CacheKeys.Dictionary.ToString();
        public Dictionary()
        {
            this.dataDictionary = Data.Factory.Platform.GetDictionaryInstance();
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Add(Data.Model.Dictionary model)
        {
            return dataDictionary.Add(model);
        }
        /// <summary>
        /// 更新
        /// </summary>
        public int Update(Data.Model.Dictionary model)
        {
            return dataDictionary.Update(model);
        }
        /// <summary>
        /// 查询所有记录
        /// </summary>
        public List<Data.Model.Dictionary> GetAll(bool fromCache=false)
        {
            if (!fromCache)
            {
                return dataDictionary.GetAll();
            }
            else
            {
                object obj = MyCache.IO.Opation.Get(cacheKey);
                if (obj != null && obj is List<Data.Model.Dictionary>)
                {
                    return obj as List<Data.Model.Dictionary>;
                }
                else
                {
                    var list = dataDictionary.GetAll();
                    MyCache.IO.Opation.Set(cacheKey, list);
                    return list;
                }
            }
        }
        /// <summary>
        /// 查询单条记录
        /// </summary>
        public Data.Model.Dictionary Get(Guid id, bool fromCache = false)
        {
            return fromCache ? GetAll(true).Find(p => p.ID == id) : dataDictionary.Get(id);
        }
        /// <summary>
        /// 删除
        /// </summary>
        public int Delete(Guid id)
        {
            return dataDictionary.Delete(id);
        }
        /// <summary>
        /// 查询记录条数
        /// </summary>
        public long GetCount()
        {
            return dataDictionary.GetCount();
        }

        /// <summary>
        /// 查询根记录
        /// </summary>
        public Data.Model.Dictionary GetRoot()
        {
            return dataDictionary.GetRoot();
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public List<Data.Model.Dictionary> GetChilds(Guid id, bool fromCache=false)
        {
            return fromCache ? getChildsByIDFromCache(id) : dataDictionary.GetChilds(id);
        }

        /// <summary>
        /// 查询下级记录
        /// </summary>
        public List<Data.Model.Dictionary> GetChilds(string code, bool fromCache=false)
        {
            return code.IsNullOrEmpty() ? new List<Data.Model.Dictionary>() :
                fromCache ? getChildsByCodeFromCache(code) :
                dataDictionary.GetChilds(code.Trim());
        }

        private List<Data.Model.Dictionary> getChildsByCodeFromCache(string code)
        {
            var list = GetAll(true);
            var dict = list.Find(p => string.Compare(p.Code, code, true) == 0);
            return dict == null ? new List<Data.Model.Dictionary>() : list.FindAll(p => p.ParentID == dict.ID).OrderBy(p=>p.Sort).ToList();
        }

        private List<Data.Model.Dictionary> getChildsByIDFromCache(Guid id)
        {
            var list = GetAll(true);
            return list.FindAll(p => p.ParentID == id).OrderBy(p=>p.Sort).ToList();
        }

        /// <summary>
        /// 得到所有下级
        /// </summary>
        /// <param name="code"></param>
        /// <param name="fromCache">是否使用缓存</param>
        /// <returns></returns>
        public List<Data.Model.Dictionary> GetAllChilds(string code, bool fromCache)
        {
            if (code.IsNullOrEmpty()) return new List<Data.Model.Dictionary>();
            var dict = GetByCode(code, fromCache);
            if (dict == null) return new List<Data.Model.Dictionary>();
            return GetAllChilds(dict.ID, fromCache);
        }

        /// <summary>
        /// 得到所有下级
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fromCache">是否使用缓存</param>
        /// <returns></returns>
        public List<Data.Model.Dictionary> GetAllChilds(Guid id, bool fromCache=false)
        {
            List<Data.Model.Dictionary> list = new List<Data.Model.Dictionary>();
            addChilds(list, id, fromCache);
            return list;
        }

        private void addChilds(List<Data.Model.Dictionary> list, Guid id, bool fromCache=false)
        {
            var childs = fromCache ? getChildsByIDFromCache(id) : GetChilds(id);
            foreach (var child in childs)
            {
                list.Add(child);
                addChilds(list, child.ID, fromCache);
            }
        }

        /// <summary>
        /// 得到一个项的所有下级项ID字符串
        /// </summary>
        /// <param name="id"></param>
        /// <param name="isSelf">是否包含自己</param>
        /// <returns></returns>
        public string GetAllChildsIDString(Guid id, bool isSelf = true)
        {
            StringBuilder sb = new StringBuilder();
            if (isSelf)
            {
                sb.Append(id);
                sb.Append(",");
            }
            var childs = GetAllChilds(id, true);
            foreach (var child in childs)
            {
                sb.Append(child.ID);
                sb.Append(",");
            }
            return sb.ToString().TrimEnd(',');
        }

        /// <summary>
        /// 查询上级记录
        /// </summary>
        public Data.Model.Dictionary GetParent(Guid id)
        {
            return dataDictionary.GetParent(id);
        }

        /// <summary>
        /// 是否包含下级记录
        /// </summary>
        public bool HasChilds(Guid id)
        {
            return dataDictionary.HasChilds(id);
        }

        /// <summary>
        /// 得到最大排序
        /// </summary>
        public int GetMaxSort(Guid id)
        {
            return dataDictionary.GetMaxSort(id);
        }

        /// <summary>
        /// 更新排序
        /// </summary>
        public int UpdateSort(Guid id, int sort)
        {
            return dataDictionary.UpdateSort(id, sort);
        }

        /// <summary>
        /// 根据代码查询一条记录
        /// </summary>
        /// <param name="code"></param>
        /// <param name="fromCache">是否使用缓存</param>
        /// <returns></returns>
        public Data.Model.Dictionary GetByCode(string code, bool fromCache=false)
        {
            return code.IsNullOrEmpty() ? null :
                fromCache ? GetAll(true).Find(p => string.Compare(p.Code, code, true) == 0) : dataDictionary.GetByCode(code.Trim());
        }

        /// <summary>
        /// 下拉选项时以哪个字段作为值字段
        /// </summary>
        public enum OptionValueField
        { 
            ID,
            Title,
            Code,
            Value,
            Other,
            Note
        }

        /// <summary>
        /// 根据ID得到选项
        /// </summary>
        /// <param name="id"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public string GetOptionsByID(Guid id, OptionValueField valueField = OptionValueField.Value, string value = "")
        {
            var childs = GetAllChilds(id, true);
            StringBuilder options = new StringBuilder(childs.Count * 100);
            StringBuilder space = new StringBuilder();
            foreach (var child in childs)
            {
                space.Clear();
                int parentCount = getParentCount(childs, child);
                
                for (int i = 0; i < parentCount-1; i++)
                {
                    space.Append("&nbsp;&nbsp;");
                }
                
                if (parentCount > 0)
                {
                    space.Append("┝");
                }
                string value1 = getOptionsValue(valueField, child);
                options.AppendFormat("<option value=\"{0}\"{1}>{2}{3}</option>" + parentCount, value1, value1 == value ? " selected=\"selected\"" : "", space.ToString(), child.Title);
            }
            return options.ToString();
        }


        /// <summary>
        /// 得到一个字典项的上级节点数
        /// </summary>
        /// <param name="dictList"></param>
        /// <param name="dict"></param>
        /// <returns></returns>
        private int getParentCount(List<Data.Model.Dictionary> dictList, Data.Model.Dictionary dict)
        {
            int parent = 0;
            Data.Model.Dictionary parentDict = dictList.Find(p => p.ID == dict.ParentID);
            while (parentDict != null)
            {
                parentDict = dictList.Find(p => p.ID == parentDict.ParentID);
                parent++;
            }
            return parent;
        }

        /// <summary>
        /// 根据代码得到选项
        /// </summary>
        /// <param name="id"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public string GetOptionsByCode(string code, OptionValueField valueField = OptionValueField.Value, string value="")
        {
            return GetOptionsByID(GetIDByCode(code), valueField, value);
        }

        /// <summary>
        /// 根据ID得到单选项
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name">名称</param>
        /// <param name="valueField"></param>
        /// <param name="value"></param>
        /// <param name="attr">其它属性</param>
        /// <returns></returns>
        public string GetRadiosByID(Guid id, string name, OptionValueField valueField = OptionValueField.Value, string value = "", string attr = "")
        {
            var childs = GetChilds(id, true);
            return getRadios(childs, name, valueField, value, attr);
        }

        /// <summary>
        /// 根据代码得到单选项
        /// </summary>
        /// <param name="code"></param>
        /// <param name="name">名称</param>
        /// <param name="valueField"></param>
        /// <param name="value"></param>
        /// <param name="attr">其它属性</param>
        /// <returns></returns>
        public string GetRadiosByCode(string code, string name, OptionValueField valueField = OptionValueField.Value, string value = "", string attr="")
        {
            if (code.IsNullOrEmpty()) return "";
            var childs = GetChilds(code.Trim(), true);
            return getRadios(childs, name, valueField, value, attr);
        }

        private string getRadios(List<Data.Model.Dictionary> childs, string name, OptionValueField valueField = OptionValueField.Value, string value = "", string attr = "")
        {
            StringBuilder options = new StringBuilder(childs.Count * 100);
            foreach (var child in childs)
            {
                string value1 = getOptionsValue(valueField, child);
                options.Append("<input type=\"radio\" style=\"vertical-align:middle;\" ");
                options.AppendFormat("id=\"{0}_{1}\" ", name, child.ID.ToString("N"));
                options.AppendFormat("name=\"{0}\" ", name);
                options.AppendFormat("value=\"{0}\" ", value1);
                options.Append(string.Compare(value, value1, true) == 0 ? "checked=\"checked\"" : "");
                options.Append(attr);
                options.Append("/>");
                options.AppendFormat("<label style=\"vertical-align:middle;margin-right:3px;\" for=\"{0}_{1}\">{2}</label>", name, child.ID.ToString("N"), child.Title);
            }
            return options.ToString();
        }

        /// <summary>
        /// 根据ID得到多选项
        /// </summary>
        /// <param name="code"></param>
        /// <param name="name">名称</param>
        /// <param name="valueField"></param>
        /// <param name="value"></param>
        /// <param name="attr">其它属性</param>
        /// <returns></returns>
        public string GetCheckboxsByID(Guid id, string name, OptionValueField valueField = OptionValueField.Value, string value = "", string attr = "")
        {
            var childs = GetChilds(id, true);
            return getCheckboxs(childs, name, valueField, value, attr);
        }

        /// <summary>
        /// 根据代码得到多选项
        /// </summary>
        /// <param name="code"></param>
        /// <param name="name">名称</param>
        /// <param name="valueField"></param>
        /// <param name="value"></param>
        /// <param name="attr">其它属性</param>
        /// <returns></returns>
        public string GetCheckboxsByCode(string code, string name, OptionValueField valueField = OptionValueField.Value, string value = "", string attr = "")
        {
            if (code.IsNullOrEmpty()) return "";
            var childs = GetChilds(code.Trim(), true);
            return getCheckboxs(childs, name, valueField, value, attr);
        }

        private string getCheckboxs(List<Data.Model.Dictionary> childs, string name, OptionValueField valueField = OptionValueField.Value, string value = "", string attr = "")
        {
            StringBuilder options = new StringBuilder(childs.Count * 100);
            foreach (var child in childs)
            {
                string value1 = getOptionsValue(valueField, child);
                options.Append("<input type=\"checkbox\" style=\"vertical-align:middle;\" ");
                options.AppendFormat("id=\"{0}_{1}\" ", name, child.ID.ToString("N"));
                options.AppendFormat("name=\"{0}\" ", name);
                options.AppendFormat("value=\"{0}\" ", value1);
                options.Append(string.Compare(value, value1, true) == 0 ? "checked=\"checked\"" : "");
                options.Append(attr);
                options.Append("/>");
                options.AppendFormat("<label style=\"vertical-align:middle;margin-right:3px;\" for=\"{0}_{1}\">{2}</label>", name, child.ID.ToString("N"), child.Title);
            }
            return options.ToString();
        }

        private string getOptionsValue(OptionValueField valueField, Data.Model.Dictionary dict)
        {
            string value = string.Empty;
            switch (valueField)
            { 
                case OptionValueField.Code:
                    value = dict.Code;
                    break;
                case OptionValueField.ID:
                    value = dict.ID.ToString();
                    break;
                case OptionValueField.Note:
                    value = dict.Note;
                    break;
                case OptionValueField.Other:
                    value = dict.Other;
                    break;
                case OptionValueField.Title:
                    value = dict.Title;
                    break;
                case OptionValueField.Value:
                    value = dict.Value;
                    break;
            }
            return value;
        }

        /// <summary>
        /// 刷新字典缓存
        /// </summary>
        public void RefreshCache()
        {
            MyCache.IO.Opation.Set(cacheKey, GetAll());
        }

        /// <summary>
        /// 检查代码是否存在
        /// </summary>
        /// <param name="code"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool HasCode(string code, string id="")
        {
            if (code.IsNullOrEmpty())
            {
                return false;
            }
            var dict = GetByCode(code.Trim());
            Guid gid;
            if (dict == null)
            {
                return false;
            }
            else
            {
                if (id.IsGuid(out gid) && dict.ID == gid)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
        }

        /// <summary>
        /// 删除一个字典及其所有下级
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int DeleteAndAllChilds(Guid id)
        {
            int i = 0;
            var childs = GetAllChilds(id);
            foreach (var child in childs)
            {
                Delete(child.ID);
                i++;
            }
            Delete(id);
            i++;
            return i;
        }

        /// <summary>
        /// 得到标题
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string GetTitle(Guid id)
        {
            var dict = Get(id, true);
            return dict == null ? "" : dict.Title;
        }
        /// <summary>
        /// 得到标题
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string GetTitle(string code)
        {
            if (code.IsNullOrEmpty()) return "";
            var dict = GetByCode(code.Trim(), true);
            return dict == null ? "" : dict.Title;
        }
        /// <summary>
        /// 得到标题
        /// </summary>
        /// <param name="code"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public string GetTitle(string code, string value)
        {
            if (code.IsNullOrEmpty()) return "";
            var childs = getChildsByCodeFromCache(code.Trim());
            var child = childs.Find(p => p.Value == value);
            return child == null ? "" : child.Title;
        }

        /// <summary>
        /// 根据代码得到ID
        /// </summary>
        /// <param name="code"></param>
        /// <returns></returns>
        public Guid GetIDByCode(string code)
        {
            var dict = GetByCode(code, true);
            return dict == null ? Guid.Empty : dict.ID;
        }
    }
}
