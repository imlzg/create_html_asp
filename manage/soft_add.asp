<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim cid,kind
cid=request("cid")
cid=2

call catadata()
call header()
call softadd()
call footer()

sub softadd()
	kind=3  'index=1,list=2,cont=3
	Response.Write "<script LANGUAGE='JavaScript'>"&_
	"function CheckInput(){"&_
	"if(document.softadd.cid.value == ''){"&_
	"alert('请选择类别');"&_
	"document.softadd.cid.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.sname.value==''){"&_
	"alert('请输入SOFT名');"&_
	"document.softadd.sname.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.edition.value==''){"&_
	"alert('请输入SOFT版本');"&_
	"document.softadd.edition.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.lang.value==''){"&_
	"alert('请输入软件语言');"&_
	"document.softadd.lang.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.sort.value==''){"&_
	"alert('请输入软件类型');"&_
	"document.softadd.sort.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.mode.value==''){"&_
	"alert('请输入授权方式');"&_
	"document.softadd.mode.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.setting.value==''){"&_
	"alert('请输入系统平台');"&_
	"document.softadd.setting.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.vol.value==''){"&_
	"alert('请输入文件大小');"&_
	"document.softadd.vol.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.linkman.value==''){"&_
	"alert('请输入联系人');"&_
	"document.softadd.linkman.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.linkurl.value==''){"&_
	"alert('请输入开发商');"&_
	"document.softadd.linkurl.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.demo.value==''){"&_
	"alert('请输入SOFT演示');"&_
	"document.softadd.demo.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.pic.value==''){"&_
	"alert('请输入SOFT图片');"&_
	"document.softadd.pic.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.about.value==''){"&_
	"alert('请输入SOFT简介');"&_
	"document.softadd.about.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.score.value==''){"&_
	"alert('请输入SOFT评价');"&_
	"document.softadd.score.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.mid.value==''){"&_
	"alert('请输入SOFT模版');"&_
	"document.softadd.mid.focus();"&_
	"return false;"&_
	"}"&_
	"if((softadd.mode4.checked) && (document.softadd.sfname.value=='')){"&_
	"alert('请输入文件名称');"&_
	"document.softadd.sfname.focus();"&_
	"return false;"&_
	"}"&_
	"return true;"&_
	"}"&_
	"</script>"
	
	Response.Write "<table>"&_
	"<form name=softadd action=soft_save.asp method=post onSubmit='return CheckInput()'>"&_
	"<tr><td>类别：</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>名称：</td><td><input name=sname type=text></td></tr>"&_
	"<tr><td>版本：</td><td><input name=edition type=text></td></tr>"&_
	"<tr><td>软件语言：</td><td><input name=lang type=text></td></tr>"&_
	"<tr><td>软件类型：</td><td><input name=sort type=text></td></tr>"&_
	"<tr><td>授权方式：</td><td><input name=mode type=text></td></tr>"&_
	"<tr><td>系统平台：</td><td><input name=setting type=text></td></tr>"&_
	"<tr><td>文件大小：</td><td><input name=vol type=text></td></tr>"&_
	"<tr><td>联 系 人：</td><td><input name=linkman type=text></td></tr>"&_
	"<tr><td>开 发 商：</td><td><input name=linkurl type=text></td></tr>"&_
	"<tr><td>演示：</td><td><input name=demo type=text></td></tr>"&_
	"<tr><td>图片：</td><td><input name=pic type=text></td></tr>"&_
	"<tr><td>简介：</td><td><textarea name=about cols=58 rows=16></textarea></td></tr>"&_
	"<tr><td>软件评价：</td><td><input name=score type=text></td></tr>"&_
	"<tr><td>模版：</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td>命名方式</td><td>ID<input id=mode1 name=namemode type=radio value=id onClick=change(1)> CID+ID<input id=mode2 name=namemode type=radio value=cidid onClick=change(1)> DATE<input id=mode3 name=namemode type=radio value=date onClick=change(1)> CUSTOM<input id=mode4 name=namemode type=radio value=custom onClick=change(2)><input id=name type=text name=sfname>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
	"<input name=act type=hidden value=add></form>"&_
	"</table>"

	Response.Write "<script LANGUAGE='JavaScript'>"&_
	"softadd.mode2.click();"&_
	"function change(id)"&_
	"{"&_
	"	if(id==1){"&_
	"	softadd.name.style.display='none';"&_
	"	}"&_
	"	if(id==2){"&_
	"	softadd.name.style.display='';"&_
	"	}"&_
	"}"&_
	"</script>"
end sub

sub catalist()
	Response.Write "<select name=cid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
		if rs("cid")=cid then
			Response.Write "<option selected value="&rs("cid")&">"&rs("cname")&rs("cid")&"</option>"
		else
			Response.Write "<option value="&rs("cid")&">"&rs("cname")&"</option>"
		end if
		rs.MoveNext
		loop
	else
		Response.Write "<option>暂时没有目录</option>"
	end if
	Response.Write "</select>"
end sub

sub modellist()
	Response.Write "<select name=mid>"
	set rs=conn.execute("createrhtml_model_get_list "&symbol&","&kind)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			Response.Write "<option value="&rs("mid")&">"&rs("mname")&"</option>"
		rs.MoveNext
		loop
	else
		Response.Write "<option>暂时没有模版</option>"
	end if
	Response.Write "</select>"
end sub
%>