<%@ Page Language="C#" %>
<%
    string secondtable = Request["secondtable"];
    string primarytablefiled = Request["primarytablefiled"];
    string secondtableprimarykey = Request["secondtableprimarykey"];
    string primarytablefiledvalue = Request["primarytablefiledvalue"];
    string secondtablerelationfield=Request["secondtablerelationfield"];
    string dbconnid = Request["dbconnid"];

    LitJson.JsonData data = new Business.Platform.WorkFlow().GetSubTableData(dbconnid, secondtable, secondtablerelationfield, primarytablefiledvalue, secondtableprimarykey);

    Response.Write(data.ToJson());
%>