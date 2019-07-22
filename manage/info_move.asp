<!--#include file="conn.asp"-->
<%
dim iid,cid,iids,i,scid,ifname,sinfo_path,info_path,fso
cid=request("cid")
iid=request("iid")
iids=split(iid,",")

for i=lbound(iids) to ubound(iids)
	iid=iids(i)
	call infodate()
	call movefile()
	if request("act")="page" then
		conn.execute("createrhtml_info_save_move '"&iid&"','"&cid&"'")
	end if
next
if request("act")="page" then
	Response.Write "<font color=#FF0000>■■■■■■■■■■■■■■■■■■■■<br>转移INFO完成</font>"&_
	"<script LANGUAGE=JavaScript>"&_
	"<!--"&_
	"setTimeout('window.close();', 500);"&_
	"// -->"&_
	"</script>"
end if

sub infodate()
	set rs=conn.execute("createrhtml_info_get_ifname '"&iid&"'")
	scid=rs("cid")
	ifname=rs("ifname")
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_cata_get_contfldr"
		.CommandType=4
		.Parameters.append .CreateParameter("@cid",3,1,3,scid)
		.Parameters.append .CreateParameter("@cont_fldr",200,2,10)
	end with
	cmd.execute
	sinfo_path="../"&cmd("@cont_fldr")&"/"
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
	info_path="../"&cmd("@cont_fldr")&"/"
	Set fso=Server.CreateObject("Scripting.FileSystemObject")
	if fso.FileExists(server.mappath(info_path&ifname)) then
		Response.Write "文件存在不需要移动"
		exit sub
	elseif fso.FileExists(server.MapPath(sinfo_path&ifname)) then
		if not fso.folderexists(server.MapPath(info_path)) then
			fso.createfolder(server.MapPath(info_path))
		end if
		fso.MoveFile server.MapPath(sinfo_path&ifname),server.MapPath(info_path&ifname)
	else
		Response.Write "HTML文件不存在请重新生成！"
		exit sub
	end if
end sub
%>