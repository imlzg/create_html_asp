<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
'当前路径
'当前目录的子目录及一些功能		修改，生成、删除
'当前目录的内容分页列表及一些功能		修改，生成、删除
'一些功能	搜索
dim cid,pageno,pagecount
cid=request("cid")
pageno=request("pageno")
pagecount=request("pagecount")
if isnumeric(pageno)=0 or pageno="" then
	pageno=1
end if
pageno=clng(pageno)

'dim soft_path,cata_path,js_path,java_script
dim path_temp,son_temp,softnum,list_temp,page_temp

call header()
call catadata()
if pagecount="" then
	call pagecounttemp()
end if
call path()
call son()
call listtemp()
call pagetemp()
call other()
call footer()

sub path()
	set rs=conn.execute("createrhtml_cata_get_path '"&cid&"'")
	if not rs.eof then
		path_temp=path_temp&"<table border=0 cellspacing=0 width=100% cellpadding=0 class=border><tr><td  bgcolor=#6A6A6A>"
		dim cname,tree,arrname,arrtree,i
			cname=trim(rs("cname"))
			tree=trim(rs("tree"))
			arrname=split(cname,"|")
			arrtree=split(tree,",")
		for i=0 to ubound(arrname)-1
			path_temp=path_temp&"<a href=soft.manage.asp?cid="&arrtree(i)&" class=createrhtmlpath>"&arrname(i)&"</a>"
			if i<>ubound(arrname)-1 then
				path_temp=path_temp&">>"
			end if
		next
		path_temp=path_temp&"</td></tr></table>"
	end if
	Response.Write path_temp
end sub

sub son()
	set rs=conn.execute("createrhtml_cata_get_son '"&cid&"'")
	if not rs.eof then
		dim i
		son_temp=son_temp&"<table border=0 cellspacing=0 width=100% cellpadding=0 class=border>"
		do while not rs.eof
			son_temp=son_temp&"<tr>"
			for i=1 to 4
				if not rs.eof then
					son_temp=son_temp&"<td width=25% nowrap><li><a href=../"&trim(rs("cata_fldr"))&"/"&trim(rs("cfname"))&"_1"&trim(rs("suffix"))&" target=_blank>删</a>/<a href=../"&trim(rs("cata_fldr"))&"/"&trim(rs("cfname"))&"_1"&trim(rs("suffix"))&" target=_blank>改</a>/<a href=../"&trim(rs("cata_fldr"))&"/"&trim(rs("cfname"))&"_1"&trim(rs("suffix"))&" target=_blank>制</a>/<a href=../"&trim(rs("cata_fldr"))&"/"&trim(rs("cfname"))&"_1"&trim(rs("suffix"))&" target=_blank>页</a>||<a href=soft.manage.asp?cid="&rs("cid")&">"&split(trim(rs("cname")),"|")(rs("grade")-1)&"</a></td>"
				rs.movenext
				end if
			next
			son_temp=son_temp&"</tr>"
		loop
		son_temp=son_temp&"</table>"
	else
		son_temp="没有子目录了"
	end if
	Response.Write son_temp
end sub

sub pagecounttemp()
	set cmd=server.CreateObject("adodb.command")
	with cmd
	.ActiveConnection=conn
	.CommandText="createrhtml_soft_get_num"
	.CommandType=4
	.Parameters.append .CreateParameter("@cid",3,1,3,cid)
	.Parameters.append .CreateParameter("@softnum",3,2,4)
	end with
	cmd.execute
	softnum=cmd("@softnum")
	if (softnum mod pagesize)=0 then
		pagecount=softnum\pagesize
	else
		pagecount=softnum\pagesize+1
	end if
end sub

