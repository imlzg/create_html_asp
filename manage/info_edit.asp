<!--#include file="conn.asp"-->
<!--#include file="const.asp"-->
<%
dim iid,kind,cid,imid,title,author,provenance,content,keyword,pass
iid=request("iid")
kind=3  'index=1,list=2,cont=3

call infodata()
call catadata()
call header()
call infoedit()
call footer()

sub infodata()
	set rs=conn.execute("createrhtml_info_get_edit '"&iid&"'")
	if not rs.eof then
		cid=rs("cid")
		imid=rs("mid")
		title=trim(rs("title"))
		author=trim(rs("author"))
		provenance=trim(rs("provenance"))
		content=trim(rs("content"))
		keyword=trim(rs("keyword"))
		pass=rs("pass")
	else
		Response.Write "没有此记录！"
		Response.End
	end if
end sub

sub infoedit()'不能编辑 IFNAME
	Response.Write "<table>"&_
	"<form name=infoedit action=info_save.asp method=post>"&_
	"<tr><td>栏目：</td><td>"
	call catalist()
	Response.Write "</td></tr>"&_
	"<tr><td>标题：</td><td><input name=title type=text value="&title&"></td></tr>"&_
	"<tr><td>作者：</td><td><input name=author type=text value="&author&"></td></tr>"&_
	"<tr><td>出处：</td><td><input name=provenance type=text value="&provenance&"></td></tr>"&_
	"<tr><td>内容：</td><td><textarea name=content cols=58 rows=16>"&content&"</textarea></td></tr>"&_
	"<tr><td>关键字：</td><td><input name=keyword type=text value="&keyword&"></td></tr>"&_
	"<tr><td>模版：</td><td>"
	call modellist()
	Response.Write "</td></tr>"&_
	"<tr><td></td><td><input name=button type=submit value=提　交><input name=pass type=checkbox value=1"
	if pass=1 then
		Response.write " checked"
	end if
	Response.Write "></td></tr>"&_
	"<input name=iid type=hidden value="&iid&"><input name=act type=hidden value=edit></form>"&_
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
			if rs("mid")=imid then
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

function HTMLEncode(fString)
	if not isnull(fString) then
		fString = replace(fString, ">", "&gt;")
		fString = replace(fString, "<", "&lt;")
	
	    fString = Replace(fString, CHR(32), "&nbsp;")
		fString = Replace(fString, CHR(9), "&nbsp;")
		fString = Replace(fString, CHR(34), "&quot;")
		fString = Replace(fString, CHR(39), "&#39;")
		fString = Replace(fString, CHR(13), "")
		fString = Replace(fString, CHR(10) & CHR(10), "</P><P> ")
		fString = Replace(fString, CHR(10), "<BR> ")

		fString=ChkBadWords(fString)
		HTMLEncode = fString
	end if
end function
%>