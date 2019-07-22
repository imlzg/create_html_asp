<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%
dim act
act=Request.Form("act")
select case act
case ""
	call explain()
case "agree"
	call register()
case "ok"
	call savereg()
end select

sub explain()
Response.Write "<form name=explain action=install.asp method=post>"&_
"注册条约"&_
"<input name=act type=hidden value=agree>"&_
"<input name=button type=submit value=同意>"&_
"</form>"
end sub

sub register()
Response.Write "<form name=register action=install.asp method=post>"&_
"网站名称：<input name=sitename type=text>"&_
"网站地址：<input name=siteurl type=text>"&_
"网站管理员：<input name=sitemaster type=text>"&_
"管理员密码：<input name=password type=text>"&_
"文章文件夹：<input name=infof type=text>"&_
"文章列表文件夹：<input name=ilistf type=text>"&_
"文章内容文章夹：<input name=icontf type=text>"&_
"下载文件夹：<input name=softf type=text>"&_
"下载列表文件夹：<input name=slistf type=text>"&_
"下载内容文件夹：<input name=scontf type=text>"&_
"上传文件夹：<input name=uploadf type=text>"&_
"JS文件夹：<input name=jsf type=text>"&_
"生成文件后缀：<input name=suffix type=text>"&_
"<input name=button type=submit value=提交>"&_
"<input name=act type=hidden value=ok>"&_
"</form>"
end sub

sub savereg()
dim sitename,siteurl,sitemaster,password,infof,ilistf,icontf,softf,slistf,scontf,uploadf,jsf,suffix
sitename=Request.Form("sitename")
siteurl=Request.Form("siteurl")
sitemaster=trim(replace(request("sitemaster"),"'",""))
password=md5(trim(replace(request("password"),"'","")),16)
infof=Request.Form("infof")
ilistf=Request.Form("ilistf")
icontf=Request.Form("icontf")
softf=Request.Form("softf")
slistf=Request.Form("slistf")
scontf=Request.Form("scontf")
uploadf=Request.Form("uploadf")
jsf=Request.Form("jsf")
suffix=Request.Form("suffix")
if sitename="" or siteurl="" or sitemaster="" or password="" or infoc="" or ilistc="" or icontc="" or soft="" or slistc="" or scontc="" or js="" or suffix="" then
	finderr=true
	errmsg=errmsg&"<br><li>所有这些都必须填写！"
	exit sub
end if

dim sitesetting,createsetting
sitesetting=sitename&","&siteurl
createsetting=infof&","&ilistf&","&icontf&","&softf&","&slistf&","&scontf&","&jsf&","suffix
conn.execute "insert into admin(username,userpw) value(sitemaster,password)"
conn.execute "insert into congfig(sitesetting,createsetting) value(sitesetting,createsetting)"

dim fso,createhtml
set fso=server.CreateObject("scripting.filesystemobject")
with fso
.CreateFolder(server.MapPath("../")&infof)
.CreateFolder(server.MapPath("../")&softf)
.CreateFolder(server.MapPath("../"&infof&"/")&ilistf)
.CreateFolder(server.MapPath("../"&infof&"/")&icontf)
.CreateFolder(server.MapPath("../"&softf&"/")&slistf)
.CreateFolder(server.MapPath("../"&softf&"/")&scontf)
.CreateFolder(server.MapPath("../")&uploadf)
end with
Response.Write "安装成功！<br>"&_
"请删除 install.asp <a href=login.asp>进入后台</a>"
end sub
%>