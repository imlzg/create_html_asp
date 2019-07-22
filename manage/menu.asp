<!--#include file="conn.asp"-->
<%
call header()
call menu()
call footer()

sub menu()
	Response.Write "<table width=115 bgcolor=#cococo>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b>管理功能菜单</b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=soft.manage.asp?cid=2 target=main>软件管理</a></b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=info.manage.asp?cid=1 target=main>文章管理</a></b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=cata.manage.asp?cid=2 target=main>目录管理</a></b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=user.manage.asp?cid=2 target=main>用户管理</a></b></font></td></tr>"&_
	"<tr><td width=100% bgcolor=#555555 align=center><font color=#FFFFFF><b><a href=model.manage.asp?cid=2 target=main>模版管理</a></b></font></td></tr>"&_
	"</table>"
end sub


%>