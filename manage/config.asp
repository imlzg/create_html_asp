<!--#include file="conn.asp"-->
<!--#include file=const.asp-->
<%
dim act
act=Request.Form("act")
if act="save"
	call configsave()
else
	call config()
end if

sub config()
	Response.Write "<table>"&_
	"<form name=config action=config.asp method=post>"&_
	"<tr><td>网站名称</td><td><input name=site_info(1) type=text value="&site_info(1)&"></td></tr>"&_
	"<tr><td>网站地址</td><td><input name=site_info(2) type=text value="&site_info(2)&"></td></tr>"&_
	"<tr><td>网站LOGO地址</td><td><input name=site_info(3) type=text value="&site_info(3)&"></td></tr>"&_
	"<tr><td>管理员EMAIL</td><td><input name=site_info(4) type=text value="&site_info(4)&"></td></tr>"&_
	"<tr><td>联系我们的EMAIL</td><td><input name=site_info(5) type=text value="&site_info(5)&"></td></tr>"&_
	"<tr><td></td><td></td></tr>"&_
	"<tr><td>站点关键字</td><td><input name=site_meta(1) type=text value="&site_meta(1)&"></td></tr>"&_
	"<tr><td>站点描述</td><td><input name=site_meta(2) type=text value="&site_meta(2)&"></td></tr>"&_
	"<tr><td></td><td></td></tr>"&_
	"<tr><td>版权信息</td><td><textarea name=site_copyright(1) cols=8 rows=4>"&site_copyright(1)&"</textarea></td></tr>"&_
	"<tr><td>底部导航</td><td><textarea name=site_copyright(2) cols=8 rows=4>"&site_copyright(2)&"</textarea></td></tr>"&_
	"<tr><td></td><td></td></tr>"&_
	"<tr><td>友情连接</td><td><textarea name=site_liks cols=8 rows=4>"&site_links&"</textarea></td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
	"<input name=act type=hidden value=save></form>"&_
	"</table>"
end sub

sub saveconfig()
	dim site_set,site_info,site_meta,site_copyright,site_links
	site_info=Request.Form("site_info(1)")&"|"&Request.Form("site_info(2)")&"|"&Request.Form("site_info(3)")&"|"&Request.Form("site_info(4)")&"|"&Request.Form("site_info(5)")
	site_meta=Request.Form("site_meta(1)")&"|"&Request.Form("site_meta(2)")
	site_copyright=Request.Form("site_copyright(1)")&"|"&Request.Form("site_copyright(2)")
	site_links=replace(Request.Form("site_links"),"\n","|")
	site_set=site_info&"|||"&site_meta&"|||"&site_copyright&"|||"&site_links
	
	conn.execute("createrhtml_config_save_siteset "&site_set)
end sub
%>