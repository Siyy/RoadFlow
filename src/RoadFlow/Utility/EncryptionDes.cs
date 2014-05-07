using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;
namespace Utility
{
    /// <summary>
    ///EncryptionDes 的摘要说明
    /// </summary>
    public class EncryptionDes
    {
        public EncryptionDes()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        private static string Key = "X!xO@kA)";//加密密钥必须为8位
        /// <summary>
        /// 加密算法
        /// </summary>
        /// <param name="pToEncrypt"></param>
        /// <returns></returns>
        public static string Encrypt(string pToEncrypt)
        {
            if (string.IsNullOrWhiteSpace(pToEncrypt))
                return string.Empty;
            try
            {
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                byte[] inputByteArray = Encoding.Default.GetBytes(pToEncrypt);
                des.Key = ASCIIEncoding.ASCII.GetBytes(Key);
                des.IV = ASCIIEncoding.ASCII.GetBytes(Key);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                StringBuilder ret = new StringBuilder();
                foreach (byte b in ms.ToArray())
                {
                    ret.AppendFormat("{0:X2}", b);
                }
                ret.ToString();
                return ret.ToString();
            }
            catch { return ""; }

        }
        /// <summary>
        /// 解密算法
        /// </summary>
        /// <param name="pToDecrypt"></param>
        /// <returns></returns>
        public static string Decrypt(string pToDecrypt)
        {
            if (string.IsNullOrWhiteSpace(pToDecrypt))
                return string.Empty;
            try
            {
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                byte[] inputByteArray = new byte[pToDecrypt.Length / 2];
                for (int x = 0; x < pToDecrypt.Length / 2; x++)
                {
                    int i = (Convert.ToInt32(pToDecrypt.Substring(x * 2, 2), 16));
                    inputByteArray[x] = (byte)i;
                }
                des.Key = ASCIIEncoding.ASCII.GetBytes(Key);
                des.IV = ASCIIEncoding.ASCII.GetBytes(Key);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                StringBuilder ret = new StringBuilder();
                return System.Text.Encoding.Default.GetString(ms.ToArray());
            }
            catch { return ""; }
        }
    }
}