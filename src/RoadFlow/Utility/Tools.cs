using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Web;

namespace Utility
{
    public class Tools
    {
        [Obsolete("请用Utility.DateTimeNew.Now", true)]
        public static DateTime DateTime
        {
            get
            {
                return DateTimeNew.Now;
            }
        }

        public static System.IO.MemoryStream GetValidateImg(out string code)
        {
            code = GetValidateCode();
            Random rnd = new Random();
            System.Drawing.Bitmap img = new System.Drawing.Bitmap((int)Math.Ceiling((code.Length * 17.2)), 28);
            System.Drawing.Image bg = System.Drawing.Bitmap.FromFile(HttpContext.Current.Server.MapPath("/Images/vcodebg.png"));
            System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(img);
            System.Drawing.Font font = new System.Drawing.Font("Arial", 16, (System.Drawing.FontStyle.Regular | System.Drawing.FontStyle.Italic));
            System.Drawing.Font fontbg = new System.Drawing.Font("Arial", 16, (System.Drawing.FontStyle.Regular | System.Drawing.FontStyle.Italic));
            System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(new System.Drawing.Rectangle(0, 0, img.Width, img.Height), System.Drawing.Color.Blue, System.Drawing.Color.DarkRed, 1.2f, true);
            g.DrawImage(bg, 0, 0, new System.Drawing.Rectangle(rnd.Next(bg.Width - img.Width), rnd.Next(bg.Height - img.Height), img.Width, img.Height), System.Drawing.GraphicsUnit.Pixel);
            g.DrawString(code, fontbg, System.Drawing.Brushes.White, 0, 1);
            g.DrawString(code, font, System.Drawing.Brushes.Green, 0, 1);//字颜色

            //画图片的背景噪音线 
            int x = img.Width;
            int y1 = rnd.Next(5, img.Height);
            int y2 = rnd.Next(5, img.Height);
            g.DrawLine(new System.Drawing.Pen(System.Drawing.Color.Green, 2), 1, y1, x - 2, y2);


            g.DrawRectangle(new System.Drawing.Pen(System.Drawing.Color.Transparent), 0, 10, img.Width - 1, img.Height - 1);
            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            img.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
            return ms;
        }

        private static string GetValidateCode()
        {    //产生五位的随机字符串
            int number;
            char code;
            string checkCode = String.Empty;
            System.Random random = new Random();

            for (int i = 0; i < 4; i++)
            {
                number = random.Next();

                if (number % 2 == 0)
                    code = (char)('0' + (char)(number % 10));
                else if (number % 3 == 0)
                    code = (char)('a' + (char)(number % 26));
                else
                    code = (char)('A' + (char)(number % 26));
                checkCode += code == '0' || code == 'O' ? "x" : code.ToString();
            }
            return checkCode;
        }

        /// <summary>
        /// 获取远程浏览器端 IP 地址
        /// </summary>
        /// <returns>返回 IPv4 地址</returns>
        public static string GetIPAddress()
        {
            string userHostAddress = HttpContext.Current.Request.UserHostAddress;
            if (userHostAddress.IsNullOrEmpty())
            {
                userHostAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }
            return userHostAddress;
        }

        /// <summary>
        /// 得到用户浏览器类型
        /// </summary>
        /// <returns></returns>
        public static string GetBrowse()
        {
            return System.Web.HttpContext.Current.Request.Browser.Type;
        }

        /// <summary>
        /// 获取浏览器端操作系统名称
        /// </summary>
        /// <returns></returns>
        public static string GetOSName()
        {
            string osVersion = System.Web.HttpContext.Current.Request.Browser.Platform;
            string userAgent = System.Web.HttpContext.Current.Request.UserAgent;

            if (userAgent.Contains("NT 6.2"))
            {
                osVersion = "Windows8/Server 2012";
            }
            if (userAgent.Contains("NT 6.1"))
            {
                osVersion = "Windows7/Server 2008 R2";
            }
            else if (userAgent.Contains("NT 6.0"))
            {
                osVersion = "Windows Vista/Server 2008";
            }
            else if (userAgent.Contains("NT 5.2"))
            {
                osVersion = "Windows Server 2003";
            }
            else if (userAgent.Contains("NT 5.1"))
            {
                osVersion = "WindowsXP";
            }
            else if (userAgent.Contains("NT 5"))
            {
                osVersion = "Windows2000";
            }
            else if (userAgent.Contains("NT 4"))
            {
                osVersion = "WindowsNT4.0";
            }
            else if (userAgent.Contains("Me"))
            {
                osVersion = "WindowsMe";
            }
            else if (userAgent.Contains("98"))
            {
                osVersion = "Windows98";
            }
            else if (userAgent.Contains("95"))
            {
                osVersion = "Windows95";
            }
            else if (userAgent.Contains("Mac"))
            {
                osVersion = "Mac";
            }
            else if (userAgent.Contains("Unix"))
            {
                osVersion = "UNIX";
            }
            else if (userAgent.Contains("Linux"))
            {
                osVersion = "Linux";
            }
            else if (userAgent.Contains("SunOS"))
            {
                osVersion = "SunOS";
            }
            return osVersion;
        }