sub listtemp()
	list_temp=list_temp&"<script language=javascript>"&_
	"function selectall(obj){"&_
	"for(var i=0;i<obj.length;i++)"&_
	"obj[i].checked=!obj[i].checked"&_
	"}"&_
	"</script>"

	set rs=conn.execute("createrhtml_soft_get_list '"&cid&"','"&pageno&"','"&pagesize&"'")'
	if not rs.eof then
		list_temp=list_temp&"<table width=100% cellspacing=1 bgcolor=#F4F4F4 border=0>"&_
		"<form name=softmanage method=post>"&_
		"<tr><td colspan=7></td></tr>"&_
		"<tr bgcolor=#C0C0C0><td width=8% align=center>ID</td><td width=4% align=center nowrap><a href=javascript:selectall(softmanage.sid)>反选</a></td><td width=100% align=center>名	称</td><td width=4% align=center nowrap>推荐</td><td width=4% align=center nowrap>会员</td><td width=20% align=center nowrap>更新时间</td><td width=20% align=center nowrap>单项操作</td></tr>"
		dim j
		j=0
		do while not rs.eof
			list_temp=list_temp&"<tr bgcolor=#FFFFFF><td width=8% align=center bgcolor=#E9E9E9>"&rs(0)&"</td><td width=8% align=center bgcolor=#E9E9E9><input name=sid type=checkbox value="&rs(0)&"</td><td><a href=../"&trim(rs(6))&"/"&trim(rs(3))&" target=_blank>"&trim(rs(1))&"</a></td><td align=center>"
			if clng(rs(4))=1 then
				list_temp=list_temp&"<font color=#FF0000>√</font>"
			else
				list_temp=list_temp&"<font color=#808080>×</font>"
			end if
			list_temp=list_temp&"</td><td align=center>"
			select case rs(5)
			case 1
				list_temp=list_temp&"<font color=#FF0000>②</font>"
			case 2
				list_temp=list_temp&"<font color=#FF0000>①</font>"
			case else
				list_temp=list_temp&"<font color=#808080>○</font>"
			end select
			list_temp=list_temp&"</td><td align=center nowrap>"&year(rs(2))&"-"&month(rs(2))&"-"&day(rs(2))&"</td><td align=center nowrap><a href=javascript:deleteHTML("&rs(0)&") title=删除>删除</a>|<a href=javascript:createHTML("&rs(0)&") title=生成HTML页>生成</a></td></tr>"
		set rs=rs.nextrecordset
		j=j+1
		if j>=pagesize then exit do
		loop
		list_temp=list_temp&"<tr bgcolor=#C0C0C0><td align=center>ID</td><td align=center><a href=javascript:selectall(softmanage.sid)>反选</a></td><td align=center>名	称</td><td align=center>推荐</td><td align=center>会员</td><td align=center>更新时间</td><td align=center>单项操作</td></tr>"&_
		"<tr><td colspan=7><input name=act type=button title=生成选定数据 value=create onclick=""document.softmanage.action='soft_create_all.asp';document.softmanage.submit()"">|<input name=act type=submit title=删除选定数据 value=delete onclick=""document.softmanage.action='soft_delete_all.asp';document.softmanage.submit()"">|"
		call catalist()
		list_temp=list_temp&"<input name=act type=button title=移动选定数据 value=move onclick=""document.softmanage.action='soft_save.asp?act=move';document.softmanage.submit()"">|"
		list_temp=list_temp&"<select name=score><option selected value=''></option><option value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option value=5>5</option></select><input name=act type=submit title=更改选定数据的评分 value=score onclick=""document.softmanage.action='soft_save.asp?act=score';document.softmanage.submit()"">|"
		list_temp=list_temp&"<select name=groom><option selected value=''></option><option value=0>取消</option><option value=1>推荐</option></select><input name=act type=submit title=更改选定数据是否推荐 value=groom onclick=""document.softmanage.action='soft_save.asp?act=groom';document.softmanage.submit()"">|"
		list_temp=list_temp&"<select name=user><option selected value=''></option><option value=0>取消限制</option><option value=1>普通会员</option><option value=2>高级会员</option></select><input name=act type=submit title=更改选定数据是否会员软件 value=user onclick=""document.softmanage.action='soft_save.asp?act=user';document.softmanage.submit()""></td></tr>"&_
		"</table>"
		list_temp=list_temp&"<script language=javascript>"&_
		"function deleteHTML(id)"&_
		"{window.open('soft_delete.asp?act=page&sid='+id,'','width=150,height=20,resizable=yes,scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no');}"&_
		"function createHTML(id)"&_
		"{window.open('soft_create.asp?act=page&sid='+id,'','width=150,height=20,resizable=no,scrollbars=no,status=no,toolbar=no,menubar=no,location=no');}"&_
		"</script>"
	end if
	Response.Write list_temp
end sub

sub pagetemp()
	if pageno<=1 then
		page_temp=page_temp&"<font face=Webdings>9</font><font face=Webdings>7</font>"
	else
		page_temp=page_temp&"<a href=soft.manage.asp?cid="&cid&"&pageno=1"&"&pagecount="&pagecount&" title=最前页><font face=Webdings>9</font></a><a href=soft.manage.asp?cid="&cid&"&pageno="&pageno-1&"&pagecount="&pagecount&" title=上一页><font face=Webdings>7</font></a>"
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
			page_temp=page_temp&" <a href=soft.manage.asp?cid="&cid&"&pageno="&pn&"&pagecount="&pagecount&">["&pn&"]</a>"
		end if
		if n>=6 then exit for
	next
	n=0
	page_temp=page_temp&" "
	if pageno>=pagecount then
		page_temp=page_temp&"<font face=Webdings>8</font><font face=Webdings>:</font>"
	else
		page_temp=page_temp&"<a href=soft.manage.asp?cid="&cid&"&pageno="&pageno+1&"&pagecount="&pagecount&" title=下一页><font face=Webdings>8</font></a><a href=soft.manage.asp?cid="&cid&"&pageno="&pagecount&"&pagecount="&pagecount&" title=最后页><font face=Webdings>:</font></a>"
	end if
	page_temp=page_temp&"转到<select onchange=if(this.options[this.selectedIndex].value!=''){location=this.options[this.selectedIndex].value;} id=select1 name=select1>"
	for n=1 to pagecount
		page_temp=page_temp&"<option value=soft.manage.asp?cid="&cid&"&pageno="&n&"&pagecount="&pagecount
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

sub catalist()
	list_temp=list_temp&"<select name=cid>"
	set rs=conn.execute("createrhtml_cata_get_list '"&symbol&"'")
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
		if rs("cid")=cid then
			list_temp=list_temp&"<option selected value="&rs("cid")&">"&rs("cname")&rs("cid")&"</option>"
		else
			list_temp=list_temp&"<option value="&rs("cid")&">"&rs("cname")&"</option>"
		end if
		rs.MoveNext
		loop
	else
		list_temp=list_temp&"<option>暂时没有目录</option>"
	end if
	Response.Write "</select>"
end sub
%>