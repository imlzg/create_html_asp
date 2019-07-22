<!--#include file=const.asp-->
<%
call header()
call adduser()
call footer()

sub adduser()
	Response.Write ""&_
	"<table>"&_
	"<form name=adduser action=user_save.asp method=post>"&_
	"<tr><td>用户名</td><td><input name=uname type=text></td></tr>"&_
	"<tr><td>密码</td><td><input name=upassword type=text></td></tr>"&_
	"<tr><td>真实姓名</td><td><input name=truename type=text></td></tr>"&_
	"<tr><td>ＱＱ</td><td><input name=qq type=text></td></tr>"&_
	"<tr><td>EMAIL</td><td><input name=email type=text></td></tr>"&_
	"<tr><td>住址</td><td><input name=address type=text></td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
	"<input name=act type=hidden value=add></form>"&_
	"</table>"
end sub
%>