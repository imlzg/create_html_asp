<!--#include file=const.asp-->
<%
call header()
call adduser()
call footer()

sub adduser()
	Response.Write ""&_
	"<table>"&_
	"<form name=adduser action=user_save.asp method=post>"&_
	"<tr><td>�û���</td><td><input name=uname type=text></td></tr>"&_
	"<tr><td>����</td><td><input name=upassword type=text></td></tr>"&_
	"<tr><td>��ʵ����</td><td><input name=truename type=text></td></tr>"&_
	"<tr><td>�ѣ�</td><td><input name=qq type=text></td></tr>"&_
	"<tr><td>EMAIL</td><td><input name=email type=text></td></tr>"&_
	"<tr><td>סַ</td><td><input name=address type=text></td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=�ᡡ��></td></tr>"&_
	"<input name=act type=hidden value=add></form>"&_
	"</table>"
end sub
%>