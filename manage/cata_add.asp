<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim cid,kind
cid=request("cid")
call catadata()
call header()
call cataadd()
call footer()


'********* sort������ӣ��ǹ̶������ݿ��еģ�һ����INFO һ����SOFT ��ֻ���޸Ĳ������ݣ�������
'********** Ŀ¼�Ĳ���������Ӻ� �ǲ����޸ĵģ���Ŀ¼�ļ��С������ļ��С�JS�ļ��У���׺

sub cataadd()
	kind=2
	Response.Write "<SCRIPT language=Javascript>"&_
	"function CheckInput(){"&_
	"if(document.cataadd.pid.value == ''){"&_
	"alert('��ѡ���ϼ�Ŀ¼');"&_
	"document.cataadd.pid.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.cname.value==''){"&_
	"alert('������Ŀ¼��');"&_
	"document.cataadd.cname.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.seq.value==''){"&_
	"alert('��������ʾ����');"&_
	"document.cataadd.seq.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.cata_fldr.value==''){"&_
	"alert('������Ŀ¼�ļ���');"&_
	"document.cataadd.cata_fldr.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.cont_fldr.value==''){"&_
	"alert('�����������ļ���');"&_
	"document.cataadd.cata_fldr.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.js_fldr.value==''){"&_
	"alert('������JS�ļ���');"&_
	"document.cataadd.js_fldr.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.pagesize.value==''){"&_
	"alert('�������ҳ�ļ���');"&_
	"document.cataadd.pagesize.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.jssize.value==''){"&_
	"alert('������JS�ļ���');"&_
	"document.cataadd.jssize.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.suffix.value==''){"&_
	"alert('�������׺');"&_
	"document.cataadd.suffix.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataadd.mid.value==''){"&_
	"alert('��ѡ��ģ��');"&_
	"document.cataadd.mid.focus();"&_
	"return false;"&_
	"}"&_
	"return true;"&_
	"}"&_
	"</SCRIPT>"
	
	Response.Write "<table>"&_
	"<form name=cataadd action=cata_save.asp method=post onSubmit='return CheckInput()'>"&_
	"<tr><td>�ϼ�Ŀ¼</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>Ŀ¼��</td><td><input name=cname type=text></td></tr>"&_
	"<tr><td>ת��</td><td><input name=swerve type=text></td></tr>"&_
	"<tr><td>��ʾ</td><td><input name=show type=checkbox value=1></td></tr>"&_
	"<tr><td>����</td><td><input name=seq type=text></td></tr>"&_
	"<tr><td>Ŀ¼�ļ���</td><td><input name=cata_fldr type=text value="&cata_fldr&"></td></tr>"&_
	"<tr><td>�����ļ���</td><td><input name=cont_fldr type=text value="&cont_fldr&"></td></tr>"&_
	"<tr><td>JS�ļ���</td><td><input name=js_fldr type=text value="&js_fldr&"></td></tr>"&_
	"<tr><td>��ҳ�ļ���</td><td><input name=pagesize type=text value="&pagesize&"></td></tr>"&_
	"<tr><td>JS�ļ���</td><td><input name=jssize type=text value="&jssize&"></td></tr>"&_
	"<tr><td>��׺</td><td><input name=suffix type=text value="&suffix&"></td></tr>"&_
	"<tr><td>�ļ���</td><td><input name=cfname type=text></td></tr>"&_
	"<tr><td>ģ��</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=�ᡡ��></td></tr>"&_
	"<input name=act type=hidden value=add></form>"&_
	"</table>"
end sub

sub catalist()
	Response.Write "<select name=pid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)'ȡ��Ŀ¼�б�Ĵ洢����
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			if rs("cid")=cid then
				Response.Write "<option selected style=color:red value="&rs("cid")&">"&rs("cname")&"("&rs("cid")&")</font></option>"
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
	symbol="info"
	Response.Write "<select name=mid>"
	set rs=conn.execute("createrhtml_model_get_list "&symbol&","&kind)
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			Response.Write "<option value="&rs("mid")&">"&rs("mname")&"</option>"
		rs.movenext
		loop
	else
		Response.Write "<option>ûģ��</option>"
	end if
	Response.Write "</select>"
end sub
%>