<!--#include file="conn.asp"-->
<%
dim act,symbol,cata_nav_js
act=trim(request("act"))
'cata_js_nav_create.asp
'顶部栏目导航JS

if act="all" then
	call createNavall()
else
	call createNav()
end if

sub createNavall()
	set rs=conn.execute("createrhtml_cata_get_symblist")
	if not rs.eof then
		do while not rs.eof
			symbol=trim(rs("symbol"))
			call createcataNavjs()
		rs.movenext
		loop
	end if
end sub

sub createNav()
	act=split(act,",")
	dim i
	for i=lbound(act) to ubound(act)
		symbol=act(i)
		call createcataNavjs()
	next
end sub

sub createNavjs()
	cata_nav_js=symbol&"："
	set rs=conn.execute("createrhtml_cata_get_nav "&symbol)
	if not rs.eof then
		do while not rs.eof
			cata_nav_js=cata_nav_js&"<a href=../"&trim(rs(4))&"/"&trim(rs(2))&"_1"&trim(rs(3))&">"&split(trim(rs(0)),"|")(clng(rs(1))-1)&"</a>"
		rs.movenext
		loop
	else
		cata_nav_js="没有目录"
	end if
	call createjs(cata_nav_js,"../js/"&symbol&"_nav.js")
end sub

sub createjs(data,name)
	dim fso,creater
	set fso=server.CreateObject("scripting.filesystemobject")
	if not fso.folderexists(server.MapPath(js_path)) then
		fso.createfolder(server.MapPath(js_path))
	end if
	set creater=fso.CreateTextFile(server.mappath(name))
	creater.write "document.write('"&data&"')"
	creater.close
	set creater=nothing
	set fso=nothing
end sub
%>