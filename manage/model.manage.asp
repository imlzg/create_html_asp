<!--#include file="conn.asp"-->
<%
'model_manage.asp
'kind=1 表示是类模版；kind=2 表示是内容模版
'ckind=1 表示是INFO模版；kind=2 表示是SOFT模版
dim symbol,pageno,pagecount
symbol=trim(request("symbol"))
pageno=clng(request("pageno"))
pagecount=request("pagecount")

if symbol="" then
	symbol="all"
end if

dim shortcut_temp,modelnum,pagesize,list_temp,page_temp
pagesize=6


call shortcut()
'call pagecounttemp()
call ModelManage()
'call pagetemp()

sub shortcut()
	set rs=conn.execute("createrhtml_cata_get_symblist")
	if not rs.eof then
		do while not rs.eof
			shortcut_temp=shortcut_temp&"<a href=model.manage.asp?symbol="&trim(rs("symbol"))&">"&trim(rs("symbol"))&"</a>"
		rs.movenext
		loop
	else
		shortcut_temp="请先添加模版"
	end if
	Response.Write shortcut_temp
end sub

sub pagecounttemp()
	set cmd=server.CreateObject("adodb.command")
	with cmd
	.ActiveConnection=conn
	.CommandText="createrhtml_model_get_num"
	.CommandType=4
	.Parameters.append .CreateParameter("@symbol",200,1,150,symbol)
	.Parameters.append .CreateParameter("@modelnum",3,2,4)
	end with
	cmd.execute
	modelnum=cmd("@modelnum")
	if (modelnum mod pagesize)=0 then
		pagecount=modelnum\pagesize
	else
		pagecount=modelnum\pagesize+1
	end if
end sub

sub ModelManage()
	set rs=conn.execute("createrhtml_model_get_manage '"&symbol&"'")
	if not rs.eof then
		do while not rs.eof
			list_temp=list_temp&"<br><a href=model_edit.asp?mid="&rs("mid")&">"&trim(rs("mname"))&" 编辑</a>删除"
		rs.movenext 'set rs=rs.nextrecordset
		loop
	else
		Response.Write "请先添加模版"
	end if
	Response.Write list_temp
end sub

sub pagetemp()
	if pageno<=1 then
		page_temp=page_temp&"<font face=Webdings>9</font><font face=Webdings>7</font>"
	else
		page_temp=page_temp&"<a href=model.manage.asp?symbol="&symbol&"&pageno=1"&"&pagecount="&pagecount&" title=最前页><font face=Webdings>9</font></a><a href=model.manage.asp?symbol="&symbol&"&pageno="&pageno-1&"&pagecount="&pagecount&" title=上一页><font face=Webdings>7</font></a>"
	end if
	dim p,pn,n
	p=clng(pageno)-2
	if p<1 then
		p=1
	end if
	for pn=p to pagecount
		n=n+1
		if pn=clng(pageno) then
			page_temp=page_temp&" <font color=#ff0000>["&pn&"]</font>"
		else
			page_temp=page_temp&" <a href=model.manage.asp?symbol="&symbol&"&pageno="&pn&"&pagecount="&pagecount&">["&pn&"]</a>"
		end if
		if n>=6 then exit for
	next
	n=0
	page_temp=page_temp&" "
	if pageno>=pagecount then
		page_temp=page_temp&"<font face=Webdings>8</font><font face=Webdings>:</font>"
	else
		page_temp=page-temp&"<a href=model.manage.asp?symbol="&symbol&"&pageno="&pageno+1&"&pagecount="&pagecount&" title=下一页><font face=Webdings>8</font></a><a href=model.manage.asp?symbol="&symbol&"&pageno="&pagecount&"&pagecount="&pagecount&" title=最后页><font face=Webdings>:</font></a>"
	end if
	page_temp=page_temp&"转到<select onchange=if(this.options[this.selectedIndex].value!=''){location=this.options[this.selectedIndex].value;} id=select1 name=select1>"
	for n=1 to pagecount
		page_temp=page_temp&"<option value=model.manage.asp?symbol="&symbol&"&pageno="&pageno-1&"&pagecount="&pagecount
		if pageno=n then
			page_temp=page_temp&" selected"
		end if
		page_temp=page_temp&">"&n&"</option>"
	next
	page_temp=page_temp&"</select>页"
	Response.Write page_temp
end sub

sub other()
end sub
%>