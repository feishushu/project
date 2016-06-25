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
        // 定义菜单栏离页面顶部的距离，默认为200    
        var divOffsetTop = 500;    
        //滚动事件    
        window.onscroll=function(){    
            var div = document.getElementById("divId");    
            // 计算页面滚动了多少（需要区分不同浏览器）    
            var topVal = 0;    
            if(window.pageYOffset){//这一条滤去了大部分， 只留了IE678    
                topVal = window.pageYOffset;    
            }    
            else if(document.documentElement.scrollTop ){//IE678 的非quirk模式    
                topVal = document.documentElement.scrollTop;    
            }    
            else if(document.body.scrolltop){//IE678 的quirk模式    
                topVal = document.body.scrolltop;    
            }    
            if(topVal <= divOffsetTop){    
                div.style.position = "";    
            }    
            else {    
                div.style.position = "fixed";    
            }    
        };    
        // 页面加载完之后，计算菜单栏到页面顶部的实际距离    
        window.onload=function(){    
            var div = document.getElementById("divId");    
            divOffsetTop = div.offsetTop;    
        };    
        </script>    
 </head>
  
  <body>
     <div class="nav" id="divId">
 <ul>
   <li><a href="index.jsp#page1">首页</a></li>
   <li><a href="index.jsp#page2">图书分类</a></li>
   <li><a href="index.jsp#page3">图书搜索</a></li>
   <li><a href="index.jsp#page4">关于我们</a></li>
   <a href="servlet_shop"><div class="caidan-shop">我的购物</div></a>
 </ul>
</div>
<div class="buy-title"><p>订单详情</p></div>
			
<br>
<%int i=0;int j=0; %>
 <% if(true){ %>
  <% for( j =0 ;j<=1;j++){ %>
<br><table width="80%"  border="1" class="tableid" align="center" name="tableid" id="tableid">
  <tr>
    <th scope="col" bgcolor="#33ffff" width="20%" height="35px"><p>订单编号</p></th>
    <th scope="col" bgcolor="#33ff99" width="20%"><p>12345678</p></th>
    <th scope="col" bgcolor="#33ffff" width="20%" height="35px"><p>订购日期</p></th>
    <th scope="col" bgcolor="#33ff99" width="20%"><p>2016-2-2</p></th>
  </tr>
  <% if(true){ %>
  <% for( i =0 ;i<=3;i++){ %>
  <tr>
  
    <th scope="col" width="30%" height="50px"><div class="pic"><p><img src="picture/b1.jpg" width="70px" height="78px"></p></div></th>
    <th scope="col"><p>非洲</p></th>
     <th scope="col"><p>￥10.0</p></th>
      <th scope="col"><a href="bookping.jsp"><input type="submit" value="评价" /></a></th>
 
  </tr> <% } %>
  <% i=0; } %>
  </table><% } %>
  <% j=0; } %>
  
 
  </form>
  </body>
</html>
