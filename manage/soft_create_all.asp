<!--#include file="conn.asp"-->
<%
dim act,cid
act=trim(request("act"))
cid=clng(request("cid"))
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

dim pageno,time,recordcount,sid
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
	call softcreateAll()
end if

sub recordcountOfPeriod()
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_soft_get_count_period"
		.CommandType=4
		.Parameters.append .CreateParameter("@timekind",200,1,8,timekind)
		.Parameters.append .CreateParameter("@stime",135,1,4,cdate(replace(stime,"$"," ")))
		.Parameters.append .CreateParameter("@etime",135,1,4,cdate(replace(etime,"$"," ")))
		.Parameters.append .CreateParameter("@cid",3,1,3,cid)
		.Parameters.append .CreateParameter("@recordcount",3,2,3)
	end with
	cmd.execute
	recordcount=cmd("@recordcount")
end sub

sub recordcountOfUser()
	set cmd=server.CreateObject("adodb.command")
	with cmd
		.ActiveConnection=conn
		.CommandText="createrhtml_soft_get_count_user"
		.CommandType=4
		.Parameters.append .CreateParameter("@uname",200,1,10,uname)
		.Parameters.append .CreateParameter("@cid",3,1,3,cid)
		.Parameters.append .CreateParameter("@recordcount",3,2,3)
	end with
	cmd.execute
	recordcount=cmd("@recordcount")
end sub

sub softcreateAll()
	select case act
	case "period"
		if isnumeric(recordcount)=0 or recordcount="" then
			call recordcountOfPeriod()
		end if
		if recordcount=0 then
			Response.Write "没有SOFT需要生成！"
			Response.End
		else
			set rs=conn.execute("createrhtml_soft_get_sid_period '"&pageno&"','"&timekind&"','"&cdate(replace(stime,"$"," "))&"','"&cdate(replace(etime,"$"," "))&"','"&cid&"'")
		end if
	case "user"
		if isnumeric(recordcount)=0 or recordcount="" then
			call recordcountOfUser()
		end if
		if recordcount=0 then
			Response.Write "没有SOFT需要生成！"
			Response.End
		else
			set rs=conn.execute("createrhtml_soft_get_sid_user '"&pageno&"','"&uname&"','"&cid&"'")
		end if
	end select

	if not (rs.eof and rs.bof) then
		response.write"<b><font color=#ff0000>正在生成SOFT的Html页,请等待......</font></b><span id=showImport></span><IE:Download ID=""oDownload"" STYLE=""behavior:url(#default#download)"" />"
		dim i,bn,en
		i=0
		do while not rs.eof
			sid=clng(rs("sid"))
			i=i+1
			call createhtml()
		if i>=100 then exit do
		set rs=rs.nextrecordset
		loop
	end if
	bn=clng((pageno-1)*100+1)
	en=clng(bn+i-1)
	Response.Write "<br>正在生成：第（"&bn&"-"&en&"）个，共"&recordcount&"个"
	if en>=clng(recordcount) then
		Response.Write "<meta http-equiv=refresh content='0;url=soft_create_all.asp?act=ok&pageno="&en&"&time="&time&"'>"
	else
		Response.Write "<meta http-equiv=refresh content='0;url=soft_create_all.asp?act="&act&"&pageno="&pageno+1&"&recordcount="&recordcount&"&time="&time&"&cid="&cid&"&s="&en
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
	Response.Write "<br>批量生成HTML页<br><br>操作成功：共生成页面<font color=#ff0000>"&pageno&"</font>个，总费时<font color=#ff0000>"&formatnumber((timer()-time),2)&"</font>秒，完成时间"&now()
end sub

sub createhtml()
	Response.Write "<script>function onDownloadDone(downDate){showImport.innerHTML=downDate}oDownload.startDownload('soft_create.asp?sid="&sid&"',onDownloadDone)</script>"
end sub
%>