        /// <summary>
        /// 得到分页HTML
        /// </summary>
        /// <param name="recordCount">记录总数</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="pageNumber">当前页</param>
        /// <param name="queryString">查询字符串</param>
        /// <returns></returns>
        public static string GetPagerHtml(long recordCount, int pageSize, int pageNumber, string queryString)
        {

            //得到共有多少页
            long PageCount = recordCount <= 0 ? 1 : recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize + 1;

            long pNumber = pageNumber;
            if (pNumber < 1)
            {
                pNumber = 1;
            }
            else if (pNumber > PageCount)
            {
                pNumber = PageCount;
            }

            //如果只有一页则返回空分页字符串
            if (PageCount <= 1)
            {
                return "";
            }

            StringBuilder ReturnPagerString = new StringBuilder(1500);
            string JsFunctionName = string.Empty;

            //构造分页字符串
            int DisplaySize = 10;//中间显示的页数
            ReturnPagerString.Append("<div>");
            ReturnPagerString.Append("<span style='margin-right:15px;'>共 " + recordCount.ToString() + " 条  每页 <input type='text' id='tnt_count' title='输入数字可改变每页显示条数' class='pagertxt' onchange=\"javascript:_toPage_" + JsFunctionName + "(" + pNumber.ToString() + ",this.value);\" value='" + pageSize.ToString() + "' /> 条  ");
            ReturnPagerString.Append("转到 <input type='text' id='paernumbertext' title='输入数字可跳转页' value=\"" + pNumber.ToString() + "\" onchange=\"javascript:_toPage_" + JsFunctionName + "(this.value," + pageSize.ToString() + ");\" class='pagertxt'/> 页</span>");
            if (pNumber > 1)
                ReturnPagerString.Append("<a class=\"pager\" href=\"javascript:_toPage_" + JsFunctionName + "(" + (pNumber - 1).ToString() + "," + pageSize.ToString() + ");\"><span class=\"pagerarrow\">«</span></a>");
            //添加第一页
            if (pNumber >= DisplaySize / 2 + 3)
                ReturnPagerString.Append("<a class=\"pager\" href=\"javascript:_toPage_" + JsFunctionName + "(1," + pageSize.ToString() + ");\">1…</a>");
            else
                ReturnPagerString.Append("<a class=\"" + (1 == pNumber ? "pagercurrent" : "pager") + "\" href=\"javascript:_toPage_" + JsFunctionName + "(1," + pageSize.ToString() + ");\">1</a>");

            //添加中间数字
            long star = pNumber - DisplaySize / 2;
            long end = pNumber + DisplaySize / 2;
            if (star < 2)
            {
                end += 2 - star;
                star = 2;
            }
            if (end > PageCount - 1)
            {
                star -= end - (PageCount - 1);
                end = PageCount - 1;
            }
            if (star < 2)
                star = 2;

            for (long i = star; i <= end; i++)
                ReturnPagerString.Append("<a class=\"" + (i == pNumber ? "pagercurrent" : "pager") + "\" href=\"javascript:_toPage_" + JsFunctionName + "(" + i.ToString() + "," + pageSize.ToString() + ");\">" + i.ToString() + "</a>");
            //添加最后页
            if (pNumber <= PageCount - (DisplaySize / 2))
                ReturnPagerString.Append("<a class=\"pager\" href=\"javascript:_toPage_" + JsFunctionName + "(" + PageCount.ToString() + "," + pageSize.ToString() + ");\">…" + PageCount.ToString() + "</a>");
            else if (PageCount > 1)
                ReturnPagerString.Append("<a class=\"" + (PageCount == pNumber ? "pagercurrent" : "pager") + "\" href=\"javascript:_toPage_" + JsFunctionName + "(" + PageCount.ToString() + "," + pageSize.ToString() + ");\">" + PageCount.ToString() + "</a>");
            if (pNumber < PageCount)
                ReturnPagerString.Append("<a class=\"pager\" href=\"javascript:_toPage_" + JsFunctionName + "(" + (pNumber + 1).ToString() + "," + pageSize.ToString() + ");\"><span class=\"pagerarrow\">»</span></a>");
            ReturnPagerString.Append("</div>");
            //构造分页JS函数
            ReturnPagerString.Append("<script type=\"text/javascript\" lanuage=\"javascript\">");
            ReturnPagerString.Append("function _toPage_" + JsFunctionName + "(page,size){");
            ReturnPagerString.Append("var par=\"" + queryString + "\";");

            ReturnPagerString.Append("window.location=\"?pagenumber=\"+page+\"&pagesize=\"+size+par;");

            ReturnPagerString.Append("}");
            ReturnPagerString.Append("</script>");
            return ReturnPagerString.ToString();
        }

