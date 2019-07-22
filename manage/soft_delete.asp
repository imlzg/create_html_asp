<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim sid,sids,i,cid,sfname,soft_path
sid=request("sid")
sids=split(sid,",")

for i=lbound(sids) to ubound(sids)
	sid=sids(i)
	call softtemp()
	call catadata()
	soft_path="../"&cont_fldr&"/"
	call delhtml()
	if request("act")="page" then
		if request("onlyhtml")<>1 then
			conn.execute("createrhtml_soft_save_del "&sid)
		end if
	end if
next
if request("act")="page" then
	Response.Write "<font color=#FF0000>¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö¡ö<br>É¾³ýSOFTÒ³Íê³É</font>"&_
	"<script LANGUAGE=JavaScript>"&_
	"<!--"&_
	"setTimeout('window.close();', 500);"&_
	"// -->"&_
	"</script>"
end if

sub softtemp()
	set rs=conn.execute("createrhtml_soft_get_sfname "&sid)
	cid=rs("cid")
	sfname=rs("sfname")
end sub

sub delhtml()
	dim fso
	set fso=server.CreateObject("scripting.filesystemobject")
	if fso.fileexists(server.MapPath(soft_path&sfname)) then
		fso.deletefile(server.MapPath(soft_path&sfname))
	end if
	set fso=nothing
end sub
%>