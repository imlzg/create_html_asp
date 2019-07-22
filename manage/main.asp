<%
call main()

sub main()
	Response.Write "<html><head><title>CREATERHTML后台管理</title>"&_
	"<meta http-equiv=Content-Type content=text/html; charset=gb2312>"&_
	"<link href=manage.css rel=stylesheet type=text/css>"&_
	"</head>"&_
	"<frameset rows=49,* cols=* framespacing=5 frameborder=yes border=5 bordercolor=#CCCCCC id=mainfram>"&_
	"<frame src=top.asp name=frameTop frameborder=no scrolling=no noresize bordercolor=#CCCCCC id=frametop>"&_
	"<frameset rows=* cols=117,* framespacing=4 frameborder=yes border=4 bordercolor=#CCCCCC id=fram1>"&_
	"<frame src=menu.asp name=menu frameborder=no scrolling=auto noresize bordercolor=#CCCCCC>"&_
	"<frame src=manage_index.asp name=main frameborder=no bordercolor=#CCCCCC>"&_
	"</frameset>"&_
	"</frameset>"&_
	"<noframes>"&_
	"<body><p>This page uses frames, but your browser doesn't support them.</p></body>"&_
	"</noframes>"&_
	"</html>"
end sub
%>