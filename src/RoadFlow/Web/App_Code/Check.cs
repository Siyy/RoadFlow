using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///Check 的摘要说明
/// </summary>
public class Check
{
	public Check()
	{
		
	}

    public static bool CheckLogin(bool response=true)
    {
        object session = HttpContext.Current.Session["UserID"];
        Guid uid;
        if (session == null || !session.ToString().IsGuid(out uid))
        {
            return false;
        }

        return true;

        string uniqueIDSessionKey = Utility.Keys.SessionKeys.UserUniqueID.ToString();
        var user = new Business.Platform.OnlineUsers().Get(uid);
        if (user == null)
        {
            return false;
        }
        else if(HttpContext.Current.Session[uniqueIDSessionKey] == null)
        {
            return false; 
        }
        else if (string.Compare(HttpContext.Current.Session[uniqueIDSessionKey].ToString(), user.UniqueID.ToString(), true) != 0)
        {
            if (response)
            {
                HttpContext.Current.Response.Write("<script type='text/javascript'>");
                HttpContext.Current.Response.Write(string.Format("alert('您的帐号已经在{0}登录您被迫离线');", user.IP));
                HttpContext.Current.Response.Write("</script>");
            }
            return false;
        }
        return true;
    }

    public static bool CheckUrl()
    {
        bool check = HttpContext.Current.Request.UrlReferrer != null &&
            HttpContext.Current.Request.Url.Host.Equals(HttpContext.Current.Request.UrlReferrer.Host,
            StringComparison.CurrentCultureIgnoreCase);
        return check;
    }

    public static bool CheckApp(string appid = "")
    {
        return true;
    }
}