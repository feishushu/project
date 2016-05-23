<%@page import="star.mvc.modle.book"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <body>
  <%
  	ArrayList picList = (ArrayList)session.getAttribute("picList");
  	Iterator it1 = picList.iterator();
  	book b  = new book(); 
  	while(it1.hasNext()){
            b = (book)it1.next();
        }
     String ID = b.getBookid();
     String pic = b.getPicture();
   %>
    <p>详细信息
	<p>编号
		<input type="text" name=id value=<%=ID %>>
		<br>
		<img  src=<%=pic %>>
  </body>
</html>
