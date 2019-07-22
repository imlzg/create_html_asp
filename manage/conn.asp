<%@language=vbscript codepage=936%>
<%option explicit%>
<%
dim conn,connstr,sqlDatabaseName,SqlPassword,SqlUsername,SqlLocalName
		SqlDatabaseName="new_createrhtml"
		SqlPassword="fenghuang"
		SqlUsername="sa"
		SqlLocalName="(local)"
set conn=server.CreateObject("adodb.connection")
	conn.ConnectionString="Provider=Sqloledb;User ID="&SqlUsername&";Password="&SqlPassword&";Initial Catalog="&SqlDatabaseName&";Data Source="&SqlLocalName&";"
	conn.open
if err then
	err.Clear
	conn.Close
	set conn=nothing
	Response.Write "数据库连接出错！"
	Response.End
end if
dim rs,cmd,finderr,errmsg

'call popedom()

sub popedom()
	dim scriptname,flags,i,flag
	scriptname=replace(Request.ServerVariables("script_name"),"/","")
	set rs=conn.Execute("createrhtml_config_get_popedom")
	flags=split(rs("popedom"),"|")
	for i=lbound(flags) to ubound(flags)
		if instr(flags(i),scriptname) then
			flag=split(flags(i),",")(1)
			exit for
		end if
	next
	if not session(ismaster) or instr(","&session("flag")&",",flag)=0 then
		errmsg=errmsg&"<br><li>本页面为管理员专用，请<a href=login.asp target=_top>登陆</a>后进入。<br><li>您没有管理本页面的权限。"
		call error()
	end if	
end sub


'		UserAgent = Trim(Lcase(Request.Servervariables("HTTP_USER_AGENT")))
'		If InStr(UserAgent,"teleport") > 0 or InStr(UserAgent,"webzip") > 0 or InStr(UserAgent,"flashget")>0 or InStr(UserAgent,"offline")>0 Then
'			Response.Write "请不要采用teleport/Webzip/Flashget/Offline等工具来浏览论坛！"
'			Response.End
'		End If

sub header()
	Response.Write "<HTML><HEAD><TITLE>添加用户</TITLE><link href=manage.css rel=stylesheet type=text/css></HEAD>"
	Response.Write "<BODY bgcolor=#FFFFFF topmargin=1 leftmargin=1>"
end sub

sub footer()
	Response.Write "</BODY></HTML>"
end sub

Sub error()
	Response.Write"<br>"
	Response.Write"<table cellpadding=3 cellspacing=1 align=center style=""width:75%"">"
	Response.Write"<tr align=center>"
	Response.Write"<th width=""100%"" height=25 colspan=2>错误信息"
	Response.Write"</td>"
	Response.Write"</tr>"
	Response.Write"<tr>"
	Response.Write"<td width=""100%"" colspan=2>"
	Response.Write errmsg
	Response.Write"</td></tr>"
	Response.Write"<tr>"
	Response.Write"<td valign=middle colspan=2 align=center><a href=""javascript:history.go(-1)""><<返回上一页</a></td></tr>"
	Response.Write"</table>"
	errmsg=""
	Response.End 
End Sub

sub nocmd()
	set cmd=nothing
end sub
sub norscmd()
	rs.close:set rs=nothing:set cmd=nothing
end sub
%>