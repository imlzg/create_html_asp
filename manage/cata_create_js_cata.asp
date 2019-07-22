<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
'子栏目JS、同级栏目JS、目录路径
dim cid,cata_son_js,cata_equal_js,cata_path_js,js_path
cid=request("cid")

call getSymbol()
call cataSonjsCreate()
call cataEqualjsCreate()
call cataPathjsCreate()

sub getSymbol()
	set rs=conn.execute("createrhtml_cata_get_symbol '"&cid&"'") '挨个取出目录CID   catasize=1 每次取一个目录
	if not rs.eof then
	'	symbol=trim(rs("symbol"))
		js_path="../"&trim(rs("js_fldr"))&"/"
	end if
end sub

sub cataSonjsCreate()
	set rs=conn.execute("createrhtml_cata_get_jsson "&cid)
	if not rs.eof then
		do while not rs.eof
			cata_son_js=cata_son_js&"<a href=../"&trim(rs(3))&"/"&trim(rs(2))&"_1"&trim(rs(4))&">"&split(trim(rs(0)),"|")(clng(rs(1))-1)&"</a>"
		rs.movenext
		loop
	else
		rs.close:set rs=nothing
		set rs=conn.execute("createrhtml_cata_get_jsequal "&cid)
		do while not rs.eof
			cata_son_js=cata_son_js&"<a href=../"&trim(rs(3))&"/"&trim(rs(2))&"_1"&trim(rs(4))&">"&split(trim(rs(0)),"|")(clng(rs(1))-1)&"</a>"
		rs.movenext
		loop
	end if
	call createjs(cata_son_js,js_path&cid&"_son.js")
end sub

sub cataEqualjsCreate()
	set rs=conn.execute("createrhtml_cata_get_jsequal "&cid)
	if not rs.eof then
		do while not rs.eof
			cata_equal_js=cata_equal_js&"<a href=../"&trim(rs(3))&"/"&trim(rs(2))&"_1"&trim(rs(4))&">"&split(trim(rs(0)),"|")(clng(rs(1))-1)&"</a>"
		rs.movenext
		loop
	else
		cata_equal_js="没有目录"
	end if
	call createjs(cata_equal_js,js_path&cid&"_equal.js")
end sub

sub cataPathjsCreate()
	set rs=conn.execute("createrhtml_cata_get_jspath "&cid)
	if not rs.eof then
		do while not rs.eof
			cata_path_js=cata_path_js&"<a href=../"&trim(rs(3))&"/"&trim(rs(2))&"_1"&trim(rs(4))&">"&split(trim(rs(0)),"|")(clng(rs(1))-1)&"</a>"
		rs.movenext
		loop
	else
		cata_pathjs="没有目录"
	end if
	call createjs(cata_path_js,js_path&cid&"_path.js")
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