<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim scid,ecid
scid=request("scid")
ecid=request("ecid")
symbol=request("symbol")

call header()
call catamove()
call footer()

sub catamove()
	Response.Write "<SCRIPT language=Javascript>"&_
	"function CheckInput(){"&_
	"if(document.catamove.scid.value == ''){"&_
	"alert('请选择原目录');"&_
	"document.catamove.scid.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.catamove.ecid.value==''){"&_
	"alert('请输入目的目录');"&_
	"document.catamove.ecid.focus();"&_
	"return false;"&_
	"}"&_
	"return true;"&_
	"}"&_
	"</SCRIPT>"
	Response.Write "<table>"&_
	"<form name=catamove action=cata_save.asp method=post>"&_
	"<tr><td>原栏目：</td><td>"
	call StartCatalist()
	Response.Write "</td></tr>"&_
	"<tr><td>目的栏目：</td><td>"
	call EndCatalist()
	Response.Write "</td></tr>"&_
	"<input name=button type=submit value=提交>"&_
	"<input name=act type=hidden value=move></form>"&_
	"</table>"
end sub

sub StartCatalist()
	Response.Write "<select name=scid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			if rs("cid")=scid then
				Response.Write "<option selected value="&rs("cid")&">"&rs("cname")&rs("cid")&"</option>"
			else
				Response.Write "<option value="&rs("cid")&">"&rs("cname")&"</option>"
			end if
		rs.MoveNext
		loop
	else
		Response.Write "<option>暂时没有目录</option>"
	end if
	Response.Write "</select>"
end sub

sub EndCatalist()
	Response.Write "<select name=ecid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			if rs("cid")=ecid then
				Response.Write "<option selected value="&rs("cid")&">"&rs("cname")&rs("cid")&"</option>"
			else
				Response.Write "<option value="&rs("cid")&">"&rs("cname")&"</option>"
			end if
		rs.MoveNext
		loop
	else
		Response.Write "<option>暂时没有目录</option>"
	end if
	Response.Write "</select>"
end sub
%>