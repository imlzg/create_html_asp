<!--#include file="conn.asp"-->
<%
dim uname,upassword,loginip,loginos,result,errorpassword
uname=trim(replace(Request.Form("uname"),"'",""))
upassword=trim(replace(Request.Form("upassword"),"'",""))
loginip=Request.ServerVariables("REMOTE_ADDR")
loginos=checkos(Request.ServerVariables("HTTP_USER_AGENT"))
result="-"
errorpassword="-"

call checklogin()
call writedlog()
if finderr then call error()

sub checklogin()
	if uname="" or upassword="" then
		finderr=true
		errmsg=errmsg&"<br><li>�û��������벻��Ϊ�գ�"
		exit sub
	end if
	set rs=conn.execute ("createrhtml_user_login_check "&uname&","&upassword)
	if rs.eof and rs.bof then
		errorpassword=upassword
		result="false"
		finderr=true
		errmsg=errmsg&"<br><li>�û��������벻��ȷ�����������Ǳ�վ�û���"
		exit sub
	else
		if rs("locked")=1 then
			finderr=true
			errmsg=errmsg&"<br><li>�Բ��������ʺ��Ѿ�����������͹���Ա��ϵ��"
			exit sub
		else
			if rs("ismaster")<>1 then
				finderr=true
				errmsg=errmsg&"<br><li>��ҳ��Ϊ����Աר�ã���<a href=login.asp target=_top>��½</a>����롣<br><li>��û�й���ҳ���Ȩ�ޡ�"
				exit sub
			else
				session("ismaster")=true
				session("uname")=uname
				session("mace")=rs("mace")
				conn.execute ("createrhtml_user_login_update "&uname&","&loginip)
				session.Timeout=45
				response.write "<script>location.href='main.asp'</script>"
			end if
		end if
	end if
end sub

sub writedlog()
	conn.execute ("createrhtml_user_dlog_update "&uname&","&result&","&loginip&","&loginos&","&errorpassword)
end sub

function checkos(osv)
	if instr(osv,"Windows NT 5.0") then
	checkos="Win2000"
	elseif instr(osv,"Windows NT 5.2") then
	checkos="Win2003"
	elseif instr(osv,"Windows NT 5.1") then
	checkos="WinXP"
	elseif instr(osv,"Windows NT") then
	checkos="WinNT"
	elseif instr(osv,"Windows 9") then
	checkos="Win9x"
	elseif instr(osv,"unix") or instr(osv,"linux") or instr(osv,"SunOS") or instr(osv,"BSD") then
	checkos="��Unix"
	elseif instr(osv,"Mac") then
	checkos="Mac"
	else
	checkos="Other"
	end if
end function
%>