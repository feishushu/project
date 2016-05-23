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
  			<form action = "denglu.jsp" name = "denglu" method = "post" onSubmit = "return check()">
  				用户名  <input type = "text" name = "usercount" /> <br><br>
  				密码 <input type = "password" name = "userpassword" /><br><br>
  				<input type = "submit" name = "submit" value = "登录"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  				<br><br>
  				
  			</form>
  			<a href = "register.jsp" target = _self>注册用户</a>
  			</div>
  		</center>
  </body>
</html>
