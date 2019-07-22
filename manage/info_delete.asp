<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim iid,iids,i,cid,ifname,info_path
iid=request("iid")
iids=split(iid,",")

for i=lbound(iids) to ubound(iids)
	iid=iids(i)
	call infotemp()
	call catadata()
	info_path="../"&cont_fldr&"/"
	call delhtml()
	if request("act")="page" then
		if request("onlyhtml")<>1 then
			conn.execute("createrhtml_info_save_del "&iid)
		end if
	end if
next
if request("act")="page" then
	Response.Write "<font color=#FF0000>¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö<br>É¾³ýINFOÒ³Íê³É</font>"&_
	"<script LANGUAGE=JavaScript>"&_
	"<!--"&_
	"setTimeout('window.close();', 500);"&_
	"// -->"&_
	"</script>"
end if

sub infotemp()
	set rs=conn.execute("createrhtml_info_get_ifname "&iid)
	cid=rs("cid")
	ifname=rs("ifname")
end sub

sub delhtml()
	dim fso
	set fso=server.CreateObject("scripting.filesystemobject")
	if fso.fileexists(server.MapPath(info_path&ifname)) then
		fso.deletefile(server.MapPath(info_path&ifname))
	end if
	set fso=nothing
end sub
%>