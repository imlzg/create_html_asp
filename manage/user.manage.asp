<!--#include file="conn.asp"-->
<%
'admin_manage.asp
dim list_temp

call usermanage()


sub userManage()
	set rs=conn.execute("createrhtml_user_get_manage")
	if not rs.eof then
		do while not rs.eof
			list_temp=list_temp&"<br><a href=user_edit.asp?uid="&rs("uid")&">"&trim(rs("uname"))&" �༭</a>ɾ��"
		rs.movenext 'set rs=rs.nextrecordset
		loop
	else
		Response.Write "�������ģ��"
	end if
	Response.Write list_temp
end sub
%>