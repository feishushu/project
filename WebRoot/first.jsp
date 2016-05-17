<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网上书城</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="javascript.fullPage.css" />



</head>
<body>
<div id="fullpage">
	<div class="section" id="section1">
		<div class="slide" id="slide1">
			<div align="center" top="100"><img src="picture/donghua5.gif" width="1250" height="750"></div>
			<a href="index.jsp"><div style="position:absolute;width:150px;height:100px;font-size:35px;left:580;top:600;color:black;font-family:Microsoft YaHei">立即体验</div></a>
			</div>
			
		</div>
</div>

<script type="text/javascript" src="javascript.fullPage.js"></script>
<script type="text/javascript">
	fullpage.initialize('#fullpage', {});

</script>

</body>
</html>
