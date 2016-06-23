<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String bookid = request.getParameter("bookid");
String bookname = new String(request.getParameter("bookname").getBytes("ISO-8859-1"), "utf-8");
String bookprice = request.getParameter("bookprice");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/sale2.css">
</head>
<html>
  <body>
  <h3 class="title">s t a r b o o k s修改折扣</h3>
  
  	<table width="50%" height="50%" border="0.8" class="manage" align="center">
 		<tr>
		    <th scope="col" width="30%" height="50px">书名</th>
		    <th scope="col"><p><%=bookname %></p></th>
  		</tr>
  		<tr>
		    <th scope="col" width="30%" height="50px">价格</th>
		    <th scope="col"><p><%=bookprice %></p></th>
		</tr>
		<form action="servlet_sale" method="post" name="form">
	  	<input type="hidden" name="bookid" value=<%=bookid %> />
	  	<input type="hidden" name="price" value=<%=bookprice %> />
		<tr>
		   <th scope="col" width="30%" height="50px">折扣价格</th>
		   <th scope="col"><input type="text" name="nowprice"/></th>
		</tr>
		<br>
  		<input type="submit" value="提交" class="button" />
		</form>
		</table>
		
		
		
  </body>
</html>
