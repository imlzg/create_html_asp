<!--#include file="conn.asp"-->
<%
call CataManage()

sub CataManage()
	set rs=conn.execute("createrhtml_cata_get_manage")
	if not rs.eof then
		do while not rs.eof
			Response.Write "<a href=cata_edit.asp?cid="&rs("cid")&">"&split(trim(rs("cname")),"|")(rs("grade")-1)&" 编辑</a>"&_
			"删除"&_
			"设定模版"
'			select case rs("symbol")
'			case "info"
'				Response.Write "<a href=cata_create_info_all.asp?act=all&cid="&rs("cid")&" target=_blank>生成类HTML</a>"
'			case "soft"
'				Response.Write "<a href=cata_create_soft_all.asp?act=all&cid="&rs("cid")&" target=_blank>生成类HTML</a>"
'			end select
				Response.Write "<a href=cata_create_all.asp?act=all&cid="&rs("cid")&" target=_blank>生成类HTML</a>"
			Response.Write "生成类JS 生成内容HTML<br>"
		rs.movenext
		loop
	else
		Response.Write "请先添加目录"
	end if
end sub
%>