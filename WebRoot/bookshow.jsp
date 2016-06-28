<%@ page language="java" import="java.util.*,star.mvc.modle.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

ArrayList<book> booktype = (ArrayList<book>) session.getAttribute("booktype");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>bookshow</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/bookshow.css">
	
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
   <div class="caidan-shop"><a href="servlet_shop?xz=1">我的购物</a></div></a>
 </ul>
</div>
	
    <div class="bookshow" style="border:1px solid #000">
    	<div class="hello"><div class="hello-title">首页 -- ><%=session.getAttribute("-->") %></div>
    	<%if(session.getAttribute("login")!=null){ %>
    		<div class="hello-word">您好！<%=session.getAttribute("login") %> 这里是您要的结果</div>
    	<%}else{ %>
    		<div class="hello-word">您好！游客 这里是您要的结果</div>
    	<%} %>	
    	</div>
    	<!-- 第一排 -->
    	<%if(booktype != null){ 
    		String pic = null;
    		int i = 1, j = 1;
    		for(book type:booktype){
    			pic = "book-pic"+String.valueOf(i);
    			
    			if(j % 4 == 0)
    				i ++;
    	%>
    	<div class=<%=pic %> style="border:1px solid #000"><a href="getAllMsgByBook?bookid=<%=type.getBookid() %>&xz=book.jsp"><img src=<%=type.getPicture() %> width="200" height="180"><span>简介：<%=type.getIntroduce() %></span></a>
    		<div class="title" style="border:1px solid #000">
    		<div class="title-price" style="border:1px solid #000">价格：<%=type.getNowprice() %></div>
    		<div class="title-detail" style="border:1px solid #000">作者：<%=type.getAuthor() %></div>
    		</div>
    	</div>
    	<%j++;} %>
			<!-- 翻页 -->
    		<div class="page">
    		<div class="back"><a href="servlet_fselect?cou=sub"><img src="picture/back.png" width=70px height=50px></a></div>
    		<div class="forword"><a href="servlet_fselect?cou=add"><img src="picture/forward.png" width=70px height=50px></a></div>
    		</div>    	
    	<%}else{%>
    		
    	<%} %>
    	
    	
    </div>
    <div class="book-sale"><div class="sale-title">S A L E</div></div>
    <table class="third" width="280" height="700" border="0">
  <tr>
    <th scope="col" height="233"><a href="#"><img src="picture/b1.jpg" width="230" height="233" class="third-img1"></a><div class="third-img1-title"></div></div></th>
  </tr>
  <tr>
    <td height="233"><a href="#"><img src="picture/b2.jpg" width="230" height="233" class="third-img2"></a><div class="third-img2-title"></div></div></td>
  </tr>
  <tr>
    <td height="220"><a href="#"><img src="picture/b3.jpg" width="230" height="220" class="third-img3"></a><div class="third-img3-title"></div></div></td>
  </tr>
  
</table>
    
    
  </body>
</html>
