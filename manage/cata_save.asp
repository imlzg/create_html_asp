<!--#include file="conn.asp"-->
<%
dim act
act=Request.Form("act")

select case act
case "add"
	call cataAddSave()
	if finderr then call error()
case "edit"
	call cataEditSave()
	if finderr then call error()
case "del"
	call cataDelSave()
	if finderr then call error()
case "move"
	call cataMoveSave()
	if finderr then call error()
end select

sub cataAddSave()
	dim pid,mid,cname,swerve,show,seq,cata_fldr,cont_fldr,js_fldr,pagesize,jssize,cfname,suffix
	pid=Request.Form("pid")
	mid=Request.Form("mid")
	cname=Request.Form("cname")
	swerve=Request.Form("swerve")
	show=Request.Form("show")
	seq=Request.Form("seq")
	cata_fldr=Request.Form("cata_fldr")
	cont_fldr=Request.Form("cont_fldr")
	js_fldr=Request.Form("js_fldr")
	pagesize=Request.Form("pagesize")
	jssize=Request.Form("jssize")
	cfname=Request.Form("cfname")
	suffix=Request.Form("suffix")
'	if cname="" then
'		finderr=true
'		errmsg=errmsg&"<br><li>类别名或目录名不能为空！"
'		exit sub
'	end if
	if pid="" then
		pid=0
	end if
	if swerve="" then
		swerve="null"
	end if
	if show="" then
		show=0
	end if
	'if cfname="" then
	'	cfname="null"
	'end if

	dim returnvalue
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_cata_check_add"
		.CommandType=4
		.Parameters.append .CreateParameter("@pid",3,1,3,pid)
		.Parameters.append .CreateParameter("@cname",200,1,255,cname)
		.Parameters.append .CreateParameter("@returnvalue",3,2,3)
	end with
	cmd.Execute
	returnvalue=cmd("@returnvalue")
	if returnvalue=0 then
		finderr=true
		errmsg=errmsg&"<br><li>已有同名目录！"
		exit sub	
	else
		conn.execute("createrhtml_cata_save_add '"&pid&"','"&mid&"','"&cname&"','"&swerve&"','"&show&"','"&seq&"','"&cata_fldr&"','"&cont_fldr&"','"&js_fldr&"','"&pagesize&"','"&jssize&"','"&cfname&"','"&suffix&"'")
		Response.Write "添加成功！"	
	end if
end sub

sub cataEditSave()
	dim cid,pid,mid,cname,swerve,show,seq,pagesize,jssize
	cid=Request.Form("cid")
	pid=Request.Form("pid")
	mid=Request.Form("mid")
	cname=Request.Form("cname")
	swerve=Request.Form("swerve")
	show=Request.Form("show")
	seq=Request.Form("seq")
	pagesize=Request.Form("pagesize")
	jssize=Request.Form("jssize")

'	if cname="" then
'		finderr=true
'		errmsg=errmsg&"<br><li>必要内容不能为空！"
'		exit sub
'	end if
	if pid="" then
		pid=0
	end if
	if swerve="" then
		swerve="null"
	end if
	if show="" then
		show=0
	end if
	dim returnvalue
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_cata_check_edit"
		.CommandType=4
		.Parameters.append .CreateParameter("@cid",3,1,3,cid)
		.Parameters.append .CreateParameter("@pid",3,1,3,pid)
		.Parameters.append .CreateParameter("@cname",200,1,255,cname)
		.Parameters.append .CreateParameter("@returnvalue",3,2,3)
	end with
	cmd.Execute
	returnvalue=cmd("@returnvalue")
	if returnvalue=0 then
		finderr=true
		errmsg=errmsg&"<br><li>已有同名目录！"
		exit sub	
	else
		conn.execute("createrhtml_cata_save_edit '"&cid&"','"&pid&"','"&mid&"','"&cname&"','"&swerve&"','"&show&"','"&seq&"','"&pagesize&"','"&jssize&"'")
		Response.Write "修改成功！"
	end if
end sub

sub cataDelSave()
	dim cid,symbol
	cid=Request.Form("cid")
	conn.execute("createrhtml_cata_del_save "&cid)
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="creater_cata_symbol_get"
		.CommandType=4
		.Parameters.append .CreateParameter("@cid",3,1,3,pid)
		.Parameters.append .CreateParameter("@symbol",3,2,3)
	end with
	cmd.Execute
	symbol=cmd("@symbol")
	if symbol="info" then
		Response.Redirect "info_delete_all.asp?act=cata&cid="&cid
	else
		Response.Redirect "soft_delete_all.asp?act=cata&cid="&cid
	end if
end sub

sub cataMoveSave()
	dim scid,ecid,returnvalue
	scid=Request.Form("scid")
	ecid=Request.Form("ecid")
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_cata_save_move"
		.CommandType=4
		.Parameters.append .CreateParameter("@scid",3,1,3,scid)
		.Parameters.append .CreateParameter("@ecid",3,1,3,ecid)
		.Parameters.append .CreateParameter("@returnvalue",3,2,3)
	end with
	cmd.Execute
	returnvalue=cmd("@returnvalue")
	if returnvalue=0 then
		finderr=true
		errmsg=errmsg&"<br><li>上级目录不能转移到下级目录！"
		exit sub
	elseif returnvalue=1 then
		Response.Write "转移成功"
	end if
'被转移目录的父目录要换成 目标目录，被转移目录的所有子目录 的TREE 要改，目录名也要改
end sub
%>