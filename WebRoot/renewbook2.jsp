<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*,star.mvc.modle.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<book> uplist = (ArrayList<book>) session.getAttribute("uplist");
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
	<link rel="stylesheet" type="text/css" href="css/renewbook2.css">
</head>
<html>
  <body>
  <h3 class="title">s t a r b o o k s修改书籍</h3>
  <form action="servlet_upbook" method="post" name=form ENCTYPE="multipart/form-data">
  
  <table width="50%" height="50%" border="0.8" class="manage" align="center">
  <tr>
    <th scope="col" width="30%" height="50px">图书编号</th>
    <th scope="col"><p> <%=uplist.get(0).getBookid() %></p>
    <input type="hidden" name="bookid" value=<%=uplist.get(0).getBookid() %>> </th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">分类</th>
    <th scope="col"><input type="text" name="supertypeid" value="<%=uplist.get(0).getSupertypeid() %>"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">专题</th>
    <th scope="col"><input type="text" name="subtypeid" value="<%=uplist.get(0).getSubtypeid() %>"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">书名</th>
    <th scope="col"><input type="text" name="bookname" value="<%=uplist.get(0).getBookname() %>"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">ISBN</th>
    <th scope="col"><input type="text" name="isbn" value="<%=uplist.get(0).getIsbn() %>"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">介绍</th>
    <th scope="col"><input type="text" name="introduce" value="<%=uplist.get(0).getIntroduce() %>"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">价格</th>
    <th scope="col"><input type="text" name="price" value="<%=uplist.get(0).getPrice() %>"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">现在价格</th>
    <th scope="col"><input type="text" name="nowprice" value="<%=uplist.get(0).getNowprice() %>"></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">图片</th>
    <th scope="col"><div id="img">
    <img src=<%=uplist.get(0).getPicture() %> width="60px" height="58px" id="img" ></div>
    <input type="FILE" name="FILE1"  />
    <input type="hidden" name="img" value=<%=uplist.get(0).getPicture() %>>
    </th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">页数</th>
    <th scope="col"><input type="text" name="pages" value=<%=uplist.get(0).getPages() %>></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">出版商</th>
    <th scope="col"><input type="text" name="publisher" value=<%=uplist.get(0).getPublisher() %>></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">作者</th>
    <th scope="col"><input type="text" name="author" value=<%=uplist.get(0).getAuthor() %>></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">时间</th>
    <th scope="col"><input type="text" name="intime" value=<%=uplist.get(0).getIntime() %>></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">图书数量</th>
    <th scope="col"><input type="text" name="booknum" value=<%=uplist.get(0).getBooknum() %>></th>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">热门书籍</th>
    <th scope="col">
    <%if(uplist.get(0).getHotsbook().equals("1")){ %>
    <input type="radio" id="bookhot" name="bookhot" value="1" checked/>是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="radio" id="bookhot" name="bookhot" value="0" />否</th>
     <%}else{%>
      <input type="radio" id="bookhot" name="bookhot" value="1"/>是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="radio" id="bookhot" name="bookhot" value="0" checked/>否</th>
     <%} %>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">特别推荐</th>
    <th scope="col">
    <%if(uplist.get(0).getSpeciabook().equals("1")){ %>
    <input type="radio" name="bookspecial" id="bookspecial" value="1" checked>是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="radio" id="bookspecial" name="bookspecial" value="0" >否</th>
    <%}else{ %>
    <input type="radio" name="bookspecial" id="bookspecial" value="1" >是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="radio" id="bookspecial" name="bookspecial" value="0" checked>否</th>
    <%} %>
  </tr>
  <tr>
    <th scope="col" width="30%" height="50px">新书</th>
    <th scope="col">
    <div class="booknewD1">
    <%if(uplist.get(0).getNewbook().equals("1")){ %>
    <input type="radio" id="booknew" name="booknew" value="1" checked/ >是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
    <input type="radio" id="booknew" name="booknew" value="0">否
    </div>
    <%}else{ %>
    <input type="radio" name="booknew" id="booknew" value="1" >是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="radio" id="booknew" name="booknew" value="0" checked>否</th>
    <%} %></th>
  </tr>
</table>
<br>
	<input type="submit" value="提交" class="button" />
</form>
		
  </body>
</html>
