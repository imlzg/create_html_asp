<!--#include file="conn.asp"-->
<%
'model_add.asp
'kind=1 ��ʾ����ģ�棻kind=2 ��ʾ������ģ��
'ckind=1 ��ʾ��INFOģ�棻kind=2 ��ʾ��SOFTģ��
dim symbol,kind
symbol=request("symbol")
kind=request("kind")

'call header()
call modeladd()
'call footer()

sub modeladd()
	Response.Write "<table>"&_
	"<form name=modeladd action=model_save.asp method=post>"&_
	"<tr><td>���</td><td>"
	call sort()
	Response.Write "</td></tr>"&_
	"<tr><td>����</td><td><input name=mname type=text>˳��<input name=seq type=text></td></tr>"&_
	"<tr><td>����</td><td><textarea name=content cols=58 rows=16></textarea></td></tr>"&_
	"<tr><td>����</td><td><input name=designer type=text>��ϵ<input name=contact type=text></td><tr>"&_
	"<tr><td></td><td><input name=button type=submit value=�ᡡ��></td></tr>"&_
	"<input name=act type=hidden value=add></form>"&_
	"<table>"
end sub

sub sort()
	Response.Write "<select name=symbol>"
	set rs=conn.execute("createrhtml_cata_get_symblist") 'distinct
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
		if rs("symbol")=symbol then
			Response.Write "<option selected value="&rs("symbol")&">"&rs("symbol")&"</option>"
		else
			Response.Write "<option value="&rs("symbol")&">"&rs("symbol")&"</option>"
		end if
		rs.MoveNext
		loop
	else
		Response.Write "<option>��ʱû��Ŀ¼</option>"
	end if
	Response.Write "</select>"
	
	Response.Write "<select name=kind>"
	Response.Write "<option value=1"
	if kind=1 then Response.Write " selected"
	Response.Write ">index</option>"
	Response.Write "<option value=2"
	if kind=2 then Response.Write " selected"
	Response.Write ">list</option>"
	Response.Write "<option value=3"
	if kind=3 then Response.Write " selected"
	Response.Write ">cont</option>"
	Response.Write "</select>"
end sub

%>