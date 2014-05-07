using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Util;

/// <summary>
///CustomRequestValidation 的摘要说明
/// </summary>
public class CustomRequestValidation : RequestValidator
{
	public CustomRequestValidation()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    protected override bool IsValidRequestString(HttpContext context, string value, RequestValidationSource requestValidationSource, string collectionKey, out int validationFailureIndex)
    {
        //block script tags
        var idx = value.ToLower().IndexOf("<script");
        if (idx > -1)
        {
            validationFailureIndex = idx;
            return false;
        }
        else
        {
            validationFailureIndex = 0;
            return true;
        }
    }
}