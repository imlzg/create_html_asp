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
	"alert('��ѡ�����');"&_
	"document.softadd.cid.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.sname.value==''){"&_
	"alert('������SOFT��');"&_
	"document.softadd.sname.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.edition.value==''){"&_
	"alert('������SOFT�汾');"&_
	"document.softadd.edition.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.lang.value==''){"&_
	"alert('�������������');"&_
	"document.softadd.lang.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.sort.value==''){"&_
	"alert('�������������');"&_
	"document.softadd.sort.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.mode.value==''){"&_
	"alert('��������Ȩ��ʽ');"&_
	"document.softadd.mode.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.setting.value==''){"&_
	"alert('������ϵͳƽ̨');"&_
	"document.softadd.setting.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.vol.value==''){"&_
	"alert('�������ļ���С');"&_
	"document.softadd.vol.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.linkman.value==''){"&_
	"alert('��������ϵ��');"&_
	"document.softadd.linkman.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.linkurl.value==''){"&_
	"alert('�����뿪����');"&_
	"document.softadd.linkurl.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.demo.value==''){"&_
	"alert('������SOFT��ʾ');"&_
	"document.softadd.demo.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.pic.value==''){"&_
	"alert('������SOFTͼƬ');"&_
	"document.softadd.pic.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.about.value==''){"&_
	"alert('������SOFT���');"&_
	"document.softadd.about.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.score.value==''){"&_
	"alert('������SOFT����');"&_
	"document.softadd.score.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.softadd.mid.value==''){"&_
	"alert('������SOFTģ��');"&_
	"document.softadd.mid.focus();"&_
	"return false;"&_
	"}"&_
	"if((softadd.mode4.checked) && (document.softadd.sfname.value=='')){"&_
	"alert('�������ļ�����');"&_
	"document.softadd.sfname.focus();"&_
	"return false;"&_
	"}"&_
	"return true;"&_
	"}"&_
	"</script>"
	
	Response.Write "<table>"&_
	"<form name=softadd action=soft_save.asp method=post onSubmit='return CheckInput()'>"&_
	"<tr><td>���</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>���ƣ�</td><td><input name=sname type=text></td></tr>"&_
	"<tr><td>�汾��</td><td><input name=edition type=text></td></tr>"&_
	"<tr><td>������ԣ�</td><td><input name=lang type=text></td></tr>"&_
	"<tr><td>������ͣ�</td><td><input name=sort type=text></td></tr>"&_
	"<tr><td>��Ȩ��ʽ��</td><td><input name=mode type=text></td></tr>"&_
	"<tr><td>ϵͳƽ̨��</td><td><input name=setting type=text></td></tr>"&_
	"<tr><td>�ļ���С��</td><td><input name=vol type=text></td></tr>"&_
	"<tr><td>�� ϵ �ˣ�</td><td><input name=linkman type=text></td></tr>"&_
	"<tr><td>�� �� �̣�</td><td><input name=linkurl type=text></td></tr>"&_
	"<tr><td>��ʾ��</td><td><input name=demo type=text></td></tr>"&_
	"<tr><td>ͼƬ��</td><td><input name=pic type=text></td></tr>"&_
	"<tr><td>��飺</td><td><textarea name=about cols=58 rows=16></textarea></td></tr>"&_
	"<tr><td>������ۣ�</td><td><input name=score type=text></td></tr>"&_
	"<tr><td>ģ�棺</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td>������ʽ</td><td>ID<input id=mode1 name=namemode type=radio value=id onClick=change(1)> CID+ID<input id=mode2 name=namemode type=radio value=cidid onClick=change(1)> DATE<input id=mode3 name=namemode type=radio value=date onClick=change(1)> CUSTOM<input id=mode4 name=namemode type=radio value=custom onClick=change(2)><input id=name type=text name=sfname>"&_
	"<tr><td></td><td><input name=button type=submit value=�ᡡ��></td></tr>"&_
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
		Response.Write "<option>��ʱû��Ŀ¼</option>"
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
		Response.Write "<option>��ʱû��ģ��</option>"
	end if
	Response.Write "</select>"
end sub
%>