        /// <summary>
        /// 得到页尺寸
        /// </summary>
        /// <returns></returns>
        public static int GetPageSize()
        {
            string size = System.Web.HttpContext.Current.Request["pagesize"] ?? "15";
            int size1;
            return size.IsInt(out size1) ? size1 : 15;
        }

        /// <summary>
        /// 得到页号
        /// </summary>
        /// <returns></returns>
        public static int GetPageNumber()
        {
            string number = System.Web.HttpContext.Current.Request["pagenumber"] ?? "1";
            int number1;
            return number.IsInt(out number1) ? number1 : 1;
        }

        
        /// <summary>
        /// 得到列表项
        /// </summary>
        /// <param name="list">列表, 标题,值</param>
        /// <param name="value">默认值</param>
        /// <param name="showEmpty">是不显示空选项</param>
        /// <param name="emptyTitle">空选项显示标题</param>
        /// <returns></returns>
        public static System.Web.UI.WebControls.ListItem[] GetListItems(IList<string[]> list, string value, bool showEmpty = false, string emptyTitle = "")
        {
            List<System.Web.UI.WebControls.ListItem> items = new List<System.Web.UI.WebControls.ListItem>();
            if (showEmpty)
            {
                items.Add(new System.Web.UI.WebControls.ListItem(emptyTitle, ""));
            }
            foreach (var li in list)
            {
                if (li.Length < 2)
                {
                    continue;
                }
                var item = new System.Web.UI.WebControls.ListItem(li[0], li[1]);
                item.Selected = !value.IsNullOrEmpty() && value == li[1] && !items.Exists(p => p.Selected);
                items.Add(item);
            }
            return items.ToArray();
        }

        public static System.Web.UI.WebControls.ListItem[] GetListItems(IList<string> list, string value, bool showEmpty = false, string emptyTitle = "")
        {
            List<string[]> newList = new List<string[]>();
            foreach (string str in list)
            {
                newList.Add(new string[] { str, str });
            }
            return GetListItems(newList, value, showEmpty, emptyTitle);
        }
        /// <summary>
        /// 将服务器控件列表项转换为select列表项
        /// </summary>
        /// <param name="items"></param>
        /// <returns></returns>
        public static string GetOptionsString(System.Web.UI.WebControls.ListItem[] items)
        {
            StringBuilder options = new StringBuilder(items.Length * 50);
            foreach (var item in items)
            {
                options.AppendFormat("<option value=\"{0}\" {1}>", item.Value.Replace("\"","'"), item.Selected ? "selected=\"selected\"" : "");
                options.Append(item.Text);
                options.Append("</option>");
            }
            return options.ToString();
        }
        /// <summary>
        /// 将服务器控件列表项转换为Checkbox项
        /// </summary>
        /// <param name="items"></param>
        /// <returns></returns>
        public static string GetCheckBoxString(System.Web.UI.WebControls.ListItem[] items, string name, string[] values, string otherAttr = "")
        {
            StringBuilder options = new StringBuilder(items.Length * 50);
            foreach (var item in items)
            {
                string tempid = Guid.NewGuid().ToString("N");
                options.AppendFormat("<input type=\"checkbox\" value=\"{0}\" {1} id=\"{2}\" name=\"{3}\" {4} style=\"vertical-align:middle\" />",
                    item.Value.Replace("\"", "'"),
                    values != null && values.Contains(item.Value) ? "checked=\"checked\"" : "",
                    string.Format("{0}_{1}", name, tempid),
                    name,
                    otherAttr
                    );
                options.AppendFormat("<label style=\"vertical-align:middle;margin-right:2px;\" for=\"{0}\">", string.Format("{0}_{1}", name, tempid));
                options.Append(item.Text);
                options.Append("</label>");
            }
            return options.ToString();
        }
        /// <summary>
        /// 将服务器控件列表项转换为Radio项
        /// </summary>
        /// <param name="items"></param>
        /// <returns></returns>
        public static string GetRadioString(System.Web.UI.WebControls.ListItem[] items, string name, string otherAttr = "")
        {
            StringBuilder options = new StringBuilder(items.Length * 50);
            foreach (var item in items)
            {
                string tempid = Guid.NewGuid().ToString("N");
                options.AppendFormat("<input type=\"radio\" value=\"{0}\" {1} id=\"{2}\" name=\"{3}\" {4} style=\"vertical-align:middle\" />",
                    item.Value.Replace("\"", "'"),
                    item.Selected ? "checked=\"checked\"" : "",
                    string.Format("{0}_{1}", name, tempid),
                    name,
                    otherAttr
                    );
                options.AppendFormat("<label style=\"vertical-align:middle;margin-right:2px;\" for=\"{0}\">", string.Format("{0}_{1}", name, tempid));
                options.Append(item.Text);
                options.Append("</label>");
            }
            return options.ToString();
        }
        /// <summary>
        /// 得到是否选择项
        /// </summary>
        /// <param name="value"></param>
        /// <param name="showEmpty"></param>
        /// <param name="emptyString"></param>
        /// <returns></returns>
        public static System.Web.UI.WebControls.ListItem[] GetYesNoListItems(string value, bool showEmpty = false, string emptyString = "")
        {
            List<string[]> list = new List<string[]>();
            list.Add(new string[] { "是", "1" });
            list.Add(new string[] { "否", "0" });
            return GetListItems(list, value, showEmpty, emptyString);
        }

