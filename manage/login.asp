<!--#include file="const.asp"-->
<%
call header()
call login()
call footer()
sub login()
	Response.Write "<P>"&_
	"<form name=login action=checkuser.asp method=post>"&_
	"�û�����<input name=uname type=text>"&_
	"�ܡ��룺<input name=password type=password>"&_
	"<input name=button type=submit value=�ǡ�½>"&_
	"</form>"&_
	"</P>"
end sub
%>
