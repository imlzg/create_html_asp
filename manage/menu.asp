<!--#include file="conn.asp"-->
<%
call header()
call menu()
call footer()

sub menu()
	Response.Write "<table width=115 bgcolor=#cococo>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b>�����ܲ˵�</b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=soft.manage.asp?cid=2 target=main>�������</a></b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=info.manage.asp?cid=1 target=main>���¹���</a></b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=cata.manage.asp?cid=2 target=main>Ŀ¼����</a></b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=user.manage.asp?cid=2 target=main>�û�����</a></b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=model.manage.asp?cid=2 target=main>ģ�����</a></b></font></td></tr>"&_
	"</table>"
end sub


%>