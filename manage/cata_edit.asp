<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim cid,kind
cid=request("cid")

call catadata()
cname=split(cname,"|")(grade-1)
call header()
call cataedit()
call footer()

sub cataedit()
	kind=2  'index=1,list=2,cont=3
	Response.Write "<SCRIPT language=Javascript>"&_
	"function CheckInput(){"&_
	"if(document.cataedit.pid.value == ''){"&_
	"alert('��ѡ���ϼ�Ŀ¼');"&_
	"document.cataedit.pid.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.cname.value==''){"&_
	"alert('������Ŀ¼��');"&_
	"document.cataedit.cname.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.seq.value==''){"&_
	"alert('��������ʾ����');"&_
	"document.cataedit.seq.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.pagesize.value==''){"&_
	"alert('�������ҳ�ļ���');"&_
	"document.cataedit.pagesize.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.jssize.value==''){"&_
	"alert('������JS�ļ���');"&_
	"document.cataedit.jssize.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.suffix.value==''){"&_
	"alert('�������׺');"&_
	"document.cataedit.suffix.focus();"&_
	"return false;"&_
	"}"&_
	"if(document.cataedit.mid.value==''){"&_
	"alert('��ѡ��ģ��');"&_
	"document.cataedit.mid.focus();"&_
	"return false;"&_
	"}"&_
	"return true;"&_
	"}"&_
	"</SCRIPT>"

	Response.Write "<table>"&_
	"<form name=cataedit action=cata_save.asp method=post onSubmit='return CheckInput()'>"&_
	"<tr><td>�ϼ�Ŀ¼</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>Ŀ¼��</td><td><input name=cname type=text value="&cname&"></td></tr>"&_
	"<tr><td>ת��</td><td><input name=redirect type=text value="&swerve&"></td></tr>"&_
	"<tr><td>��ʾ</td><td><input name=show type=checkbox value=1 "
	if show=1 then
		Response.Write "checked"
	end if
	Response.Write "></td></tr>"&_
	"<tr><td>����</td><td><input name=seq type=text value="&seq&"></td></tr>"&_
	"<tr><td>��ҳ�ļ���</td><td><input name=pagesize type=text value="&pagesize&"></td></tr>"&_
	"<tr><td>JS�ļ���</td><td><input name=jssize type=text value="&jssize&"></td></tr>"&_
	"<tr><td>ģ�棺</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=�ᡡ��></td></tr>"&_
	"<input name=cid type=hidden value="&cid&">"&_
	"<input name=act type=hidden value=edit></form>"&_
	"</table>"
end sub

sub catalist()
	Response.Write "<select name=pid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)'ȡ��Ŀ¼�б�Ĵ洢����
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
		if clng(rs("cid"))=pid then
			Response.Write "<option selected style=color:red value="&rs("cid")&">"&rs("cname")&rs("cid")&"</option>"
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
			if rs("mid")=mid then
				Response.Write "<option selected value="&rs("mid")&">"&rs("mname")&"</option>"
			else
				Response.Write "<option value="&rs("mid")&">"&rs("mname")&"</option>"
			end if
		rs.MoveNext
		loop
	else
		Response.Write "<option>��ʱû��ģ��</option>"
	end if
	Response.Write "</select>"
end sub
%>