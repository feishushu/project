<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/buy.css">
	
 <script>    
        // ����˵�����ҳ�涥���ľ��룬Ĭ��Ϊ200    
        var divOffsetTop = 500;    
        //�����¼�    
        window.onscroll=function(){    
            var div = document.getElementById("divId");    
            // ����ҳ������˶��٣���Ҫ���ֲ�ͬ�������    
            var topVal = 0;    
            if(window.pageYOffset){//��һ����ȥ�˴󲿷֣� ֻ����IE678    
                topVal = window.pageYOffset;    
            }    
            else if(document.documentElement.scrollTop ){//IE678 �ķ�quirkģʽ    
                topVal = document.documentElement.scrollTop;    
            }    
            else if(document.body.scrolltop){//IE678 ��quirkģʽ    
                topVal = document.body.scrolltop;    
            }    
            if(topVal <= divOffsetTop){    
                div.style.position = "";    
            }    
            else {    
                div.style.position = "fixed";    
            }    
        };    
        // ҳ�������֮�󣬼���˵�����ҳ�涥����ʵ�ʾ���    
        window.onload=function(){    
            var div = document.getElementById("divId");    
            divOffsetTop = div.offsetTop;    
        };    
        </script>    
 </head>
  
  <body>
     <div class="nav" id="divId">
 <ul>
   <li><a href="index.jsp#page1">��ҳ</a></li>
   <li><a href="index.jsp#page2">ͼ�����</a></li>
   <li><a href="index.jsp#page3">ͼ������</a></li>
   <li><a href="index.jsp#page4">��������</a></li>
   <a href="servlet_shop"><div class="caidan-shop">�ҵĹ���</div></a>
 </ul>
</div>
<div class="buy-title"><p>��������</p></div>
			
<br>
<%int i=0;int j=0; %>
 <% if(true){ %>
  <% for( j =0 ;j<=1;j++){ %>
<br><table width="80%"  border="1" class="tableid" align="center" name="tableid" id="tableid">
  <tr>
    <th scope="col" bgcolor="#33ffff" width="20%" height="35px"><p>�������</p></th>
    <th scope="col" bgcolor="#33ff99" width="20%"><p>12345678</p></th>
    <th scope="col" bgcolor="#33ffff" width="20%" height="35px"><p>��������</p></th>
    <th scope="col" bgcolor="#33ff99" width="20%"><p>2016-2-2</p></th>
  </tr>
  <% if(true){ %>
  <% for( i =0 ;i<=3;i++){ %>
  <tr>
  
    <th scope="col" width="30%" height="50px"><div class="pic"><p><img src="picture/b1.jpg" width="70px" height="78px"></p></div></th>
    <th scope="col"><p>����</p></th>
     <th scope="col"><p>��10.0</p></th>
      <th scope="col"><a href="bookping.jsp"><input type="submit" value="����" /></a></th>
 
  </tr> <% } %>
  <% i=0; } %>
  </table><% } %>
  <% j=0; } %>
  
 
  </form>
  </body>
</html>
