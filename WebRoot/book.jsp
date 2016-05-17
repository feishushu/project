<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>book</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="book.css">
	<script type="text/javascript" src="jquery.min.js"></script>
	<script>
	$(document).ready(function(){
	//获得文本框对象
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

  </head>
  
  <body>
  
  <div class="book">
    <div class="book-pic"></div>
    <div class="book-title"><div class="book-title-1"></div></div>
    <div class="book-pr">
    	<div class="writer">作者:</div>
    	<div class="writername"></div>
    	
    	<div class="sale">促销信息:</div>
    	<div class="sale-1"></div>
    </div>
    <div class="book-shop">
    	<div class="book-shop-title">
    		购买详情
    	</div>
    	<div class="book-shop-box">
    		<div class="book-shop-box-price">售价:</div>
    		<div class="book-shop-box-price1"></div>
    		<div class="book-shop-box-mount">数量:</div>
    		<div class="book-shop-box-mount1">
    			<input id="min" name="" type="button" value="-" style="width:40px;"/>  
				<input id="text_box" name="" type="text" value="1" style="width:60px ;"/>  
				<input id="add" name="" type="button" value="+" style="width:40px;"/>  
			</div>
    	</div>
    		<a href="#"><div class="book-shop-pic"><img src="picture/4.png" width=100px height=40px></div></a>
   		</div>
    <div class="book-detail">书目简介</div>
    <div class="book-pinglun">
    	<div id="box"> 
	<h4>我的评分</h4> 
	<div class="content"> 
		<div id="myPoint">
			<span><big>5</big><small>.0</small></span> 
			<div>
				<img src="statics/star5.gif" />
				<em>(一般)</em>
			</div>
		</div> 
		<div id="doPoint"> 
			<p>请点击以下星级进行评分：我的评分=(故事+更新+文笔)/3</p> 
			<table cellspacing="0" cellpadding="0" border="0"> 
					<tbody> 
						<tr> 
							<th>故事：</th> 
							<td><span class="star5" id="item1" v="5"><small>1</small><small>2</small><small>3</small><small>4</small><small>5</small><small>6</small><small>7</small><small>8</small><small>9</small><small>10</small></span></td> 
							<td><strong>5</strong> <em>(一般)</em></td>
						</tr> 
						<tr> 
							<th>更新：</th> 
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
			<label>评论内容：<textarea id="content" name="content" rows="5" cols="50"></textarea></label>
			<button type="submit">提交</button> 
		</form>
	</div>
</div>  
    	
    </div>
  </div>
  
  </body>
</html>
