<!--#include file="conn.asp"-->
<%
dim sid,seq,url,sfname
sid=request("sid")
seq=request("seq")

if sid="" or no="" then
	call error()
end sub

call downdata()
call check()
call downUpdate()

sub check()
	dim server_vv,server_v1,server_v2
	server_vv=len(Request.ServerVariables("SERVER_NAME"))
	server_v1=left(Cstr(Request.ServerVariables("HTTP_REFERER")),server_vv)
	server_v2=left(Cstr("http://"&Request.ServerVariables("SERVER_NAME")),server_vv)
	if server_v1<>server_v2 and server_v1<>"" and server_v2<>"" then
		response.write("<script>location.href='"&sfname&"'</script>")
		response.end
	end if
end sub

sub error()
	dim error
	error="<meta http-equiv='Refresh' content='2; URL=../index.html'>"&_
	"<title>"&sitename&"</title>"&_
	"<meta http-equiv='Content-Type' content='text/html; charset=gb2312'>
	"<style>body{font-size:9pt;line-height:140%}</style>"&_
	"<body>"&_
	"<b>错误! </b>读取地址时出错 2秒后自动<a href=../index.html>返回首页</a>..."
	Response.Write error
	Response.End
end sub

sub downdata()
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_soft_get_url"
		.CommandType=4
		.Parameters.append .CreateParameter("@sid",3,1,3,sid)
		.Parameters.append .CreateParameter("@seq",3,1,3,no)
		.Parameters.append .CreateParameter("@url",200,2,255)
		.Parameters.append .CreateParameter("@sfname",200,2,50)
	end with
	cmd.execute
	url=cmd("@url")
	sfname=cmd("@sfname")
	if downurl="" then
		call error()
		exit sub
	end if
end sub

sub downUpdate()
	response.redirect url
	conn.execute("createrhtml_soft_update_down "&sid)
end sub
%>