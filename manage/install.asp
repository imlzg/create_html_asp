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
"ע����Լ"&_
"<input name=act type=hidden value=agree>"&_
"<input name=button type=submit value=ͬ��>"&_
"</form>"
end sub

sub register()
Response.Write "<form name=register action=install.asp method=post>"&_
"��վ���ƣ�<input name=sitename type=text>"&_
"��վ��ַ��<input name=siteurl type=text>"&_
"��վ����Ա��<input name=sitemaster type=text>"&_
"����Ա���룺<input name=password type=text>"&_
"�����ļ��У�<input name=infof type=text>"&_
"�����б��ļ��У�<input name=ilistf type=text>"&_
"�����������¼У�<input name=icontf type=text>"&_
"�����ļ��У�<input name=softf type=text>"&_
"�����б��ļ��У�<input name=slistf type=text>"&_
"���������ļ��У�<input name=scontf type=text>"&_
"�ϴ��ļ��У�<input name=uploadf type=text>"&_
"JS�ļ��У�<input name=jsf type=text>"&_
"�����ļ���׺��<input name=suffix type=text>"&_
"<input name=button type=submit value=�ύ>"&_
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
	errmsg=errmsg&"<br><li>������Щ��������д��"
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
Response.Write "��װ�ɹ���<br>"&_
"��ɾ�� install.asp <a href=login.asp>�����̨</a>"
end sub
%>