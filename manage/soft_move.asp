<!--#include file="conn.asp"-->
<%
dim sid,cid,sids,i,scid,sfname,ssoft_path,soft_path,fso
cid=request("cid")
sid=request("sid")
sids=split(sid,",")

for i=lbound(sids) to ubound(sids)
	sid=sids(i)
	call softdate()
	call movefile()
	if request("act")="page" then
		conn.execute("createrhtml_soft_save_move '"&sid&"','"&cid&"'")
	end if
next
if request("act")="page" then
	Response.Write "<font color=#FF0000>■■■■■■■■■■■■■■■■■■■■<br>转移SOFT完成</font>"&_
	"<script LANGUAGE=JavaScript>"&_
	"<!--"&_
	"setTimeout('window.close();', 500);"&_
	"// -->"&_
	"</script>"
end if

sub softdate()
	set rs=conn.execute("createrhtml_soft_get_sfname '"&sid&"'")
	scid=rs("cid")
	sfname=rs("sfname")
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_cata_get_contfldr"
		.CommandType=4
		.Parameters.append .CreateParameter("@cid",3,1,3,scid)
		.Parameters.append .CreateParameter("@cont_fldr",200,2,10)
	end with
	cmd.execute
	ssoft_path="../"&cmd("@cont_fldr")&"/"
end sub

sub movefile()
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_cata_get_contfldr"
		.CommandType=4
		.Parameters.append .CreateParameter("@cid",3,1,3,cid)
		.Parameters.append .CreateParameter("@cont_fldr",200,2,10)
	end with
	cmd.execute
	soft_path="../"&cmd("@cont_fldr")&"/"
	Set fso=Server.CreateObject("Scripting.FileSystemObject")
	if fso.FileExists(server.mappath(soft_path&sfname)) then
		Response.Write "文件存在不需要移动"
		exit sub
	elseif fso.FileExists(server.MapPath(ssoft_path&sfname)) then
		if not fso.folderexists(server.MapPath(soft_path)) then
			fso.createfolder(server.MapPath(soft_path))
		end if
		fso.MoveFile server.MapPath(ssoft_path&sfname),server.MapPath(soft_path&sfname)
	else
		Response.Write "HTML文件不存在请重新生成！"
		exit sub
	end if
end sub
%>