<!--#include file="conn.asp"-->
<%
'cata_create_js.asp
'此类的最新JS、热点TOP10、总下载排行TOP10、周下载排行TOP10、日下载排行TOP10

dim cid,symbol,js_path,new_js,tophit_js,soft_topdown_js,soft_daytopdown_js,soft_weektopdown_js
cid=request("cid")

call getSymbol()
call createNewjs()
call createTopHitjs()
if symbol="soft" then
	call createSoftTopDownjs()
	call createSoftDayTopDownjs()
	call createSoftWeekTopDownjs()
end if

sub getSymbol()
	set rs=conn.execute("createrhtml_cata_get_symbol '"&cid&"'") '挨个取出目录CID   catasize=1 每次取一个目录
	if not rs.eof then
		symbol=trim(rs("symbol"))
		js_path="../"&trim(rs("js_fldr"))&"/"
	end if
end sub

sub createNewjs()
	set rs=conn.execute("createrhtml_cata_get_jsnew '"&cid&"'")
	if not rs.eof then
		do while not rs.eof
		new_js=new_js&"<a href=../"&trim(rs(2))&"/"&trim(rs(1))&">"&trim(rs(0))&"</a><br>"
		rs.movenext
		loop
	else
		new_js="暂时没有"
	end if
	call createjs(new_js,js_path&cid&"_new.js")
end sub

sub createTopHitjs()
	set rs=conn.execute("createrhtml_cata_get_jstophit '"&cid&"'")
	if not rs.eof then
		do while not rs.eof
		tophit_js=tophit_js&"<a href=../"&trim(rs(2))&"/"&trim(rs(1))&">"&trim(rs(0))&"</a><br>"
		rs.movenext
		loop
	else
		tophit_js="暂时没有"
	end if
	call createjs(tophit_js,js_path&cid&"_tophit.js")
end sub

sub createSoftTopDownjs()
	set rs=conn.execute("createrhtml_cata_get_js_stopdown '"&cid&"'")
	if not rs.eof then
		do while not rs.eof
		soft_topdown_js=soft_topdown_js&"<a href=../"&trim(rs(2))&"/"&trim(rs(1))&">"&trim(rs(0))&"</a><br>"
		rs.movenext
		loop
	else
		soft_topdown_js="暂时没有"
	end if
	call createjs(soft_topdown_js,js_path&cid&"_topdown.js")
end sub

sub createSoftDaytopDownjs()
	set rs=conn.execute("createrhtml_cata_get_js_sdaytopdown '"&cid&"'")
	if not rs.eof then
		do while not rs.eof
		soft_daytopdown_js=soft_daytopdown_js&"<a href=../"&trim(rs(2))&"/"&trim(rs(1))&">"&trim(rs(0))&"</a><br>"
		rs.movenext
		loop
	else
		soft_topdown_js="暂时没有"
	end if
	call createjs(soft_daytopdown_js,js_path&cid&"_daytopdown.js")
end sub

sub createSoftWeektopDownjs()
	set rs=conn.execute("createrhtml_cata_get_js_sweektopdown '"&cid&"'")
	if not rs.eof then
		do while not rs.eof
		soft_weektopdown_js=soft_weektopdown_js&"<a href=../"&trim(rs(2))&"/"&trim(rs(1))&">"&trim(rs(0))&"</a><br>"
		rs.movenext
		loop
	else
		soft_weektopdown_js="暂时没有"
	end if
	call createjs(soft_weektopdown_js,js_path&cid&"_weektopdown.js")
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