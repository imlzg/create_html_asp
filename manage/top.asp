<%
call top()

sub top()
	Response.Write "<html><head><title>Top.asp</title>"&_
	"<meta http-equiv=Content-Type content=text/html; charset=gb2312>"&_
	"<link href=manage.css rel=stylesheet type=text/css>"&_
	"</head>"

	Response.Write "<SCRIPT LANGUAGE=JavaScript>"&_
	"var strUrl='http://';"&_
	"function GoToUrl()"&_
	"{"&_
	"	strUrl=prompt('������Url\nע������http://',strUrl);"&_
	"	if(strUrl!=''&&strUrl!=null)"&_
	"	{"&_
	"		top.main.location=strUrl;"&_
	"	}else{"&_
	"		strUrl='http://';"&_
	"	}"&_
	"}"&_
	"function Tsys_Href()"&_
	"{"&_
	"    top.main.location.reload();"&_
	"}"&_
	"var FrameState=1;"&_
	"var iniFrameCols='160,*';"&_
	"function HiddenMenu()"&_
	"{"&_
	"    if(FrameState){"&_
	"        iniFrameCols=top.fram1.cols;"&_
	"        top.fram1.cols='0,*';"&_
	"        FrameState=0;"&_
	"        top.frameTop.hidemenuLabel.className='menuitem';"&_
	"        top.frameTop.hidemenuLabel.innerHTML='��ʾ�˵�';"&_
	"    }else{"&_
	"        top.fram1.cols=iniFrameCols;"&_
	"        FrameState=1;"&_
	"        top.frameTop.hidemenuLabel.className='menuitem';"&_
	"        top.frameTop.hidemenuLabel.innerHTML='���ز˵�';"&_
	"    }"&_
	"}"&_
	"</script>"

	Response.Write "<body bgcolor=#003366 leftmargin=0 topmargin=0 onselectstart='return false' ondragstart='return false' scroll=none>"&_
	"<table width=100% height=100% border=0 cellpadding=2 cellspacing=0>"&_
	"<tr>"&_
	"<td width=89% height=37 align=left valign=bottom>"&_
	"<label id=hidemenuLabel onclick=HiddenMenu() title=��ʾ/���� class=menuitem>���ز˵�</label> <span class=menuitem>|</span> "&_
	"<label onclick=window.history.back() class=menuitem>�� �� </label> <span class=menuitem>|</span> "&_
	"<label onclick=Tsys_Href() class=menuitem>ˢ ��</label> <span class=menuitem>|</span> "&_
	"<label onclick=window.history.forward() class=menuitem>ǰ ��</label> <span class=menuitem>|</span> "&_
	"<label onclick=GoToUrl() class=menuitem>� ��</label> <span class=menuitem>|</span> "&_
	"<label class=menuitem>�ر�ϵͳ</label>"&_
	"</td>"&_
	"<td width=11% rowspan=2 align=right valign=bottom><img src=Images/TsysBg.gif style='cursor:hand' onClick=showModalDialog('CopyRight.htm','','status:0;dialogWidth:400px;dialogHeight:200px;center:yes')></td>"&_
	"</tr>"&_
	"</table>"&_
	"</body>"&_
	"</html>"
end sub
%>