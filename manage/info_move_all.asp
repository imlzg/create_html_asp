<!--#include file="conn.asp"-->
<%
dim act,scid,cid
act=trim(request("act"))
scid=clng(request("scid"))
cid=clng(request("cid"))
'if scid=cid then
'	Response.Write "ͬĿ¼֮�䲻��Ҫ�ƶ�����"
'	Response.End
'end if

if act="period" then
	dim timekind,stime,etime
	timekind=trim(request("timekind"))
	if timekind="notime" then
		stime="2004/07/01$00:00:00"
		etime="2004/10/18$00:00:00"
	else
		stime=trim(request("stime"))
		etime=trim(request("etime"))
		if stime="" or etime="" then
			dim syear,smonth,sday,shour,smin,eyear,emonth,eday,ehour,emin
			syear=trim(Request.Form("syear"))
			smonth=trim(Request.Form("smonth"))
			sday=trim(Request.Form("sday"))
			shour=trim(Request.Form("shour"))
			smin=trim(Request.Form("smin"))
			eyear=trim(Request.Form("eyear"))
			emonth=trim(Request.Form("emonth"))
			eday=trim(Request.Form("eday"))
			ehour=trim(Request.Form("ehour"))
			emin=trim(Request.Form("emin"))
			stime=smonth&"/"&sday&"/"&syear&"$"&shour&":"&smin&":00"
			etime=emonth&"/"&eday&"/"&eyear&"$"&ehour&":"&emin&":00"
		end if
	end if
end if
if act="user" then
	dim uname
	uname=trim(request("uname"))
end if	

dim pageno,time,recordcount,iid
pageno=request("pageno")
time=request("time")
recordcount=request("recordcount")
if isnumeric(pageno)=0 or pageno="" then
	pageno=1
	time=timer()
end if
pageno=clng(pageno)

if act="ok" then
	call success()
else
	call infomoveAll()
end if

sub recordcountOfPeriod()
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_info_get_count_period"
		.CommandType=4
		.Parameters.append .CreateParameter("@timekind",200,1,8,timekind)
		.Parameters.append .CreateParameter("@stime",135,1,4,cdate(replace(stime,"$"," ")))
		.Parameters.append .CreateParameter("@etime",135,1,4,cdate(replace(etime,"$"," ")))
		.Parameters.append .CreateParameter("@cid",3,1,3,scid)
		.Parameters.append .CreateParameter("@recordcount",3,2,3)
	end with
	cmd.execute
	recordcount=cmd("@recordcount")
end sub

sub recordcountOfUser()
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_info_get_count_user"
		.CommandType=4
		.Parameters.append .CreateParameter("@uname",200,1,10,uname)
		.Parameters.append .CreateParameter("@cid",3,1,3,scid)
		.Parameters.append .CreateParameter("@recordcount",3,2,3)
	end with
	cmd.execute
	recordcount=cmd("@recordcount")
end sub

sub infomoveAll()
	select case act
	case "period"
		if isnumeric(recordcount)=0 or recordcount="" then
			call recordcountOfPeriod()
		end if
		if recordcount=0 then
			Response.Write "û��INFO��Ҫת�ƣ�"
			Response.End
		else
			set rs=conn.execute("createrhtml_info_get_iid_period '"&pageno&"','"&timekind&"','"&cdate(replace(stime,"$"," "))&"','"&cdate(replace(etime,"$"," "))&"','"&scid&"'")
		end if
	case "user"
		if isnumeric(recordcount)=0 or recordcount="" then
			call recordcountOfUser()
		end if
		if recordcount=0 then
			Response.Write "û��INFO��Ҫת�ƣ�"
			Response.End
		else
			set rs=conn.execute("createrhtml_info_get_iid_user '"&pageno&"','"&uname&"','"&scid&"'")
		end if
	end select

	if not (rs.eof and rs.bof) then
		response.write"<b><font color=#ff0000>����ת��INFO��Htmlҳ,��ȴ�......</font></b><span id=showImport></span><IE:Download ID=""oDownload"" STYLE=""behavior:url(#default#download)"" />"
		dim i,bn,en
		i=0
		do while not rs.eof
			iid=clng(rs("iid"))
			i=i+1
			call movehtml()
		if i>=100 then exit do
		set rs=rs.nextrecordset
		loop
	end if
	bn=clng((pageno-1)*100+1)
	en=clng(bn+i-1)
	Response.Write "<br>�����ƶ����ڣ�"&bn&"-"&en&"��������"&recordcount&"��"
	if en>=clng(recordcount) then
		call moveall()
		Response.Write "<meta http-equiv=refresh content='0;url=info_move_all.asp?act=ok&pageno="&en&"&time="&time&"'>"
	else
		Response.Write "<meta http-equiv=refresh content='0;url=info_move_all.asp?act="&act&"&pageno="&pageno+1&"&recordcount="&recordcount&"&time="&time&"&scid="&scid&"&cid="&cid&"&s="&en
		select case act
		case "period"
			Response.Write "&timekind="&timekind&"&stime="&stime&"&etime="&etime
		case "user"
			Response.Write "&uname="&uname
		end select
		Response.Write "'>"
	end if
end sub

sub success()
	Response.Write "<br>�����ƶ�INFOҳ<br><br>�����ɹ������ƶ�����<font color=#ff0000>"&pageno&"</font>�����ƶ�ҳ��<font color=#ff0000>"&pageno&"</font>�����ܷ�ʱ<font color=#ff0000>"&formatnumber((timer()-time),2)&"</font>�룬���ʱ��"&now()
end sub

sub movehtml()
	Response.Write "<script>function onDownloadDone(downDate){showImport.innerHTML=downDate}oDownload.startDownload('info_move.asp?iid="&iid&"&cid="&cid&"',onDownloadDone)</script>"
end sub

sub moveall()
	select case act
	case "period"
		conn.execute("createrhtml_info_move_period '"&timekind&"','"&cdate(replace(stime,"$"," "))&"','"&cdate(replace(etime,"$"," "))&"','"&scid&"','"&cid&"'")
	case "user"
		conn.execute("createrhtml_info_move_user '"&uname&"','"&scid&"','"&cid&"'")
	end select
end sub
%>