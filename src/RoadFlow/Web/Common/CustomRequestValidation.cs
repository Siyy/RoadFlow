using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Util;

namespace WebMvc.Common
{
    public class CustomRequestValidation : RequestValidator
    {
        protected override bool IsValidRequestString(HttpContext context, string value, RequestValidationSource requestValidationSource, string collectionKey, out int validationFailureIndex)
        {
            //var idx = value.ToLower().IndexOf("<script");
            //if (idx > -1)
            //{
            //    validationFailureIndex = idx;
            //    return false;
            //}
            //else
            //{
            //    validationFailureIndex = 0;
            //    return true;
            //}
            validationFailureIndex = 0;
            return true;
        }
    }
}