        /// <summary>
        /// 得到sql语句in里的字符串
        /// </summary>
        /// <param name="str">字符串</param>
        /// <returns></returns>
        public static string GetSqlInString(string str, bool isSingleQuotes = true, string split = ",")
        {
            string[] strArray = str.Split(new string[] { split }, StringSplitOptions.RemoveEmptyEntries);

            return GetSqlInString(strArray, isSingleQuotes);
        }

        /// <summary>
        /// 得到sql语句in里的字符串
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="strArray"></param>
        /// <param name="isSingleQuotes">是否加单引号，字符串要加，数字不加</param>
        /// <returns></returns>
        public static string GetSqlInString<T>(T[] strArray, bool isSingleQuotes = true)
        {
            StringBuilder inStr = new StringBuilder(strArray.Length * 40);
            foreach (var s in strArray)
            {
                if (s.ToString().IsNullOrEmpty())
                {
                    continue;
                }
                if (isSingleQuotes)
                {
                    inStr.Append("'");
                }
                inStr.Append(s.ToString().Trim());
                if (isSingleQuotes)
                {
                    inStr.Append("'");
                }
                inStr.Append(",");

            }
            return inStr.ToString().TrimEnd(',');
        }

        /// <summary>
        /// 产生不重复随机数
        /// </summary>
        /// <param name="count">共产生多少随机数</param>
        /// <param name="minValue">最小值</param>
        /// <param name="maxValue">最大值</param>
        /// <returns>int[]数组</returns>
        public static int[] GetRandomNum(int count, int minValue, int maxValue)
        {
            Random rnd = new Random(Guid.NewGuid().GetHashCode());

            int length = maxValue - minValue + 1;
            byte[] keys = new byte[length];
            rnd.NextBytes(keys);
            int[] items = new int[length];
            for (int i = 0; i < length; i++)
            {
                items[i] = i + minValue;
            }
            Array.Sort(keys, items);
            int[] result = new int[count];
            Array.Copy(items, result, count);
            return result;
        }

        /// <summary>
        /// 产生随机字符串
        /// </summary>
        /// <returns>字符串位数</returns> 
        public static string GetRandomString(int length = 5)
        {
            int number;
            char code;
            string checkCode = String.Empty;
            System.Random random = new Random(Guid.NewGuid().GetHashCode());

            for (int i = 0; i < length + 1; i++)
            {
                number = random.Next();

                if (number % 2 == 0)
                    code = (char)('0' + (char)(number % 10));
                else
                    code = (char)('A' + (char)(number % 26));
                checkCode += code.ToString();
            }
            return checkCode;
        }
        /// <summary>
        /// 产生随机字母
        /// </summary>
        /// <returns>字符串位数</returns>
        public static string GetRandomLetter(int length = 2)
        {
            int number;
            char code;
            string checkCode = String.Empty;
            System.Random random = new Random(Guid.NewGuid().GetHashCode());
            for (int i = 0; i < length; i++)
            {
                number = random.Next();
                code = (char)('A' + (char)(number % 26));
                checkCode += code.ToString();
            }
            return checkCode;
        }

        /// <summary>
        /// 得到一个文件的大小
        /// </summary>
        /// <returns></returns>
        public static string GetFileSize(string file)
        {
            if (!System.IO.File.Exists(file))
            {
                return "";
            }
            System.IO.FileInfo fi = new System.IO.FileInfo(file);

            return fi.Length.ToString("###,###");
        }
    }
}
