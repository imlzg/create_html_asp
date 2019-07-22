<!--#include file="conn.asp"-->
<%
dim symbol
symbol="soft"
call period()
call user()


sub period()
	Response.Write "<table>"&_
	"<form name=softcreate action=soft_create_all.asp method=post>"&_
	"<tr><td>类型</td><td>添加时间<input id=addtime name=timekind type=radio value=addtime onClick=change(2)> 更新时间<input id=newtime name=timekind type=radio value=newtime onClick=change(2)> 无时间限制<input id=notime name=timekind type=radio value=notime onClick=change(1)></td></tr>"&_
	"<tr id=stime><td>开始时间</td><td>"
	call stime()
	Response.Write "</td></tr>"&_
	"<tr id=etime><td>结束时间</td><td>"
	call etime()
	Response.Write "</td></tr>"&_
	"<tr><td>目录</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
	"<input name=act type=hidden value=period></form>"&_
	"</table>"

	Response.Write "<script LANGUAGE='JavaScript'>"&_
	"softcreate.newtime.click();"&_
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
	"<form name=softcreate action=soft_create_all.asp method=post>"&_
	"<tr><td>用户</td><td>"
	call userlist()
	Response.Write "</td></tr>"&_
	"<tr><td>目录</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交></td></tr>"&_
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
	Response.Write "</select>小时"
	Response.Write "<select name=smin>"
	for i=1 to 60
		Response.Write "<option value="&i&">"&i&"</option>"
	next
	Response.Write "</select>分钟"
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
	Response.Write "</select>小时"
	Response.Write "<select name=emin>"
	for i=1 to 59
		Response.Write "<option value="&i
		if i=59 then
			Response.Write " selected"
		end if
		Response.Write ">"&i&"</option>"
	next
	Response.Write "</select>分钟"
end sub	

sub catalist()
	Response.Write "<select name=cid>"
	set rs=conn.execute("createrhtml_cata_get_list "&symbol)'取出目录列表的存储过程
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			Response.Write "<option value="&rs("cid")&">"&rs("cname")&"</option>"
		rs.MoveNext
		loop
	else
		Response.Write "<option>暂时没有目录</option>"
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
		Response.Write "<option>没有用户</option>"
	end if
	Response.Write "</select>"
end sub
%>