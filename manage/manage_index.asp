<%@language=vbscript codepage=936 %>
<%
option explicit
response.buffer=true	
Const PurviewLevel=0

Dim theInstalledObjects(17)
theInstalledObjects(0) = "MSWC.AdRotator"
theInstalledObjects(1) = "MSWC.BrowserType"
theInstalledObjects(2) = "MSWC.NextLink"
theInstalledObjects(3) = "MSWC.Tools"
theInstalledObjects(4) = "MSWC.Status"
theInstalledObjects(5) = "MSWC.Counters"
theInstalledObjects(6) = "IISSample.ContentRotator"
theInstalledObjects(7) = "IISSample.PageCounter"
theInstalledObjects(8) = "MSWC.PermissionChecker"
theInstalledObjects(9) = "Scripting.FileSystemObject"
theInstalledObjects(10) = "adodb.connection"
    
theInstalledObjects(11) = "SoftArtisans.FileUp"
theInstalledObjects(12) = "SoftArtisans.FileManager"
theInstalledObjects(13) = "JMail.SMTPMail"
theInstalledObjects(14) = "CDONTS.NewMail"
theInstalledObjects(15) = "Persits.MailSender"
theInstalledObjects(16) = "LyfUpload.UploadFile"
theInstalledObjects(17) = "Persits.Upload.1"
%>
<html>
<head>
<title>MY������̨������ҳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href=manage.css rel=stylesheet type=text/css>
</head>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0">
<table cellpadding="2" cellspacing="1" border="0" width="100%" class="border" align=center>
<tr align="center">
    <td height=25 colspan=2 class="topbg"><strong>MY������̨������ҳ</strong></tr>
<tr>
    <td width="100" class="tdbg" height=23><strong>�����ݷ�ʽ��</strong></td>
    <td class="tdbg"><a href="Admin_ArticleAdd1.asp">������£����ģʽ��</a> 
      | <a href="Admin_ArticleAdd2.asp">������£��߼�ģʽ��</a> | <a href="Admin_ArticleManage.asp">���¹���</a> 
      | <a href="Admin_ArticleCheck.asp">�������</a></td>
</tr>
</table>
<br>
<table cellpadding="2" cellspacing="1" border="0" width="100%" class="border" align=center>
  <tr align="center"> 
    <td height=25 colspan=2 class="topbg"><strong>�� �� �� �� Ϣ</strong><tr> 
  <tr> 
    <td width="50%"  class="tdbg" height=23>���������ͣ�<%=Request.ServerVariables("OS")%>(IP:<%=Request.ServerVariables("LOCAL_ADDR")%>)</td>
    <td width="50%" class="tdbg">�ű��������棺<%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %></td>
  </tr>
  <tr> 
    <td width="50%" class="tdbg" height=23>վ������·����<%=request.ServerVariables("APPL_PHYSICAL_PATH")%></td>
    <td width="50%" class="tdbg">���ݿ��ַ��</td>
  </tr>
  <tr> 
    <td width="50%" class="tdbg" height=23>FSO�ı���д��
      <%If Not IsObjInstalled(theInstalledObjects(9)) Then%>
      <font color="red"><b>��</b></font>
      <%else%>
      <b>��</b>
      <%end if%></td>
    <td width="50%" class="tdbg">���ݿ�ʹ�ã�
      <%If Not IsObjInstalled(theInstalledObjects(10)) Then%>
      <font color="red"><b>��</b></font>
      <%else%>
      <b>��</b>
      <%end if%></td>
  </tr>
  <tr> 
    <td width="50%" class="tdbg" height=23>Jmail���֧�֣�
      <%If Not IsObjInstalled(theInstalledObjects(13)) Then%>
      <font color="red"><b>��</b></font>
      <%else%>
      <b>��</b>
      <%end if%></td>
    <td width="50%" class="tdbg">CDONTS���֧�֣�
      <%If Not IsObjInstalled(theInstalledObjects(14)) Then%>
      <font color="red"><b>��</b></font>
      <%else%>
      <b>��</b>
      <%end if%></td>
  </tr>
  <tr>
    <td class="tdbg" height=23>&nbsp;</td>
    <td align="right" class="tdbg"><a href="Admin_ServerInfo.asp">��˲鿴����ϸ�ķ�������Ϣ&gt;&gt;&gt;</a></td>
  </tr>
