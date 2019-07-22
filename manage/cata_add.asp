<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim cid,kind
cid=request("cid")
call catadata()
call header()
call cataadd()
call footer()


'********* sort不能添加，是固定在数据库中的，一个是INFO 一个是SOFT ，只能修改部分内容，如类名
'********** 目录的部分内容添加后 是不能修改的，如目录文件夹、内容文件夹、JS文件夹，后缀

sub cataadd()
	kind=2
	Response.Write "<SCRIPT language=Javascript>"&_
	"function CheckInput(){"&_
	"if(document.cataadd.pid.value == ''){"&_
	"alert('请选择上级目录');"&_
	"document.cataadd.pid.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.cname.value==''){"&_
	"alert('请输入目录名');"&_
	"document.cataadd.cname.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.seq.value==''){"&_
	"alert('请输入显示次序');"&_
	"document.cataadd.seq.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.cata_fldr.value==''){"&_
	"alert('请输入目录文件夹');"&_
	"document.cataadd.cata_fldr.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.cont_fldr.value==''){"&_
	"alert('请输入内容文件夹');"&_
	"document.cataadd.cata_fldr.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.js_fldr.value==''){"&_
	"alert('请输入JS文件夹');"&_
	"document.cataadd.js_fldr.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.pagesize.value==''){"&_
	"alert('请输入分页文件数');"&_
	"document.cataadd.pagesize.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.jssize.value==''){"&_
	"alert('请输入JS文件数');"&_
	"document.cataadd.jssize.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.suffix.value==''){"&_
	"alert('请输入后缀');"&_
	"document.cataadd.suffix.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.mid.value==''){"&_
	"alert('请选择模版');"&_
	"document.cataadd.mid.focus();"&_
	"return false;"&_
	"}"&_
	"return true;"&_
	"}"&_
	"</SCRIPT>"
	
	Response.Write "<table>"&_
	"<form name=cataadd action=cata_save.asp method=post onSubmit='return CheckInput()'>"&_
	"<tr><td>上级目录</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>目录名</td><td><input name=cname type=text></td></tr>"&_
	"<tr><td>转向</td><td><input name=swerve type=text></td></tr>"&_
	"<tr><td>显示</td><td><input name=show type=checkbox value=1></td></tr>"&_
	"<tr><td>次序</td><td><input name=seq type=text></td></tr>"&_
	"<tr><td>目录文件夹</td><td><input name=cata_fldr type=text value="&cata_fldr&"></td></tr>"&_
	"<tr><td>内容文件夹</td><td><input name=cont_fldr type=text value="&cont_fldr&"></td></tr>"&_
	"<tr><td>JS文件夹</td><td><input name=js_fldr type=text value="&js_fldr&"></td></tr>"&_
	"<tr><td>分页文件数</td><td><input name=pagesize type=text value="&pagesize&"></td></tr>"&_
	"<tr><td>JS文件数</td><td><input name=jssize type=text value="&jssize&"></td></tr>"&_
	"<tr><td>后缀</td><td><input name=suffix type=text value="&suffix&"></td></tr>"&_
	"<tr><td>文件名</td><td><input name=cfname type=text></td></tr>"&_
	"<tr><td>模版</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
	"<input name=act type=hidden value=add></form>"&_
	"</table>"
end sub

sub catalist()
	Response.Write "<select name=pid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)'取出目录列表的存储过程
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			if rs("cid")=cid then
				Response.Write "<option selected style=color:red value="&rs("cid")&">"&rs("cname")&"("&rs("cid")&")</font></option>"
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
	symbol="info"
	Response.Write "<select name=mid>"
	set rs=conn.execute("createrhtml_model_get_list "&symbol&","&kind)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			Response.Write "<option value="&rs("mid")&">"&rs("mname")&"</option>"
		rs.movenext
		loop
	else
		Response.Write "<option>没模版</option>"
	end if
	Response.Write "</select>"
end sub
%>