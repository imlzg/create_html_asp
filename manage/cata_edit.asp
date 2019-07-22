<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim cid,kind
cid=request("cid")

call catadata()
cname=split(cname,"|")(grade-1)
call header()
call cataedit()
call footer()

sub cataedit()
	kind=2  'index=1,list=2,cont=3
	Response.Write "<SCRIPT language=Javascript>"&_
	"function CheckInput(){"&_
	"if(document.cataedit.pid.value == ''){"&_
	"alert('请选择上级目录');"&_
	"document.cataedit.pid.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.cname.value==''){"&_
	"alert('请输入目录名');"&_
	"document.cataedit.cname.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.seq.value==''){"&_
	"alert('请输入显示次序');"&_
	"document.cataedit.seq.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.pagesize.value==''){"&_
	"alert('请输入分页文件数');"&_
	"document.cataedit.pagesize.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.jssize.value==''){"&_
	"alert('请输入JS文件数');"&_
	"document.cataedit.jssize.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.suffix.value==''){"&_
	"alert('请输入后缀');"&_
	"document.cataedit.suffix.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.mid.value==''){"&_
	"alert('请选择模版');"&_
	"document.cataedit.mid.focus();"&_
	"return false;"&_
	"}"&_
	"return true;"&_
	"}"&_
	"</SCRIPT>"

	Response.Write "<table>"&_
	"<form name=cataedit action=cata_save.asp method=post onSubmit='return CheckInput()'>"&_
	"<tr><td>上级目录</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>目录名</td><td><input name=cname type=text value="&cname&"></td></tr>"&_
	"<tr><td>转向</td><td><input name=redirect type=text value="&swerve&"></td></tr>"&_
	"<tr><td>显示</td><td><input name=show type=checkbox value=1 "
	if show=1 then
		Response.Write "checked"
	end if
	Response.Write "></td></tr>"&_
	"<tr><td>次序</td><td><input name=seq type=text value="&seq&"></td></tr>"&_
	"<tr><td>分页文件数</td><td><input name=pagesize type=text value="&pagesize&"></td></tr>"&_
	"<tr><td>JS文件数</td><td><input name=jssize type=text value="&jssize&"></td></tr>"&_
	"<tr><td>模版：</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
	"<input name=cid type=hidden value="&cid&">"&_
	"<input name=act type=hidden value=edit></form>"&_
	"</table>"
end sub

sub catalist()
	Response.Write "<select name=pid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)'取出目录列表的存储过程
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
		if clng(rs("cid"))=pid then
			Response.Write "<option selected style=color:red value="&rs("cid")&">"&rs("cname")&rs("cid")&"</option>"
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

sub modellist()
	Response.Write "<select name=mid>"
	set rs=conn.execute("createrhtml_model_get_list "&symbol&","&kind)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			if rs("mid")=mid then
				Response.Write "<option selected value="&rs("mid")&">"&rs("mname")&"</option>"
			else
				Response.Write "<option value="&rs("mid")&">"&rs("mname")&"</option>"
			end if
		rs.MoveNext
		loop
	else
		Response.Write "<option>暂时没有模版</option>"
	end if
	Response.Write "</select>"
end sub
%>