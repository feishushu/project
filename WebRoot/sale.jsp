<%@ page language="java" import="java.util.*,star.mvc.modle.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<book> salelist = (ArrayList<book>) session.getAttribute("sale.jsp");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更改书籍</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/renewbook.css">
	

  </head>
  
  <body>
   	<form action="servlet_admsearch" name="search2" method="post" class="sc form">
			<input name = "search" type="text" placeholder="搜索您想要的书籍" class="input">
			<input name = "yemian" type="hidden" name="test" value="sale.jsp" />
			<input name="search1" type="submit" value="开始搜索" class="submit">
		<table width="600" height="100"  class="renew">
		<%if(salelist != null){ %>
		  <tr>
		    <th scope="col" bgcolor="e91e6f" width="200">ID</th>
		    <th scope="col" bgcolor="FFDAB9" width="200">书名</th>
		    <th scope="col" bgcolor="f12339" width="200">数量</th>
		    <th scope="col" bgcolor="FFEBCD" width="200">价格</th>
		    <th scope="col" bgcolor="e91e6f" width="200">折扣价格</th>
		    <th scope="col" bgcolor="FAFAFA" width="200">相关操作</th>
		  </tr>
		<%
			for(book list:salelist){
		 %>	
		  
		   <tr>
		    <th scope="col" width="200" height="30"><%=list.getBookid() %></th>
		    <th scope="col" width="200" height="30"><%=list.getBookname() %></th>
		    <th scope="col" width="200" height="30"><%=list.getBooknum() %></th>
		    <th scope="col" width="200" height="30"><%=list.getPrice() %></th>
		    <th scope="col" width="200" height="30"><%=list.getNowprice() %></th>
		    <th scope="col" width="200" height="30">
		    <INPUT name="sale" type="button" value="修改折扣" 
		    onClick="location.href='sale2.jsp?bookid=<%=list.getBookid() %>&bookname=<%=list.getBookname() %>&bookprice=<%=list.getPrice() %>'"></th>
		  </tr>
		  <%}} %>
		</table>
		
  </form>
  <%if(salelist == null) %>
  		<div class="notfound" width="100" height="30">---------------未找到相关书籍!---------------</div>
  
  </body>
</html>
