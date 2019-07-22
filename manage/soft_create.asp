<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim sid,sids,i,imid,cid,sname,edition,lang,sort,mode,setting,vol,types,linkman,linkurl,demo,pic,about,score,hits,downs,lastdowntime,daydowns,weekdowns,err,addtime,newtime,uname,sfname,model_temp,soft_relative,info_relative,location,down_list
sid=request("sid")
sids=split(sid,",")

dim soft_path,js_path,java_script

for i=lbound(sids) to ubound(sids)
	sid=sids(i)
	call softtemp()
	call catadata()
	soft_path="../"&cont_fldr&"/"
	js_path="../"&js_fldr&"/"
	java_script="<script language=JavaScript src="
	location=java_script&js_path&"cata_"&cid&"_path.js></script>"&sname&edition
	call downlist()
	call inforelative()
	call softrelative()
	call modeltemp()
	call createhtml()
next

if request("act")="page" then
	Response.Write "<font color=#FF0000>■■■■■■■■■■■■■■■■■■■■<br>生成SOFT页完成</font>"&_
	"<script LANGUAGE=JavaScript>"&_
	"<!--"&_
	"setTimeout('window.close();', 500);"&_
	"// -->"&_
	"</script>"
end if

sub softtemp()
	set rs=conn.execute("createrhtml_soft_get_cont "&sid)
	cid=rs("cid")
	mid=rs("mid")
	sname=rs("sname")
	edition=rs("edition")
	lang=rs("lang")
	sort=rs("sort")
	mode=rs("mode")
	setting=rs("setting")
	vol=rs("vol")
	linkman=rs("linkman")
	linkurl=rs("linkurl")
	demo=rs("demo")
	pic=rs("pic")
	about=rs("about")
	score=rs("score")
	hits=rs("hits")
	downs=rs("downs")
	lastdowntime=rs("lastdowntime")
	daydowns=rs("daydowns")
	weekdowns=rs("weekdowns")
	err=rs("err")
	addtime=rs("addtime")
	newtime=rs("newtime")
	uname=rs("uname")
	sfname=rs("sfname")
end sub
'下载连接
sub downlist()
	set rs=conn.execute("createrhtml_soft_get_downlist "&sid)
	if not rs.eof then
		down_list=down_list&"<script language=javascript>function CreaterHtmlDown(downurl){var newwin=window.open(downurl,'','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no');return false;}</script>"
		do while not rs.eof
			down_list=down_list&"<a href=../down.asp?sid="&sid&"&seq="&rs("seq")&" onclick=""return CreaterHtmlDown(this.href);"">下载"
			if rs("urlname")<>"" then
				down_list=down_list&trim(rs("urlname"))
			else
				down_list=down_list&sname
			end if
			down_list=down_list&"</a>	"
		rs.movenext
		loop
	end if
end sub

'取和软体相关的 信息
sub inforelative()
	set rs=conn.execute("createrhtml_soft_get_relative_info "&sname&","&jssize)
	if not rs.eof then
		do while not rs.eof
			info_relative=info_relative&"<a href=../"&trim(rs(0))&"/"&trim(rs(1))&">"&trim(rs(2))&"</a><br>"
		rs.movenext
		loop
	else
		info_relative="暂时没有相关"
	end if
end sub

'取和软体相关的 软体
sub softrelative()
	set rs=conn.execute("createrhtml_soft_get_relative_soft "&sid&","&jssize)
	if not rs.eof then
		do while not rs.eof
			soft_relative=soft_relative&"<a href="&soft_path&trim(rs("sfname"))&">"&trim(rs("sname"))&"</a><br>"
		rs.movenext
		loop
	else
		soft_relative="暂时没有相关"
	end if
end sub

sub modeltemp()
	set rs=conn.execute("createrhtml_model_get_cont "&mid)
	model_temp=rs("content")
