<!--#include file="conn.asp"-->
<%
dim act,cid,swerve,symbol,catano,catanum,scid,pi,time,createcont,createcata
act=trim(request("act"))
cid=clng(request("cid"))
pi=clng(request("pi"))
time=request("time")
createcata=trim(request("createcata"))
createcont=trim(request("createcont"))
catano=request("catano")
catanum=request("catanum")
if isnumeric(catano)=0 or catano="" then
	catano=1
	time=timer()
end if
if isnumeric(catanum)=0 or catanum="" then
	catanum=1
end if
catano=clng(catano)
catanum=clng(catanum)

select case act
case "all"
	if catanum=1 then
		call cataAll()
	end if
	call cataCreate()
case "single"
	call cataCreate()
case "ok"
	call Success()
end select

sub cataAll()
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_cata_get_num"
		.CommandType=4
		.Parameters.append .CreateParameter("@cid",200,1,150,cid)
		.Parameters.append .CreateParameter("@catanum",3,2,3)
	end with
	cmd.Execute
	catanum=cmd("@catanum")
end sub

sub cataCreate()
	set rs=conn.execute("createrhtml_cata_get_page '"&catano&"','"&cid&"'") '挨个取出目录CID   catasize=1 每次取一个目录
	if not rs.eof then
		scid=clng(rs("cid"))
		swerve=trim(rs("swerve"))
		symbol=trim(rs("symbol"))
	end if
	Response.Write "<b><font color=#ff0000>"&catano&"</font>/<font color=#ff0000>"&catanum&"</font>正在生成INFO的HTML列表页，请稍等...</b><span id=showImport></span><IE:Download id=""oDownload""STYLE=""behavior:url(#default#download)""/>"
	if createcont="yes" then
		if swerve="" then
			call createJs()
			select case symbol
			case "info"
				pi=pi+2
			case "soft"
				pi=pi+5
			end select
		end if
	end if
	if createcata="yes" then
		call createCataJs()
		pi=pi+3
	end if
	if catano>=catanum then
		Response.Write "<meta http-equiv=refresh content='0;url=cata_create_js_all.asp?act=ok&catano="&catano&"&pi="&pi&"&time="&time&"'>"
	else
		Response.Write "<meta http-equiv=refresh content='0;url=cata_create_js_all.asp?act="&act&"&cid="&cid&"&createcont="&createcont&"&createcata="&createcata&"&catano="&catano+1&"&catanum="&catanum&"&pi="&pi&"&time="&time&"'>"
	end if
end sub

sub createCataJs()
	Response.Write "<script>function onDownloadDone(downData){showImport.innerHTML=downDate}oDownload.startDownload('cata_create_js_cata.asp?cid="&scid&"',onDownloadDone)</script>"
end sub

sub createJs()
	Response.Write "<script>function onDownloadDone(downData){showImport.innerHTML=downDate}oDownload.startDownload('cata_create_js.asp?cid="&scid&"',onDownloadDone)</script>"
end sub

sub success()
	Response.Write "<b>操作成功：共生成分类<font color=#ff0000>"&catano&"</font>个，JS<font color=#ff0000>"&pi&"</font>个，总费时<font color=#ff0000>"&formatnumber((timer()-time),2)&"</font>秒，完成时间"&now()&"</b>"
end sub
%>