</table>
<br>
<table cellpadding="2" cellspacing="1" border="0" width="100%" class="border" align=center>
  <tr align="center"> 
    <td height=25 colspan=2 class="topbg"><strong>MY�������� & ����</th></strong> <tr> 
    <td width="20%"  class="tdbg" height=23>��Ʒ����/��ҵ��չ��</td>
    <td width="80%" class="tdbg"><strong>WEBBOY</strong> &nbsp;&nbsp;&nbsp;����ϵ�绰��0765-6673987/13825519121&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:webboy888@163.com">webboy888@163.com</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ��3060259��</td>
  </tr>
  <tr> 
    <td width="20%" class="tdbg" height=23>������ƣ�</td>
    <td width="80%" class="tdbg">
		<table width="100%" border="0" cellspacing="0" cellpadding="2">
        <tr> 
          <td width="60"><strong>WEBBOY</strong></td>
          <td>����ϵ�绰��0765-6673987/13825519121&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:webboy888@163.com">webboy888@163.com</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ��3060259��</td>
        </tr>
        <tr> 
          <td width="60"><strong>Asp_fan</strong></td>
		<td>����ҳ��ַ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:asp_fan@163.com">asp_fan@163.com</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ��27399288��</td>
        </tr>
        </table>
		</td>
  </tr>
  <tr> 
    <td class="tdbg" height=23>��Ҫģ�����ʦ��</td>
    <td class="tdbg"><table width="100%" border="0" cellspacing="0" cellpadding="2">
        <tr> 
          <td width="60"><strong>�š���</strong></td>
          <td> ����ҳ��ַ��<a href="http://www.czcsefx.com" target="_blank">http://www.czcsefx.com</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:yaoyahu@sohu.com">yaoyahu@sohu.com</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ��69873605��</td>
        </tr>
        <tr> 
          <td width="60"><strong>������</strong></td>
          <td>����ҳ��ַ��<a href="http://www.whsky.com" target="_blank">http://www.whsky.com</a>&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:writing@sina.com">writing@sina.com</a>��</td>
        </tr>
        <tr> 
          <td width="60"><strong>i&nbsp;e&nbsp;i</strong></td>
          <td>����ҳ��ַ��<a href="http://www.5dmeng.com" target="_blank">http://www.5dmeng.com</a> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:5dmeng@5dmeng.com">5dmeng@5dmeng.com</a>��</td>
        </tr>
        <tr>
          <td width="60"><strong>XZY</strong></td>
          <td>����ҳ��ַ��<a href="http://www.ycyz.com" target="_blank">http://www.ycyz.com</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:xzyjsj@sina.com">xzyjsj@sina.com</a>��</td>
        </tr>
      </table>
    </td>
  </tr>
  <tr> 
    <td width="20%" class="tdbg" height=23>��Ҫ��������ߣ�</td>
    <td width="80%" class="tdbg">
		<table width="100%" border="0" cellspacing="0" cellpadding="2">
        <tr> 
          <td width="60"><strong>Asp_fan</strong></td>
          <td>����ҳ��ַ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:asp_fan@163.com">asp_fan@163.com</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ��27399288��</td>
        </tr>
        <tr> 
          <td width="60"><strong>�����</strong></td>
          <td>����ҳ��ַ��<a href="http://www.mengwei.net" target="_blank">http://www.mengwei.net</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email��<a href="mailto:webmaster@mengwei.net">webmaster@mengwei.net</a>&nbsp;&nbsp;&nbsp;&nbsp;QQ��8806513��</td>
        </tr>
        </table>
	  </td>
  </tr>
  <tr> 
    <td width="20%" class="tdbg" height=23>������ƣ�</td>
    <td width="80%" class="tdbg"><strong>�Ż��������ˡ�iei</strong></td>
  </tr>
</table>
<div align="center"><br>
  Copyright (c) 2003-2004 <a href='http://www.asp163.net'><font Arial, Helvetica, sans-serif>�����ռ�</font></a>. 
  All Rights Reserved.<BR>
  <BR>
</div>
</body>
</html>
<%
Function IsObjInstalled(strClassString)
	On Error Resume Next
	IsObjInstalled = False
	Err = 0
	Dim xTestObj
	Set xTestObj = Server.CreateObject(strClassString)
	If 0 = Err Then IsObjInstalled = True
	Set xTestObj = Nothing
	Err = 0
End Function
%>
