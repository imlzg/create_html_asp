<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim iid,iids,i,cid,imid,title,content,keyword,hits,author,provenance,uname,newtime,ifname,model_temp,soft_relative,info_relative,location
iid=request("iid")
iids=split(iid,",")

dim info_path,js_path,java_script

for i=lbound(iids) to ubound(iids)
	iid=iids(i)
	call infotemp()
	call catadata()
	info_path="../"&cont_fldr&"/"
	js_path="../"&js_fldr&"/"
	java_script="<script language=JavaScript src="
	location=java_script&js_path&"cata_"&cid&"_path.js></script>"&title
	call inforelative()
	call softrelative()
	call modeltemp()
	call createhtml()
next

if request("act")="page" then
	Response.Write "<font color=#FF0000>■■■■■■■■■■■■■■■■■■■■<br>生成INFO页完成</font>"&_
	"<script LANGUAGE=JavaScript>"&_
	"<!--"&_
	"setTimeout('window.close();', 500);"&_
	"// -->"&_
	"</script>"
end if

sub infotemp()
	set rs=conn.execute("createrhtml_info_get_cont '"&iid&"'")
	cid=rs("cid")
	imid=rs("mid")
	title=rs("title")
	content=rs("content")
	keyword=rs("keyword")
	hits=rs("hits")
	author=rs("author")
	provenance=rs("provenance")
	uname=rs("uname")
	newtime=rs("newtime")
	ifname=rs("ifname")
end sub

'取和信息相关的 信息
sub inforelative()
	set rs=conn.execute("createrhtml_info_get_relative_info '"&iid&"','"&jssize&"'")'找出关键词相似，用like 并且IID不相等的那些 se like '"&se&"' and se<>'' and id<>"&id&"
	if not rs.eof then
		do while not rs.eof
			info_relative=info_relative&"<a href="&info_path&trim(rs("ifname"))&">"&trim(rs("title"))&"</a><br>"
		rs.movenext
		loop
	else
		info_relative="暂时没有相关"
	end if
end sub

'取和信息相关的 软体
sub softrelative()
	set rs=conn.execute("createrhtml_info_get_relative_soft '"&keyword&"','"&jssize&"'")'找出软件名称中有关键词的那些，用like
	if not rs.eof then
		do while not rs.eof
			soft_relative=soft_relative&"<a href=../"&trim(rs(0))&"/"&trim(rs(1))&">"&trim(rs(2))&trim(rs(3))&"</a><br>"
		rs.movenext
		loop
	else
		soft_relative="暂时没有相关"
	end if
end sub

sub modeltemp()
	set rs=conn.execute("createrhtml_model_get_cont '"&imid&"'")
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
	model_temp=replace(model_temp,"[creater_HIT_TOP]",java_script&js_path&cid&"_tophit.js></script>")
	model_temp=replace(model_temp,"[creater_SOFT_RELATIVE]",soft_relative)
	model_temp=replace(model_temp,"[creater_INFO_RELATIVE]",info_relative)
	model_temp=replace(model_temp,"[creater_TITLE]",title)
	model_temp=replace(model_temp,"[creater_CONTENT]",content)
	model_temp=replace(model_temp,"[creater_HITS]",hits)
	model_temp=replace(model_temp,"[creater_AUTHOR]",author)
	model_temp=replace(model_temp,"[creater_PROV]",provenance)'出处
	model_temp=replace(model_temp,"[creater_USERNAME]",uname)
	model_temp=replace(model_temp,"[creater_NEWTIME]",newtime)
end sub

sub createhtml()
	dim fso,creater
	Set fso=Server.CreateObject("Scripting.FileSystemObject")
	if not fso.folderexists(server.MapPath(info_path)) then
		fso.createfolder(server.MapPath(info_path))
	end if
	Set creater=fso.CreateTextFile(server.mappath(info_path&ifname))
	creater.Write model_temp
	creater.close
	set creater=nothing
	set fso=nothing
end sub
%>