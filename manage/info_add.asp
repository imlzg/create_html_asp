<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim cid,kind
cid=request("cid")
kind=3  'index=1,list=2,cont=3
call catadata()
call header()
call infoadd()
call footer()

sub infoadd()
	Response.Write "<table>"&_
	"<form name=infoadd action=info_save.asp method=post>"&_
	"<tr><td>栏目：</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>标题：</td><td><input name=title type=text></td></tr>"&_
	"<tr><td>作者：</td><td><input name=author type=text></td></tr>"&_
	"<tr><td>出处：</td><td><input name=provenance type=text></td></tr>"&_
	"<tr><td>内容：</td><td><textarea name=content cols=58 rows=16></textarea></td></tr>"&_
	"<tr><td>关键字：</td><td><input name=keyword type=text></td></tr>"&_
	"<tr><td>模版：</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td>命名方式</td><td>ID<input id=mode1 name=namemode type=radio value=id onClick=change(1)> CID+ID<input id=mode2 name=namemode type=radio value=cidid onClick=change(1)> DATE<input id=mode3 name=namemode type=radio value=date onClick=change(1)> CUSTOM<input id=mode4 name=namemode type=radio value=custom onClick=change(2)><input id=name type=text name=ifname>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
	"<input name=act type=hidden value=add></form>"&_
	"</table>"

	Response.Write "<script LANGUAGE='JavaScript'>"&_
	"infoadd.mode2.click();"&_
	"function change(id)"&_
	"{"&_
	"	if(id==1){"&_
	"	infoadd.name.style.display='none';"&_
	"	}"&_
	"	if(id==2){"&_
	"	infoadd.name.style.display='';"&_
	"	}"&_
	"}"&_
	"</script>"
end sub

sub catalist()
	Response.Write "<select name=cid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			if rs("cid")=cid then
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

sub modellist()
	Response.Write "<select name=mid>"
	set rs=conn.execute("createrhtml_model_get_list "&symbol&","&kind)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			Response.Write "<option value="&rs("mid")&">"&rs("mname")&"</option>"
		rs.MoveNext
		loop
	else
		Response.Write "<option>暂时没有模版</option>"
	end if
	Response.Write "</select>"
end sub
%>