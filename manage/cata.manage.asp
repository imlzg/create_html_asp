<!--#include file="conn.asp"-->
<%
call CataManage()

sub CataManage()
	set rs=conn.execute("createrhtml_cata_get_manage")
	if not rs.eof then
		do while not rs.eof
			Response.Write "<a href=cata_edit.asp?cid="&rs("cid")&">"&split(trim(rs("cname")),"|")(rs("grade")-1)&" �༭</a>"&_
			"ɾ��"&_
			"�趨ģ��"
'			select case rs("symbol")
'			case "info"
'				Response.Write "<a href=cata_create_info_all.asp?act=all&cid="&rs("cid")&" target=_blank>������HTML</a>"
'			case "soft"
'				Response.Write "<a href=cata_create_soft_all.asp?act=all&cid="&rs("cid")&" target=_blank>������HTML</a>"
'			end select
				Response.Write "<a href=cata_create_all.asp?act=all&cid="&rs("cid")&" target=_blank>������HTML</a>"
			Response.Write "������JS ��������HTML<br>"
		rs.movenext
		loop
	else
		Response.Write "�������Ŀ¼"
	end if
end sub
%>