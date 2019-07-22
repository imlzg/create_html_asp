<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim sid,cid,kind,smid,sname,edition,lang,sort,mode,setting,vol,linkman,linkurl,demo,pic,about,score,pass
sid=request("sid")
kind=3  'index=1,list=2,cont=3

call softdata()
call catadata()
call header()
call softedit()
call footer()

sub softdata()
	set rs=conn.execute("createrhtml_soft_get_edit '"&sid&"'")
	if not rs.eof then
		cid=rs("cid")
		smid=rs("mid")
		sname=trim(rs("sname"))
		edition=trim(rs("edition"))
		lang=trim(rs("lang"))
		sort=trim(rs("sort"))
		mode=trim(rs("mode"))
		setting=trim(rs("setting"))
		vol=trim(rs("vol"))
		linkman=trim(rs("linkman"))
		linkurl=trim(rs("linkurl"))
		demo=trim(rs("demo"))
		pic=trim(rs("pic"))
		about=trim(rs("about"))
		score=rs("score")
		pass=rs("pass")
	else
		Response.Write "没有此记录！"
		Response.End
	end if
end sub

sub softedit()
	Response.Write "<table>"&_
	"<form name=softedit action=soft_save.asp method=post>"&_
	"<tr><td>类别：</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>名称：</td><td><input name=sname type=text value="&sname&"></td></tr>"&_
	"<tr><td>版本：</td><td><input name=edition type=text value="&edition&"></td></tr>"&_
	"<tr><td>软件语言：</td><td><input name=lang type=text value="&lang&"></td></tr>"&_
	"<tr><td>软件类型：</td><td><input name=sort type=text value="&sort&"></td></tr>"&_
	"<tr><td>授权方式：</td><td><input name=mode type=text value="&mode&"></td></tr>"&_
	"<tr><td>系统平台：</td><td><input name=setting type=text value="&setting&"></td></tr>"&_
	"<tr><td>文件大小：</td><td><input name=vol type=text value="&vol&"></td></tr>"&_
	"<tr><td>联 系 人：</td><td><input name=linkman type=text value="&linkman&"></td></tr>"&_
	"<tr><td>开 发 商：</td><td><input name=linkurl type=text value="&linkurl&"></td></tr>"&_
	"<tr><td>演示：</td><td><input name=demo type=text value="&demo&"></td></tr>"&_
	"<tr><td>图片：</td><td><input name=pic type=text value="&pic&"></td></tr>"&_
	"<tr><td>简介：</td><td><textarea name=about cols=58 rows=16>"&about&"</textarea></td></tr>"&_
	"<tr><td>软件评价：</td><td><input name=score type=text value="&score&"></td></tr>"&_
	"<tr><td>模版：</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交><input name=pass type=checkbox value=1"
	if pass=1 then
		Response.write " checked"
	end if
	Response.Write "></td></tr>"&_
	"<input name=sid type=hidden value="&sid&"><input name=act type=hidden value=edit></form>"&_
	"</table>"
end sub

sub catalist()
	Response.Write "<select name=cid>"
	set rs=conn.execute("createrhtml_cata_get_list '"&symbol&"'")
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
	set rs=conn.execute("createrhtml_model_get_list '"&symbol&"','"&kind&"'")
	if not(rs.EOF and rs.BOF) then
		do while not rs.EOF
			if rs("mid")=smid then
				Response.Write "<option selected value="&rs("mid")&">"&rs("mname")&"</option>"
			else
				Response.Write "<option value="&rs("mid")&">"&rs("mname")&"</option>"
			end if
		rs.MoveNext
		loop
	else
		Response.Write "<option>暂时没有模版</option>"
	end if
	Response.Write "</select>"
end sub
%>