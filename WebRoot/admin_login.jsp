<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <center>
		  <div>
  			<form action = "servlet_aminlogin" name = "denglu" method = "post" onSubmit = "return check()">
  				ÓÃ»§Ãû  <input type = "text" name = "aname" /> <br><br>
  				ÃÜÂë <input type = "password" name = "password" /><br><br>
  				<input type = "submit" name = "submit" value = "µÇÂ¼"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  				<br><br>
  			</form>
  			</div>
  		</center>
  </body>
</html>
