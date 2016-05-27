<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/manger.css">
	

  </head>
  
  <body><!-- 顶部内容 -->
    <div class="top">
    	<div style="float: left">
    		<span style="font-size: 16px;line-height: 45px;padding-left: 20px;color:white">starbooks管理后台
    		</span>
    	</div>
    	
    	<div id="people" class="people">
    		<span>管理员:XXX</span>
    	</div>
    </div>
    
    <div class="manger_menu">
        <ul id="menu">
            <li class="tab">
               <a href="manger-main.jsp"  target="menuFrame"><i></i>首页</a>
            </li><br>
            <li class="tab">
                <a> <i></i>书籍管理</a>
                <ul>
                    <li><a href="addbook.jsp" target="menuFrame"><i></i>增加书籍</a></li>
                    <li><a href="1" target="menuFrame"><i></i>修改书籍</a></li>
                    <li><a href="1" target="menuFrame"><i></i>删除书籍</a></li>
                </ul>
            </li><br>
            <li class="tab">
                <a> <i></i>折扣管理</a>
                <ul>
                    <li><a href="1" target="menuFrame"><i></i>修改折扣</a></li>
                </ul>
            </li>
            
        </ul>
    </div>
    <!--中间网页-->
    <div id="web" class="web">
        <div class="mian_content">
            <div id="page_content">
                <iframe id="menuFrame" name="menuFrame" src="manger-main.jsp" style="overflow:visible;"
                        scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
            </div>
        </div>
    </div>
  </body>
</html>
