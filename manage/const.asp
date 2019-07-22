<%
dim sitetime
dim cname,pid,mid,tree,grade,swerve,show,seq,cata_fldr,cont_fldr,js_fldr,pagesize,jssize,symbol,cfname,suffix,site_set,site_info,site_meta,site_copyright,site_links,site_link
sub catadata()
	set rs=conn.execute("createrhtml_cata_get_data "&cid)
	cname=trim(rs("cname"))
	pid=clng(rs("pid"))
	mid=clng(rs("mid"))
	tree=trim(rs("tree"))
	grade=clng(rs("grade"))
	swerve=trim(rs("swerve"))
	show=clng(rs("show"))
	seq=clng(rs("seq"))
	cata_fldr=trim(rs("cata_fldr"))
	cont_fldr=trim(rs("cont_fldr"))
	js_fldr=trim(rs("js_fldr"))
	pagesize=clng(rs("pagesize"))
	jssize=clng(rs("jssize"))
	symbol=trim(rs("symbol"))
	suffix=trim(rs("suffix"))
	cfname=trim(rs("cfname"))
	'Response.Write suffix
end sub

'配置信息
sub siteSet()
	'site_info|||site_meta|||site_copyright|||site_link
	dim i,j
	set rs=conn.execute("createrhtml_config_get_siteset")
	site_set=split(trim(rs("site_set")),"|||")
	
	site_info=site_set(1)
	site_meta=site_set(2)
	site_copyright=site_set(3)
	site_links=site_set(4)
	site_info=split(site_info,"|")
	site_meta=split(site_meta,"|")
	site_copyright=split(site_copyright,"|")
	site_links=split(site_links,"|")
	for i=lbound(site_links) to ubound(site_links)'在保存时 生成JS
		for j=1 to 8
			site_link=site_link&site_links(i)
		next
		site_link=site_link&"<br>"
	next
'site_info：网站名称，网站地址，网站LOGO地址，管理员EMAIL，联系我们的EMAIL
'site_meta：站点关键字，站点描述
'site_copyright：版权信息，底部导航
'site_link：友情连接
end sub

function isInteger(para)
	on error resume next
	dim str
	dim l,i
	if isNUll(para) then 
		isInteger=false
		exit function
	end if
	str=cstr(para)
	if trim(str)="" then
		isInteger=false
		exit function
	end if
	l=len(str)
	for i=1 to l
		if mid(str,i,1)>"9" or mid(str,i,1)<"0" then
			isInteger=false 
			exit function
		end if
	next
	isInteger=true
	if err.number<>0 then err.clear
end function

sub stopin()
	dim server_name_len,server_name1,server_name2
		server_name_len=len(Request.ServerVariables("server_name"))
		server_name1=left(Request.ServerVariables("server_referer"),server_name_len)
		server_name2=left("http://"&Request.ServerVariables("server_name"),server_name_len)
	if server_name1<>server_name2 or server_name1="" or server_name2="" then
		response.write "<script>alert('错误：禁止从站点外部提交数据!.')</script>"
		response.end
	end if
end sub
%>