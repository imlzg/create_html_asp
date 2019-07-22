<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim act
act=Request.Form("act")
select case act
case "add"
	call softAddSave()
	if finderr then call error()
case "edit"
	call softEditSave()
	if finderr then call error()
case "del"
	call softDelSave()
	if finderr then call error()
case "move"
	call softMoveSave()
	if finderr then call error()
case "score"
	call softScoreSave()
	if finderr then call error()
end select

sub softAddSave()
	dim cid,mid,sname,edition,lang,sort,mode,setting,vol,linkman,linkurl,demo,pic,about,score,namemode,datetimestr,uname,pass,sfname
		cid=Request.Form("cid")
		mid=Request.Form("mid")
		sname=Request.Form("sname")
		edition=Request.Form("edition")
		lang=Request.Form("lang")
		sort=Request.Form("sort")
		mode=Request.Form("mode")
		setting=Request.Form("setting")
		vol=Request.Form("vol")
		linkman=Request.Form("linkman")
		linkurl=Request.Form("linkurl")
		demo=Request.Form("demo")
		pic=Request.Form("pic")
		about=Request.Form("about")
		score=Request.Form("score")
		namemode=Request.Form("namemode")
		datetimestr=cdate(now()+sitetime/24)
		uname=session("uname")
		pass=Request.Form("pass")
	if cid="" then
		finderr=true
		errmsg=errmsg&"<br><li>请选择类别！"
		exit sub
	end if
	if sname="" or lang="" or sort="" or mode="" or setting="" or score="" or about="" then
		finderr=true
		errmsg=errmsg&"<br><li>一些必要的内容得填！"
		exit sub
	end if
	if edition="" then
		edition=" "
	end if
	if vol="" then
		vol=" "
	end if
	if linkman="" then
		linkman=" "
	end if
	if linkurl="" then
		linkurl="http://creater.cn"
	end if
	if pic="" then
		pic=" "
	end if
	if demo="" then
		demo=" "
	end if
	select case namemode
	case "id"
		sfname="S" '&iid
	case "cidid"
		sfname="S"&cid '&iid
	case "date"
		sfname=now()
		sfname="S"&year(sfname)&month(sfname)&day(sfname)&"C"&hour(sfname)&minute(sfname)&second(sfname) '&iid
	case "custom"
		sfname=Request.Form("sfname") '&iid
	end select
	conn.execute("createrhtml_soft_save_add '"&cid&"','"&mid&"','"&sname&"','"&edition&"','"&lang&"','"&sort&"','"&mode&"','"&setting&"','"&vol&"','"&linkman&"','"&linkurl&"','"&demo&"','"&pic&"','"&about&"','"&score&"','"&datetimestr&"','"&uname&"','"&pass&"','"&sfname&"'")
	Response.Write "添加成功！"
end sub

sub softEditSave()
	dim sid,cid,mid,sname,edition,lang,sort,mode,setting,vol,linkman,linkurl,demo,pic,about,score,datetimestr,pass
		sid=Request.Form("sid")
		cid=Request.Form("cid")
		mid=Request.Form("mid")
		sname=Request.Form("sname")
		edition=Request.Form("edition")
		lang=Request.Form("lang")
		sort=Request.Form("sort")
		mode=Request.Form("mode")
		setting=Request.Form("setting")
		vol=Request.Form("vol")
		linkman=Request.Form("linkman")
		linkurl=Request.Form("linkurl")
		demo=Request.Form("demo")
		pic=Request.Form("pic")
		about=Request.Form("about")
		score=Request.Form("score")
		datetimestr=cdate(now()+sitetime/24)
		pass=Request.Form("pass")
	if cid="" then
		finderr=true
		errmsg=errmsg&"<br><li>请选择类别！"
		exit sub
	end if
	if sname="" or lang="" or sort="" or mode="" or setting="" or score="" or about="" then
		finderr=true
		errmsg=errmsg&"<br><li>一些必要的内容得填！"
		exit sub
	end if
	if edition="" then
		edition=" "
	end if
	if vol="" then
		vol=" "
	end if
	if linkman="" then
		linkman=" "
	end if
	if linkurl="" then
		linkurl="http://creater.cn"
	end if
	if pic="" then
		pic=" "
	end if
	if demo="" then
		demo=" "
	end if
	if pass="" then
		pass=0
	end if
	conn.execute("createrhtml_soft_save_edit '"&sid&"','"&cid&"','"&mid&"','"&sname&"','"&edition&"','"&lang&"','"&sort&"','"&mode&"','"&setting&"','"&vol&"','"&linkman&"','"&linkurl&"','"&demo&"','"&pic&"','"&about&"','"&score&"','"&datetimestr&"','"&pass&"'")
	Response.Write "修改成功！"
end sub

'sub softDelSave()
'	dim sid,i
'	'sid=Request("sid")
'	sid=split(request("sid"),",")
'	for i=lbound(sid) to ubound(sid)
'		conn.execute("createrhtml_soft_save_del "&sid(i))
'		Response.Write "<meta http-equiv=""refresh"" content=""0;url='soft_delete.asp?sid='"&sid&""">"
'	next
'	Response.Write "删除成功！"
'end sub

sub softMoveSave()
	dim sid,cid,i
	sid=split(request("sid"),",")
	cid=request("cid")
	for i=lbound(sid) to ubound(sid)
		conn.execute("createrhtml_soft_save_move "&sid&","&cid)
	next
end sub

sub softScoreSave()
	dim sid,score,i
	sid=split(request("sid"),",")
	score=request("score")
	for i=lbound(sid) to ubound(sid)
		conn.execute("createrhtml_soft_save_score "&sid&","&score)
	next
end sub

sub softGroomSave()
	dim sid,groom,i
	sid=split(request("sid"),",")
	groom=request("groom")
	for i=lbound(sid) to ubound(sid)
		conn.execute("createrhtml_soft_save_groom "&sid&","&groom)
	next
end sub

sub softUserSave()
	dim sid,user,i
	sid=split(request("sid"),",")
	user=request("user")
	for i=lbound(sid) to ubound(sid)
		conn.execute("createrhtml_soft_save_user "&sid&","&user)
	next
end sub	
%>
