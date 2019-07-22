<!--#include file="conn.asp"-->
<%
dim uid
uid=request("uid")

'call header()
call useredit()
'call footer()

sub useredit()
	set rs=conn.execute("createrhtml_user_get_edit '"&uid&"'")
	Response.Write "<table>"&_
	"<form name=useradd action=user_save.asp method=post>"&_
	"<tr><td>用户名</td><td><input name=uname type=text size=45 value="&trim(rs("uname"))&"></td></tr>"&_
	"<tr><td>密码</td><td><input name=upassword type=text> 如果不修改请留空</td></tr>"&_
	"<tr><td>真实姓名</td><td><input name=truename type=text size=45 value="&trim(rs("truename"))&"></td></tr>"&_
	"<tr><td>ＱＱ</td><td><input name=qq type=text size=45 value="&trim(rs("qq"))&"></td></tr>"&_
	"<tr><td>EMAIL</td><td><input name=email type=text size=45 value="&trim(rs("email"))&"></td></tr>"&_
	"<tr><td>住址</td><td><input name=address type=text size=45 value="&trim(rs("address"))&"></td></tr>"&_
	"<tr><td>锁定</td><td><input name=locked type=checkbox value=1"
	if rs("locked")=1 then
		Response.write " checked"
	end if
	Response.Write "></td></tr>"&_
	"<tr><td>权限</td><td><input name=flag type=checkbox value=4><input name=flag type=checkbox value=5><input name=flag type=checkbox value=6></td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
	"<input name=uid type=hidden value="&uid&"><input name=act type=hidden value=edit></form>"&_
	"</table>"
end sub
%>