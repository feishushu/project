<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<link rel="stylesheet" type="text/css" href="css/addbook.css">
</head>
<html>
  <body>
  <h3 class="title">s t a r b o o k s增加书籍</h3>
  <form action="addbook" method="post" name=form ENCTYPE="multipart/form-data">
  
  <table width="50%" height="50%" border="0.8" class="manage" align="center">
  <tr>
    <th scope="col" width="30%" height="50px">图书编号</th>
    <th scope="col"><input type="text" name="bookid"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">分类</th>
    <th scope="col"><input type="text" name="supertypeid"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">专题</th>
    <th scope="col"><input type="text" name="subtypeid"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">书名</th>
    <th scope="col"><input type="text" name="bookname"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">ISBN</th>
    <th scope="col"><input type="text" name="isbn"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">介绍</th>
    <th scope="col"><input type="text" name="introduce"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">价格</th>
    <th scope="col"><input type="text" name="price"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">现在价格</th>
    <th scope="col"><input type="text" name="nowprice"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">图片</th>
    <th scope="col"><input type="FILE" name="FILE1" id="input-pic"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">页数</th>
    <th scope="col"><input type="text" name="pages"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">出版商</th>
    <th scope="col"><input type="text" name="publisher"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">作者</th>
    <th scope="col"><input type="text" name="author"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">时间</th>
    <th scope="col"><input type="text" name="intime"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">图书数量</th>
    <th scope="col"><input type="text" name="booknum"></th>
  </tr>
</table>
<br>
	<input type="submit" value="提交" class="button" id="btnSave"/>
</form>
		
		
		
  </body>
</html>
