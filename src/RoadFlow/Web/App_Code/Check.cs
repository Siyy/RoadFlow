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
        object session = System.Web.HttpContext.Current.Session[Utility.Keys.SessionKeys.UserID.ToString()];
        Guid uid;
        if (session == null || !session.ToString().IsGuid(out uid) || uid == Guid.Empty)
        {
            return false;
        }

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
                HttpContext.Current.Response.Write("<script type='text/javascript'>alert('您的帐号在" + user.IP + "登录,您被迫下线!');top.location='/Login';</script>");
                HttpContext.Current.Response.End();
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