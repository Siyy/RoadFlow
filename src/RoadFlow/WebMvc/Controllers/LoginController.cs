using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebMvc.Controllers
{
    public class LoginController : Controller
    {
        //
        // GET: /Login/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            ViewBag.IsVcodeSessionKey = Utility.Keys.SessionKeys.IsValidateCode.ToString();
            ViewBag.Forcescript = "";
            return View();
        }

        [HttpPost]
        public ActionResult Login(FormCollection collection)
        {
            string isVcodeSessionKey = Utility.Keys.SessionKeys.IsValidateCode.ToString();
            string vcodeSessionKey = Utility.Keys.SessionKeys.ValidateCode.ToString();
            ViewBag.Forcescript = "";
            ViewBag.IsVcodeSessionKey = isVcodeSessionKey;
            ViewBag.ErrMsg = "";
            string account = collection["Account"];
            string password = collection["Password"];
            string force = collection["Force"];
            string vcode = collection["VCode"];

            if (System.Web.HttpContext.Current.Session[isVcodeSessionKey] != null
                && "1" == System.Web.HttpContext.Current.Session[isVcodeSessionKey].ToString()
                && (System.Web.HttpContext.Current.Session[vcodeSessionKey] == null
                || string.Compare(System.Web.HttpContext.Current.Session[vcodeSessionKey].ToString(), vcode.Trim(), true) != 0))
            {
                ViewBag.ErrMsg = "alert('验证码错误!');";
            }
            else if (account.IsNullOrEmpty() || password.IsNullOrEmpty())
            {
                Session[isVcodeSessionKey] = "1";
                Business.Platform.Log.Add("用户登录失败", string.Concat("用户:", account, "登录失败，帐号或密码为空"), Business.Platform.Log.Types.用户登录);
                ViewBag.ErrMsg = "alert('帐号或密码不能为空!');";
            }
            else
            {
                Business.Platform.Users busers = new Business.Platform.Users();
                var user = busers.GetByAccount(account.Trim());
                if (user == null || string.Compare(user.Password, busers.GetUserEncryptionPassword(user.ID.ToString(), password.Trim()), false) != 0)
                {
                    System.Web.HttpContext.Current.Session[isVcodeSessionKey] = "1";
                    Business.Platform.Log.Add("用户登录失败", string.Concat("用户:", account, "登录失败，帐号或密码错误"), Business.Platform.Log.Types.用户登录);
                    ViewBag.ErrMsg = "alert('帐号或密码错误!');";
                }
                else if (user.Status == 1)
                {
                    System.Web.HttpContext.Current.Session[isVcodeSessionKey] = "1";
                    Business.Platform.Log.Add("用户登录失败", string.Concat("用户:", account, "登录失败，帐号已被冻结"), Business.Platform.Log.Types.用户登录);
                    ViewBag.ErrMsg = "alert('帐号已被冻结!');";
                }
                else
                {
                    Business.Platform.OnlineUsers bou = new Business.Platform.OnlineUsers();
                    var onUser = bou.Get(user.ID);
                    if (onUser != null && "1" != force)
                    {
                        string ip = onUser.IP;
                        System.Web.HttpContext.Current.Session.Remove(isVcodeSessionKey);
                        ViewBag.Forcescript = "if(confirm('当前帐号已经在" + ip + "登录,您要强行登录吗?')){$('#Account').val('" + account + "');$('#Password').val('" + password + "');$('#Force').val('1');$('#form1').submit();}";
                    }
                    else
                    {
                        Guid uniqueID = Guid.NewGuid();
                        System.Web.HttpContext.Current.Session[Utility.Keys.SessionKeys.UserID.ToString()] = user.ID;
                        System.Web.HttpContext.Current.Session[Utility.Keys.SessionKeys.UserUniqueID.ToString()] = uniqueID;
                        System.Web.HttpContext.Current.Session[Utility.Keys.SessionKeys.BaseUrl.ToString()] = Url.Content("~/");
                        bou.Add(user, uniqueID);
                        System.Web.HttpContext.Current.Session.Remove(isVcodeSessionKey);
                        Business.Platform.Log.Add("用户登录成功", string.Concat("用户:", user.Name, "(", user.ID, ")登录成功"), Business.Platform.Log.Types.用户登录);
                        ViewBag.Forcescript = "top.location='" + Url.Content("~/Home") + "';";
                    }
                }
            }
            return View();
        }

        public void VCode()
        {
            string code;
            System.IO.MemoryStream ms = Utility.Tools.GetValidateImg(out code, Url.Content("~/Images/vcodebg.png"));
            System.Web.HttpContext.Current.Session[Utility.Keys.SessionKeys.ValidateCode.ToString()] = code;
            Response.ClearContent();
            Response.ContentType = "image/gif";
            Response.BinaryWrite(ms.ToArray());
        }

        public ActionResult Quit()
        {
            new Business.Platform.OnlineUsers().Remove(Business.Platform.Users.CurrentUserID);
            Session.RemoveAll();
            return RedirectToAction("Index");
        }
    }
}
