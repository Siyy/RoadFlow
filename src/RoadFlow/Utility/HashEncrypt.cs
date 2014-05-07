using System;
using System.IO;
using System.Data;
using System.Text;
using System.Diagnostics;
using System.Security;
using System.Security.Cryptography;

namespace Utility
{
    /// <summary>
    /// 
    /// </summary>
    public class HashEncrypt
    {
        public HashEncrypt()
        {

        }
        //private string strIN;
        private bool isReturnNum = false;
        private bool isCaseSensitive = true;

        /**/
        /// <summary>
        /// 类初始化，此类提供MD5，SHA1，SHA256，SHA512等四种算法，加密字串的长度依次增大。
        /// </summary>
        /// <param name="IsCaseSensitive">是否区分大小写</param>
        /// <param name="IsReturnNum">是否返回为加密后字符的Byte代码</param>
        public HashEncrypt(bool IsCaseSensitive, bool IsReturnNum)
        {
            this.isReturnNum = IsReturnNum;
            this.isCaseSensitive = IsCaseSensitive;
        }

        private string getstrIN(string strIN)
        {
            //string strIN = strIN;
            if (strIN.Length == 0)
            {
                strIN = "~NULL~";
            }
            if (isCaseSensitive == false)
            {
                strIN = strIN.ToUpper();
            }
            return strIN;
        }

        public string MD5Encrypt(string strIN)
        {
            if (strIN.IsNullOrEmpty()) return string.Empty;
            //string strIN = getstrIN(strIN);
            byte[] tmpByte;
            MD5 md5 = new MD5CryptoServiceProvider();
            tmpByte = md5.ComputeHash(GetKeyByteArray(getstrIN(strIN)));
            md5.Clear();

            return GetStringValue(tmpByte);

        }

        public string SHA1Encrypt(string strIN)
        {
            if (strIN.IsNullOrEmpty()) return string.Empty;
            //string strIN = getstrIN(strIN);
            byte[] tmpByte;
            SHA1 sha1 = new SHA1CryptoServiceProvider();

            tmpByte = sha1.ComputeHash(GetKeyByteArray(strIN));
            sha1.Clear();

            return GetStringValue(tmpByte);

        }

        public string SHA256Encrypt(string strIN)
        {
            if (strIN.IsNullOrEmpty()) return string.Empty;
            //string strIN = getstrIN(strIN);
            byte[] tmpByte;
            SHA256 sha256 = new SHA256Managed();

            tmpByte = sha256.ComputeHash(GetKeyByteArray(strIN));
            sha256.Clear();

            return GetStringValue(tmpByte);

        }

        public string SHA512Encrypt(string strIN)
        {
            if (strIN.IsNullOrEmpty()) return string.Empty;
            //string strIN = getstrIN(strIN);
            byte[] tmpByte;
            SHA512 sha512 = new SHA512Managed();

            tmpByte = sha512.ComputeHash(GetKeyByteArray(strIN));
            sha512.Clear();

            return GetStringValue(tmpByte);

        }
        private string GetStringValue(byte[] Byte)
        {
            string tmpString = "";
            if (this.isReturnNum == false)
            {
                ASCIIEncoding Asc = new ASCIIEncoding();
                tmpString = Asc.GetString(Byte);
            }
            else
            {
                int iCounter;
                for (iCounter = 0; iCounter < Byte.Length; iCounter++)
                {
                    tmpString = tmpString + Byte[iCounter].ToString();
                }
            }
            return tmpString;
        }

        private byte[] GetKeyByteArray(string strKey)
        {
            ASCIIEncoding Asc = new ASCIIEncoding();

            int tmpStrLen = strKey.Length;
            byte[] tmpByte = new byte[tmpStrLen - 1];

            tmpByte = Asc.GetBytes(strKey);
            return tmpByte;
        }

        /// <summary>
        /// .net系统的MD5加密方法
        /// </summary>
        /// <param name="strIN"></param>
        /// <returns></returns>
        public string MD5System(string strIN)
        {
            return strIN.IsNullOrEmpty() ? "" : System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(strIN, "MD5");
        }

    }
}