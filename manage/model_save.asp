<!--#include file="conn.asp"-->
<%
'model_save.asp
dim act
act=Request.Form("act")

select case act
case "add"
	call modelAddSave()
	if finderr then call error()
case "edit"
	call modelEditSave()
	if finderr then call error()
case "del"
	call modelDelSave()
	if finderr then call error()
end select

sub modelAddSave()
	dim symbol,kind,mname,seq,content,designer,contact
	symbol=Request.Form("symbol")
	kind=Request.Form("kind")
	mname=Request.Form("mname")
	seq=Request.Form("seq")
	content=Request.Form("content")
	designer=Request.Form("designer")
	contact=Request.Form("contact")
	if mname="" or content="" then
		finderr=true
		errmsg=errmsg&"<br><li>��Ҫ���ݲ���Ϊ�գ�"
		exit sub
	end if
	conn.execute("createrhtml_model_save_add '"&symbol&"','"&kind&"','"&mname&"','"&seq&"','"&content&"','"&designer&"','"&contact&"'")
	Response.Write "ģ����ӳɹ���"
end sub

sub modelEditSave()
	dim mid,symbol,kind,mname,seq,content,designer,contact
	mid=Request.Form("mid")
	symbol=Request.Form("symbol")
	kind=Request.Form("kind")
	mname=Request.Form("mname")
	seq=Request.Form("seq")
	content=Request.Form("content")
	designer=Request.Form("designer")
	contact=Request.Form("contact")
	if mname="" or content="" then
		finderr=true
		errmsg=errmsg&"<br><li>��Ҫ���ݲ���Ϊ�գ�"
		exit sub
	end if
	conn.execute("createrhtml_model_save_edit '"&mid&"','"&symbol&"','"&kind&"','"&mname&"','"&seq&"','"&content&"','"&designer&"','"&contact&"'")
	Response.Write "�޸ĳɹ���"
end sub

sub modelDelSave()
	dim mid,i
	if not isInteger(request("mid")) then
		finderr=true
		errmsg=errmsg&"<br><li>�û���������"
		exit sub
	end if	
	mid=split(request("mid"),",")
	for i=lbound(mid) to ubound(mid)
		conn.execute("createrhtml_model_save_del "&mid(i))
	next
	Response.Write "ɾ���ɹ���"
end sub
%>