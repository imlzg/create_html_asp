<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%
dim act
act=Request.Form("act")
select case act
case "add"
	call userAddSave()
	if finderr then call error()
case "edit"
	call userEditSave()
	if finderr then call error()
case "del"
	call userDelSave()
	if finderr then call error()
end select


sub userAddSave()
	dim uname,upassword,truename,qq,email,address
	uname=trim(replace(Request.Form("uname"),"'",""))
	upassword=md5(trim(replace(Request.Form("upassword"),"'","")),16)
	truename=Request.Form("truename")
	qq=Request.Form("qq")
	email=Request.Form("email")
	address=Request.Form("address")
	if uname="" or upassword="" then
		finderr=true
		errmsg=errmsg&"<br><li>�������û��������룡"
		exit sub
	end if
	conn.execute("createrhtml_user_save_add '"&uname&"','"&upassword&"','"&truename&"','"&qq&"','"&email&"','"&address&"'")
	Response.Write "��ӳɹ���"
end sub

sub userEditSave()
	dim uid,uname,upassword,mace,truename,qq,email,address,locked
	uid=Request.Form("uid")
	uname=Request.Form("uname")
	upassword=Request.Form("upassword")
	mace=Request.Form("mace")
	truename=Request.Form("truename")
	qq=Request.Form("qq")
	email=Request.Form("email")
	address=Request.Form("address")
	locked=Request.Form("locked")
'	if not isInteger(uid) then
'		finderr=true
'		errmsg=errmsg&"<br><li>�û���������"
'		exit sub
'	end if	
	if upassword="" then
		set rs=conn.Execute("createrhtml_user_get_upassword "&uid)
		upassword=rs("upassword")
	else
		upassword=md5(trim(replace(upassword,"'","")),16)
	end if
	conn.execute("createrhtml_user_save_edit '"&uid&"','"&uname&"','"&upassword&"','"&truename&"','"&qq&"','"&email&"','"&address&"','"&locked&"','"&mace&"'")
	Response.Write "�޸ĳɹ���"
end sub

sub userDelSave()
	dim uid,i
	if not isInteger(request("uid")) then
		finderr=true
		errmsg=errmsg&"<br><li>�û���������"
		exit sub
	end if	
	uid=split(request("uid"),",")
	for i=lbound(uid) to ubound(uid)
		conn.execute("createrhtml_user_save_del "&uid(i))
	next
	Response.Write "ɾ���ɹ���"
end sub
%>