'	model_temp=replace(model_temp,"[creater_SITE_NAME]",site_info(1))
'	model_temp=replace(model_temp,"[creater_SITE_URL]",site_info(2))
'	model_temp=replace(model_temp,"[creater_ADMIN_LOGO]",site_info(3))
'	model_temp=replace(model_temp,"[creater_CONTACT_EMAIL]",site_info(4))
'	model_temp=replace(model_temp,"[creater_SITE_ME]",site_info(5))
'	model_temp=replace(model_temp,"[creater_SITE_KEYWORDS]",site_meta(1))
'	model_temp=replace(model_temp,"[creater_SITE_DISCRIPTION]",site_meta(2))
'	model_temp=replace(model_temp,"[creater_SITE_COPYRIGHT]",site_copyright(1))
'	model_temp=replace(model_temp,"[creater_SITE_BOTTOM_NAV]",site_copyright(2))
	model_temp=replace(model_temp,"[creater_SITE_LINK]",java_script&js_path&"site_link.js></script>")
	model_temp=replace(model_temp,"[creater_INFO_NAV]",java_script&js_path&"cata_info_nav.js></script>")
	model_temp=replace(model_temp,"[creater_SOFT_NAV]",java_script&js_path&"cata_soft_nav.js></script>")
	model_temp=replace(model_temp,"[creater_LOCATION]",location)
	model_temp=replace(model_temp,"[creater_CATA_SON]",java_script&js_path&"cata_"&cid&"_son.js></script>")
	model_temp=replace(model_temp,"[creater_CATA_EQUAL]",java_script&js_path&"cata_"&cid&"_equal.js></script>")
	model_temp=replace(model_temp,"[creater_NEW]",java_script&js_path&cid&"_new.js></script>")
	model_temp=replace(model_temp,"[creater_DOWN_TOP]",java_script&js_path&cid&"_tophit.js></script>")
	model_temp=replace(model_temp,"[creater_HIT_TOP]",java_script&js_path&cid&"_tophit.js></script>")
	model_temp=replace(model_temp,"[creater_NAME]",sname&edition)
	model_temp=replace(model_temp,"[creater_LANG]",lang)
	model_temp=replace(model_temp,"[creater_SORT]",sort)
	model_temp=replace(model_temp,"[creater_MODE]",mode)
	model_temp=replace(model_temp,"[creater_SETTING]",setting)
	model_temp=replace(model_temp,"[creater_VOL]",vol)
	model_temp=replace(model_temp,"[creater_LINKMAN]",linkman)
	model_temp=replace(model_temp,"[creater_LINKURL]",linkurl)
	model_temp=replace(model_temp,"[creater_DEMO]",demo)
	model_temp=replace(model_temp,"[creater_PIC]",pic)
	model_temp=replace(model_temp,"[creater_ABOUT]",about)
	model_temp=replace(model_temp,"[creater_SCORE]",score)
	model_temp=replace(model_temp,"[creater_HITS]",hits)
	model_temp=replace(model_temp,"[creater_DOWNS]",downs)
	model_temp=replace(model_temp,"[creater_LASTDOWNTIME]",lastdowntime)
	model_temp=replace(model_temp,"[creater_DAYDOWNS]",daydowns)
	model_temp=replace(model_temp,"[creater_WEEKDOWNS]",weekdowns)
	model_temp=replace(model_temp,"[creater_ERR]",err)
	model_temp=replace(model_temp,"[creater_ADDTIME]",addtime)
	model_temp=replace(model_temp,"[creater_NEWTIME]",newtime)
	model_temp=replace(model_temp,"[creater_USERNAME]",uname)
	model_temp=replace(model_temp,"[creater_SFNAME]",sfname)
	model_temp=replace(model_temp,"[creater_DOWNLIST]",down_list)
	model_temp=replace(model_temp,"[creater_SOFT_RELATIVE]",soft_relative)
	model_temp=replace(model_temp,"[creater_INFO_RELATIVE]",info_relative)
end sub

sub createhtml()
	dim fso,creater
	Set fso=Server.CreateObject("Scripting.FileSystemObject")
	if not fso.folderexists(server.MapPath(soft_path)) then
		fso.createfolder(server.MapPath(soft_path))
	end if
	Set creater=fso.CreateTextFile(server.mappath(soft_path&sfname))
	creater.Write model_temp
	creater.close
	set creater=nothing
	set fso=nothing
end sub
%>
