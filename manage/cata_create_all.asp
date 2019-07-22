<!--#include file="conn.asp"-->
<%
dim act,cid,pagesize,catano,catanum,scid,stree,swerve,contnum,pagecount,pageno,pi,i,time
act=trim(request("act"))
cid=clng(request("cid"))
pi=clng(request("pi"))
time=request("time")
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
		pagesize=clng(rs("pagesize"))
	end if
	if swerve="" then
		set cmd=server.CreateObject("adodb.command")
		with cmd
			.ActiveConnection=conn
			.CommandText="createrhtml_cata_get_contnum"		'在存储过程内部指定是 SOFT OR INFO 然后取出数量
			.CommandType=4
			.Parameters.append .CreateParameter("@cid",3,1,3,scid)
			.Parameters.append .CreateParameter("@contnum",3,2,4)
		end with
		cmd.execute
		contnum=clng(cmd("@contnum"))
		if contnum<>0 then
			if (contnum mod pagesize)=0 then
				pagecount=clng(contnum\pagesize)
			else
				pagecount=clng(contnum\pagesize+1)
			end if
		else
			pagecount=1
		end if
	else
		pagecount=1
	end if
	Response.Write "<b><font color=#ff0000>"&catano&"</font>/<font color=#ff0000>"&catanum&"</font>正在生成CATA的HTML列表页，请稍等...</b><span id=showImport></span><IE:Download id=""oDownload""STYLE=""behavior:url(#default#download)""/>"
	for pageno=1 to pagecount
		i=i+1
		call createhtml()
	next
	if catano>=catanum then
		Response.Write "<meta http-equiv=refresh content='0;url=cata_create_all.asp?act=ok&catano="&catano&"&pi="&pi+i&"&time="&time&"'>"
	else
		Response.Write "<meta http-equiv=refresh content='0;url=cata_create_all.asp?act="&act&"&cid="&cid&"&catano="&catano+1&"&catanum="&catanum&"&pi="&pi+i&"&time="&time&"'>"
	end if
end sub

sub createhtml()
	Response.Write "<script>function onDownloadDone(downData){showImport.innerHTML=downDate}oDownload.startDownload('cata_create.asp?cid="&scid&"&pageno="&i&"&pagecount="&pagecount&"',onDownloadDone)</script>"
end sub

sub success()
	Response.Write "<b>操作成功：共生成分类<font color=#ff0000>"&catano&"</font>个，页面<font color=#ff0000>"&pi&"</font>个，总费时<font color=#ff0000>"&formatnumber((timer()-time),2)&"</font>秒，完成时间"&now()&"</b>"
end sub
%>