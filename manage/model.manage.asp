<!--#include file="conn.asp"-->
<%
'model_manage.asp
'kind=1 ��ʾ����ģ�棻kind=2 ��ʾ������ģ��
'ckind=1 ��ʾ��INFOģ�棻kind=2 ��ʾ��SOFTģ��
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
		shortcut_temp="�������ģ��"
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
			list_temp=list_temp&"<br><a href=model_edit.asp?mid="&rs("mid")&">"&trim(rs("mname"))&" �༭</a>ɾ��"
		rs.movenext 'set rs=rs.nextrecordset
		loop
	else
		Response.Write "�������ģ��"
	end if
	Response.Write list_temp
end sub

sub pagetemp()
	if pageno<=1 then
		page_temp=page_temp&"<font face=Webdings>9</font><font face=Webdings>7</font>"
	else
		page_temp=page_temp&"<a href=model.manage.asp?symbol="&symbol&"&pageno=1"&"&pagecount="&pagecount&" title=��ǰҳ><font face=Webdings>9</font></a><a href=model.manage.asp?symbol="&symbol&"&pageno="&pageno-1&"&pagecount="&pagecount&" title=��һҳ><font face=Webdings>7</font></a>"
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
		page_temp=page-temp&"<a href=model.manage.asp?symbol="&symbol&"&pageno="&pageno+1&"&pagecount="&pagecount&" title=��һҳ><font face=Webdings>8</font></a><a href=model.manage.asp?symbol="&symbol&"&pageno="&pagecount&"&pagecount="&pagecount&" title=���ҳ><font face=Webdings>:</font></a>"
	end if
	page_temp=page_temp&"ת��<select onchange=if(this.options[this.selectedIndex].value!=''){location=this.options[this.selectedIndex].value;} id=select1 name=select1>"
	for n=1 to pagecount
		page_temp=page_temp&"<option value=model.manage.asp?symbol="&symbol&"&pageno="&pageno-1&"&pagecount="&pagecount
		if pageno=n then
			page_temp=page_temp&" selected"
		end if
		page_temp=page_temp&">"&n&"</option>"
	next
	page_temp=page_temp&"</select>ҳ"
	Response.Write page_temp
end sub

sub other()
end sub
%>