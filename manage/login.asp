<!--#include file="const.asp"-->
<%
call header()
call login()
call footer()
sub login()
	Response.Write "<P>"&_
	"<form name=login action=checkuser.asp method=post>"&_
	"ำรปงร๛ฃบ<input name=uname type=text>"&_
	"รÜกกย๋ฃบ<input name=password type=password>"&_
	"<input name=button type=submit value=ตวกกยฝ>"&_
	"</form>"&_
	"</P>"
end sub
%>
