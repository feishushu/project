<%@page import="star.mvc.modle.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

ArrayList<book> allbook = (ArrayList<book>) session.getAttribute("allbook");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>书籍详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="book.css">
	<link media="screen" href="statics/grade.css" type="text/css" rel="stylesheet" /> 

<script src="statics/jquery-latest.pack.js" type="text/javascript"></script> 
<script src="statics/grade.js" type="text/javascript"></script> 
	
	<script type="text/javascript" src="jquery.min.js"></script>
	<script>
	$(document).ready(function(){
	
   var t = $("#text_box");
	//初始化数量为1,并失效减
	$('#min').attr('disabled',true);
    //数量增加操作
    $("#add").click(function(){    
        t.val(parseInt(t.val())+1)
        if (parseInt(t.val())!=1){
            $('#min').attr('disabled',false);
        }
      
    }) 
    //数量减少操作
    $("#min").click(function(){
        t.val(parseInt(t.val())-1);
        if (parseInt(t.val())==1){
            $('#min').attr('disabled',true);
        }
      
    })
   
});
</script> 
 
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
  
  <body bgcolor="#d7f4db">
  <div class="nav" id="divId">
 <ul>
   <li><a href="index.jsp#page1">首页</a></li>
   <li><a href="index.jsp#page2">图书分类</a></li>
   <li><a href="index.jsp#page3">图书搜索</a></li>
   <li><a href="index.jsp#page4">关于我们</a></li>
   <a href="servlet_shop"><div class="caidan-shop">我的购物</div></a>
 </ul>
</div>
  
  <div class="book">
    <div class="book-pic"><img alt="" src=<%=allbook.get(0).getPicture() %> width="250px" height="300px"></div>
    <div class="book-title"><div class="book-title-1"><%=allbook.get(0).getBookname() %></div></div>
    <div class="book-pr">
    	<div class="writer">作者:</div>
    	<div class="writername"><%=allbook.get(0).getAuthor() %></div>
    	
    	<div class="sale">出版社:</div>
    	<div class="sale-1"><%=allbook.get(0).getPublisher() %></div>
    	
    	<div class="ISBN">ISBN:</div>
    	<div class="ISBN-1"><%=allbook.get(0).getIsbn() %></div>
    	
    	<div class="page">图书页数: </div>
    	<div class="page-1"><%=allbook.get(0).getPages() %></div>
    	
    	<div class="time">上架时间:</div>
    	<div class="time-1"><%=allbook.get(0).getIntime() %></div>
    </div>
    <div class="book-shop">
    	<div class="book-shop-title">
    		购买详情
    	</div>
    	<div class="book-shop-box">
    		<div class="book-shop-box-price">原价:</div>
    		<div class="book-shop-box-price1">￥<%=allbook.get(0).getPrice() %></div>
    		<div class="book-shop-box-price2">售价:(sale)</div>
    		<div class="book-shop-box-price3">￥<%=allbook.get(0).getNowprice() %></div>
    		<div class="book-shop-box-mount">数量:(库存<%=allbook.get(0).getBooknum() %>本)</div>
    		<div class="book-shop-box-mount1">
    			<input id="min" name="" type="button" value="-" style="width:40px;"/>  
				<input id="text_box" name="" type="text" value="1" style="width:60px ;"/>  
				<input id="add" name="" type="button" value="+" style="width:40px;"/>  
			</div>
    	</div>
    		<a href="servlet_shop"><div class="book-shop-pic"><img src="picture/4.png" width=100px height=40px></div></a>
   		</div>
    <div class="book-detail">书目简介
    	<div class="book-detail-write"><%=allbook.get(0).getIntroduce() %></div>
    </div>
    
    <div class="book-pinglun">
    	<div id="box"> 
	<h4>请您评分</h4> 
	<div class="content"> 
		<div id="myPoint">
			<span><big>5</big><small>.0</small></span> 
			<div>
				<img src="statics/star5.gif" />
				<em>(一般)</em>
			</div>
		</div> 
		<div id="doPoint"> 
			
			<table cellspacing="0" cellpadding="0" border="0"> 
					<tbody> 
						<tr> 
							<th>故事：</th> 
							<td><span class="star5" id="item1" v="5"><small>1</small><small>2</small><small>3</small><small>4</small><small>5</small><small>6</small><small>7</small><small>8</small><small>9</small><small>10</small></span></td> 
							<td><strong>5</strong> <em>(一般)</em></td>
						</tr> 
						<tr> 
							<th>新颖：</th> 
							<td><span class="star5" id="item2" v="5"><small>1</small><small>2</small><small>3</small><small>4</small><small>5</small><small>6</small><small>7</small><small>8</small><small>9</small><small>10</small></span></td> 
							<td><strong>5</strong> <em>(一般)</em></td>
						</tr> 
						<tr> 
							<th>文笔：</th> 
							<td><span class="star5" id="item3" v="5"><small>1</small><small>2</small><small>3</small><small>4</small><small>5</small><small>6</small><small>7</small><small>8</small><small>9</small><small>10</small></span></td> 
							<td><strong>5</strong> <em>(一般)</em></td>
						</tr>
					</tbody>
			</table>
		</div> 
		<form id="form1" name="form1" action="" method="get">
			<input id="pointV1" type="hidden" value="5" name="pointV1" /> 
			<input id="pointV2" type="hidden" value="5" name="pointV2" /> 
			<input id="pointV3" type="hidden" value="5" name="pointV3" /> 
			<label>你的评论：<textarea id="content" name="content" rows="5" cols="50"></textarea></label>
			<button type="submit">提交</button> 
		</form>
	</div>
</div>  
    	
    </div>
  </div>
  
  </body>
</html>
