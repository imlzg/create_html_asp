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
	"	strUrl=prompt('请输入Url\n注意输入http://',strUrl);"&_
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
	"        top.frameTop.hidemenuLabel.innerHTML='显示菜单';"&_
	"    }else{"&_
	"        top.fram1.cols=iniFrameCols;"&_
	"        FrameState=1;"&_
	"        top.frameTop.hidemenuLabel.className='menuitem';"&_
	"        top.frameTop.hidemenuLabel.innerHTML='隐藏菜单';"&_
	"    }"&_
	"}"&_
	"</script>"

	Response.Write "<body bgcolor=#003366 leftmargin=0 topmargin=0 onselectstart='return false' ondragstart='return false' scroll=none>"&_
	"<table width=100% height=100% border=0 cellpadding=2 cellspacing=0>"&_
	"<tr>"&_
	"<td width=89% height=37 align=left valign=bottom>"&_
	"<label id=hidemenuLabel onclick=HiddenMenu() title=显示/隐藏 class=menuitem>隐藏菜单</label> <span class=menuitem>|</span> "&_
	"<label onclick=window.history.back() class=menuitem>后 退 </label> <span class=menuitem>|</span> "&_
	"<label onclick=Tsys_Href() class=menuitem>刷 新</label> <span class=menuitem>|</span> "&_
	"<label onclick=window.history.forward() class=menuitem>前 进</label> <span class=menuitem>|</span> "&_
	"<label onclick=GoToUrl() class=menuitem>浏 览</label> <span class=menuitem>|</span> "&_
	"<label class=menuitem>关闭系统</label>"&_
	"</td>"&_
	"<td width=11% rowspan=2 align=right valign=bottom><img src=Images/TsysBg.gif style='cursor:hand' onClick=showModalDialog('CopyRight.htm','','status:0;dialogWidth:400px;dialogHeight:200px;center:yes')></td>"&_
	"</tr>"&_
	"</table>"&_
	"</body>"&_
	"</html>"
end sub
%>