<html>
<head>
<title>Top.asp</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="manage.css" rel="stylesheet" type="text/css">
<style></style>
</head>
<SCRIPT LANGUAGE="JavaScript">
<!--
var strUrl="http://"
function GoToUrl()
{
    strUrl=prompt('������Url\nע������http://',strUrl)
    if(strUrl!=''&&strUrl!=null)
    {
        top.main.location=strUrl
    }else{
        strUrl="http://"
    }
}
function Tsys_Href()
{
     top.main.location.reload()
}

var FrameState=1
var iniFrameCols="160,*"
function HiddenMenu()
{
    if(FrameState){
        iniFrameCols=top.fram1.cols
        top.fram1.cols="0,*"
        FrameState=0
        top.frameTop.hidemenuLabel.className="MenuItem"
        top.frameTop.hidemenuLabel.innerHTML="��ʾ�˵�"
    }else{
        top.fram1.cols=iniFrameCols
        FrameState=1
        top.frameTop.hidemenuLabel.className="MenuItem"
        top.frameTop.hidemenuLabel.innerHTML="���ز˵�"
    }
}
//-->
</script>
<body bgcolor="#003366" leftmargin="0" topmargin="0" onselectstart="return false" ondragstart="return false" scroll="none">
<table width="100%" height="100%" border="0" cellpadding="2" cellspacing="0">
  <tr> 
    <td width="89%" height="37" align="left" valign="bottom">&nbsp;
      <label id="hidemenuLabel" onclick="HiddenMenu()" title="��ʾ/����" class="MenuItem">���ز˵�</label> 
      <span class="MenuItem">|</span> <label onclick="window.history.back()" class="MenuItem">�� 
      �� <span class="MenuItem">|</span> </label> <label onclick="Tsys_Href()" class="MenuItem">ˢ 
      ��</label> <span class="MenuItem">|</span> <label onclick="window.history.forward()" class="MenuItem">ǰ 
      ��</label> <span class="MenuItem">| 
      <label onclick="GoToUrl()" class="MenuItem">� ��</label>
      | 
      <label class="MenuItem">�ر�ϵͳ</label>
      </span> 
    <td width="11%" rowspan="2" align="right" valign="bottom"><img src="Images/Manage/TsysBg.gif" style="cursor:hand" onClick="showModalDialog('CopyRight.htm','','status:0;dialogWidth:400px;dialogHeight:200px;center:yes')"></td>
  </tr>
  <tr>
    <td></tr>
</table>
</body>
</html>