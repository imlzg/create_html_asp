<!--#include file="conn.asp"-->
<%
dim symbol
symbol="info"
call period()
call user()

sub period()
	Response.Write "<script LANGUAGE='JavaScript'>"&_
	"function CheckInput(){"&_
	"if(document.infomove.scid.options[document.infomove.scid.selectedindex].value == document.infomove.cid.options[document.infomove.cid.selectedindex].value){"&_
	"alert('ͬһ��Ŀ¼�䲻��Ҫ�ƶ���');"&_
	"document.infomove.cid.focus();"&_
	"return false;"&_
	"}"&_
	"return true;"&_
	"}"&_
	"</script>"

	Response.Write "<table>"&_
	"<form name=infomove action=info_move_all.asp method=post onSubmit='return CheckInput()'>"&_
	"<tr><td>����</td><td>����ʱ��<input id=addtime name=timekind type=radio value=addtime onClick=change(2)> ����ʱ��<input id=newtime name=timekind type=radio value=newtime onClick=change(2)> ��ʱ������<input id=notime name=timekind type=radio value=notime onClick=change(1)></td></tr>"&_
	"<tr id=stime><td>��ʼʱ��</td><td>"
	call stime()
	Response.Write "</td></tr>"&_
	"<tr id=etime><td>����ʱ��</td><td>"
	call etime()
	Response.Write "</td></tr>"&_
	"<tr><td>ԭĿ¼</td><td><select name=scid>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>Ŀ��Ŀ¼</td><td><select name=cid>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=�ᡡ��></td></tr>"&_
	"<input name=act type=hidden value=period></form>"&_
	"</table>"

	Response.Write "<script LANGUAGE='JavaScript'>"&_
	"infomove.newtime.click();"&_
	"function change(id)"&_
	"{"&_
	"	if(id==1){"&_
	"	stime.style.display='none';"&_
	"	etime.style.display='none';"&_
	"	}"&_
	"	if(id==2){"&_
	"	stime.style.display='';"&_
	"	etime.style.display='';"&_
	"	}"&_
	"}"&_
	"</script>"
end sub

sub user()
	Response.Write "<table>"&_
	"<form name=infomove action=info_move_all.asp method=post>"&_
	"<tr><td>�û�</td><td>"
	call userlist()
	Response.Write "</td></tr>"&_
	"<tr><td>ԭĿ¼</td><td><select name=scid>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>Ŀ��Ŀ¼</td><td><select name=cid>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=�ᡡ��></td></tr>"&_
	"<input name=act type=hidden value=user></form>"&_
	"</table>"
end sub

sub stime()
	dim i
	Response.Write "<select name=syear>"
	for i=year(now) to 1900 step-1
		Response.Write "<option value="&i&">"&i&"</option>"
	next
	Response.Write "</select>-"
	Response.Write "<select name=smonth>"
	for i=1 to 12
		Response.Write "<option value="&i
		if i=month(now) then
			Response.Write " selected"
		end if
		Response.Write ">"&i&"</option>"
	next
	Response.Write "</select>-"
	Response.Write "<select name=sday>"
	for i=1 to 31
		Response.Write "<option value="&i
		if i=day(now) then
			Response.Write " selected"
		end if
		Response.Write ">"&i&"</option>"
	next
	Response.Write "</select> "
	Response.Write "<select name=shour>"
	for i=1 to 24
		Response.Write "<option value="&i&">"&i&"</option>"
	next
	Response.Write "</select>Сʱ"
	Response.Write "<select name=smin>"
	for i=1 to 60
		Response.Write "<option value="&i&">"&i&"</option>"
	next
	Response.Write "</select>����"
end sub	

sub etime()
	dim i
	Response.Write "<select name=eyear>"
	for i=year(now) to 1900 step-1
		Response.Write "<option value="&i&">"&i&"</option>"
	next
	Response.Write "</select>-"
	Response.Write "<select name=emonth>"
	for i=1 to 12
		Response.Write "<option value="&i
		if i=month(now) then
			Response.Write " selected"
		end if
		Response.write ">"&i&"</option>"
	next
	Response.Write "</select>-"
	Response.Write "<select name=eday>"
	for i=1 to 31
		Response.Write "<option value="&i
		if i=day(now) then
			Response.Write " selected"
		end if
		Response.Write ">"&i&"</option>"
	next
	Response.Write "</select> "
	Response.Write "<select name=ehour>"
	for i=1 to 23
		Response.Write "<option value="&i
		if i=23 then
			Response.Write " selected"
		end if
		Response.Write ">"&i&"</option>"
	next
	Response.Write "</select>Сʱ"
	Response.Write "<select name=emin>"
	for i=1 to 59
		Response.Write "<option value="&i
		if i=59 then
			Response.Write " selected"
		end if
		Response.Write ">"&i&"</option>"
	next
	Response.Write "</select>����"
end sub	

sub catalist()
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)'ȡ��Ŀ¼�б��Ĵ洢����
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			Response.Write "<option value="&rs("cid")&">"&rs("cname")&"</option>"
		rs.MoveNext
		loop
	else
		Response.Write "<option>��ʱû��Ŀ¼</option>"
	end if
	Response.Write "</select>"
end sub

sub userlist()
	Response.Write "<select name=uname>"
	set rs=conn.execute("createrhtml_user_get_list")
	if not(rs.eof and rs.bof) then
		do while not rs.eof
			Response.Write "<option value="&trim(rs("uname"))&">"&trim(rs("uname"))&"</option>"
		rs.movenext
		loop
	else
		Response.Write "<option>û���û�</option>"
	end if
	Response.Write "</select>"
end sub
%>