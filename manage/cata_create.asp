<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim cid,pageno,pagecount
cid=clng(request("cid"))
pageno=clng(request("pageno"))
pagecount=request("pagecount")

'cata_fldr,cont_fldr,suffix,pagesize 由目录属性设置，在目录表中
'pagecount 由程序算出，并传到下一页
dim info_path,cata_path,js_path,java_script
dim list_temp,page_temp,contnum,model_temp

call catadata()
info_path="../"&cont_fldr&"/"
cata_path="../"&cata_fldr&"/"
js_path="../"&js_fldr&"/"
java_script="<script language=JavaScript src="

if isnumeric(pagecount)=0 or pagecount="" then
	call pagecounttemp() '单独生成某一页时使用
end if
pagecount=clng(pagecount)

if swerve<>"" then '***自动转向
	model_temp="<meta http-equiv=""Refresh"" content=""0; URL="&swerve&"""><a href="""&swerve&""">正在进入...</a>"
else
	call listtemp()
	call pagetemp()
	call modeltemp()
end if
call createhtml()

sub pagecounttemp()
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_cata_get_contnum"		'在存储过程内部指定是 SOFT OR INFO 然后取出数量
		.CommandType=4
		.Parameters.append .CreateParameter("@cid",3,1,3,cid)
		.Parameters.append .CreateParameter("@contnum",3,2,4)
	end with
	cmd.execute
	contnum=clng(cmd("@contnum"))
	if (contnum mod pagesize)=0 then
		pagecount=clng(contnum\pagesize)
	else
		pagecount=clng(contnum\pagesize+1)
	end if
end sub

sub listtemp()
	set rs=conn.execute("createrhtml_cata_get_contlist '"&cid&"','"&pageno&"','"&pagesize&"'")
	if not rs.eof then
		dim j
		j=0
		do while not rs.eof
			list_temp=list_temp&"<a href=../"&trim(rs(4))&"/"&trim(rs(3))&" target=_blank>"&trim(rs(1))&"</a><br>"
		set rs=rs.nextrecordset
		j=j+1
		if j>=pagesize then exit do
		loop
	else
		list_temp="暂时没有相关内容"
	end if
end sub

sub pagetemp()
	if pageno<=1 then
		page_temp=page_temp&"<font face=Webdings>9</font><font face=Webdings>7</font>"
	else
		page_temp=page_temp&"<a href="&cata_path&cfname&"_1"&suffix&" title=最前页><font face=Webdings>9</font></a><a href="&cata_path&cfname&"_"&pageno-1&suffix&" title=上一页><font face=Webdings>7</font></a>"
	end if
	dim p,pn,n
	p=clng(pageno-2)
	if p<1 then
		p=1
	end if
	for pn=p to pagecount
		n=n+1
		if pn=pageno then
			page_temp=page_temp&" <font color=#ff0000>["&pn&"]</font>"
		else
			page_temp=page_temp&" <a href="&cata_path&cfname&"_"&pn&suffix&">["&pn&"]</a>"
		end if
		if n>=6 then exit for
	next
	n=0
	page_temp=page_temp&" "
	if pageno>=pagecount then
		page_temp=page_temp&"<font face=Webdings>8</font><font face=Webdings>:</font>"
	else
		page_temp=page_temp&"<a href="&cata_path&cfname&"_"&pageno+1&suffix&" title=下一页><font face=Webdings>8</font></a><a href="&cata_path&cfname&"_"&pagecount&suffix&" title=最后页><font face=Webdings>:</font></a>"
	end if
	page_temp=page_temp&"转到<select onchange=if(this.options[this.selectedIndex].value!=''){location=this.options[this.selectedIndex].value;} id=select1 name=select1>"
	for n=1 to pagecount
		page_temp=page_temp&"<option value="&cata_path&cfname&"_"&n&suffix
		if pageno=n then
			page_temp=page_temp&" selected"
		end if
		page_temp=page_temp&">"&n&"</option>"
	next
	page_temp=page_temp&"</select>页"
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
'	model_temp=replace(model_temp,"[creater_SITE_LINK]",java_script&js_path&"site_link.js></script>")
'	model_temp=replace(model_temp,"[creater_INFO_NAV]",java_script&js_path&"cata_info_nav.js></script>")
'	model_temp=replace(model_temp,"[creater_SOFT_NAV]",java_script&js_path&"cata_soft_nav.js></script>")
'	model_temp=replace(model_temp,"[creater_LOCATION]",java_script&js_path&"cata_"&cid&"_location.js></script>")
'	'model_temp=replace(model_temp,"[creater_SEARCH]",java_script&js_path&""&cid&"_search.js></script>")
	model_temp=replace(model_temp,"[creater_CATA_SON]",java_script&js_path&cid&"_son.js></script>")
	model_temp=replace(model_temp,"[creater_CATA_EQUAL]",java_script&js_path&cid&"_equal.js></script>")
'	model_temp=replace(model_temp,"[creater_NEW]",java_script&js_path&""&cid&"_new.js></script>")
	model_temp=replace(model_temp,"[creater_HIT_TOP]",java_script&js_path&""&cid&"_tophit.js></script>")
	model_temp=replace(model_temp,"[creater_LIST]",list_temp)
'	model_temp=replace(model_temp,"[creater_LIST]",page_temp)
end sub

sub createhtml()
	dim fso,creater
	Set fso=Server.CreateObject("Scripting.FileSystemObject")
	if not fso.folderexists(server.MapPath(cata_path)) then
		fso.createfolder(server.MapPath(cata_path))
	end if
	Set creater=fso.CreateTextFile(server.mappath(cata_path&cfname&"_"&pageno&suffix))
	creater.Write model_temp
	creater.close
	set creater=nothing
	set fso=nothing
end sub
%>