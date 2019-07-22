<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim act
act=Request.Form("act")
select case act
case "add"
	call infoAddSave()
	if finderr then call error()
case "edit"
	call infoEditSave()
	if finderr then call error()
case "del"
	call infoDelSave()
	if finderr then call error()
case "move"
	call infoMoveSave()
	if finderr then call error()
end select

sub infoAddSave()
	dim cid,mid,title,content,keyword,author,provenance,uname,datetimestr,pass,namemode,ifname
		cid=Request.Form("cid")
		mid=Request.Form("mid")
		title=Request.Form("title")
		content=Request.Form("content")
		keyword=Request.Form("keyword")
		author=Request.Form("author")
		provenance=Request.Form("provenance")
		uname=session("uname")
		datetimestr=cdate(now()+sitetime/24)
		pass=Request.Form("pass")
		namemode=Request.Form("namemode")
	if cid="" then
		finderr=true
		errmsg=errmsg&"<br><li>请选择栏目！"
		exit sub
	end if
	if title="" or content="" then
		finderr=true
		errmsg=errmsg&"<br><li>怎么能没有标题和内容呢！"
		exit sub
	end if
	if keyword="" then
		keyword=" "
	end if
	if author="" then
		author="创造者"
	end if
	if provenance="" then
		provenance="creater.cn"
	end if
	select case namemode
	case "id"
		ifname="A" '&iid
	case "cidid"
		ifname="A"&cid '&iid
	case "date"
		ifname=now()
		ifname="A"&year(ifname)&month(ifname)&day(ifname)&"C"&hour(ifname)&minute(ifname)&second(ifname) '&iid
	case "custom"
		ifname=Request.Form("ifname") '&iid
	end select
	conn.execute("createrhtml_info_save_add '"&cid&"','"&mid&"','"&title&"','"&content&"','"&keyword&"','"&author&"','"&provenance&"','"&uname&"','"&datetimestr&"','"&pass&"','"&ifname&suffix&"'")
	Response.Write "添加成功！"
end sub

sub infoEditSave()
	dim iid,cid,mid,title,content,keyword,author,provenance,datetimestr,pass
		iid=Request.Form("iid")
		cid=Request.Form("cid")
		mid=Request.Form("mid")
		title=Request.Form("title")
		author=Request.Form("author")
		provenance=Request.Form("provenance")
		content=Request.Form("content")
		keyword=Request.Form("keyword")
		datetimestr=cdate(now()+sitetime/24)
		pass=Request.Form("pass")
	if cid="" then
		finderr=true
		errmsg=errmsg&"<br><li>请选择栏目！"
		exit sub
	end if
	if title="" or content="" then
		finderr=true
		errmsg=errmsg&"<br><li>怎么能没有标题和内容呢！"
		exit sub
	end if
	if keyword="" then
		keyword=" "
	end if
	if author="" then
		author="创造者"
	end if
	if provenance="" then
		provenance="creater.cn"
	end if
	if pass="" then
		pass=0
	end if
	conn.execute("createrhtml_info_save_edit '"&iid&"','"&cid&"','"&mid&"','"&title&"','"&author&"','"&provenance&"','"&content&"','"&keyword&"','"&datetimestr&"','"&pass&"'")
	Response.Write "修改成功！"
end sub

'sub infoDelSave()
'	dim iid,i
	'iid=Request("iid")
'	iid=split(Request("iid"),",")
'	for i=lbound(iid) to ubound(iid)
'		conn.execute("createrhtml_info_save_del "&iid(i))
'		Response.Write "<meta http-equiv=""refresh"" content=""0;url='info_delete.asp?iid='"&iid&""">"
'	next
'	Response.Write "删除成功！"
'end sub

sub infoMoveSave()
	dim iid,cid,i
	iid=split(request("iid"),",")
	cid=request("cid")
	for i=lbound(iid) to ubound(iid)
		conn.execute("createrhtml_info_save_move '"&iid&"','"&cid&"'")
	next
end sub

sub infoScoreSave()
	dim iid,score,i
	iid=split(request("iid"),",")
	score=request("score")
	for i=lbound(iid) to ubound(iid)
		conn.execute("createrhtml_info_save_score '"&iid&"','"&score&"'")
	next
end sub

sub infoGroomSave()
	dim iid,groom,i
	iid=split(request("iid"),",")
	groom=request("groom")
	for i=lbound(iid) to ubound(iid)
		conn.execute("createrhtml_info_save_groom '"&iid&"','"&groom&"'")
	next
end sub

sub infoUserSave()
	dim iid,user,i
	iid=split(request("iid"),",")
	user=request("user")
	for i=lbound(iid) to ubound(iid)
		conn.execute("createrhtml_info_save_user '"&iid&"','"&user&"'")
	next
end sub	
%>
