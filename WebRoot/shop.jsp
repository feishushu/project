<%@ page language="java" import="java.util.*,star.mvc.modle.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<car> showbook =(ArrayList<car>) session.getAttribute("showbook");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>shop</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/shop.css"/>
    <script type="text/javascript" src="js/shop.js"></script>
 
    
  </head>
  
  <body>
  <div class="nav" id="divId">
 <ul>
   <li><a href="index.jsp#page1">首页</a></li>
   <li><a href="index.jsp#page2">图书分类</a></li>
   <li><a href="index.jsp#page3">图书搜索</a></li>
   <li><a href="index.jsp#page4">关于我们</a></li>
   <a href="#"><div class="caidan-shop">我的购物车</div></a>
 </ul>
</div>
  <form action="servlet_order" name="shop" method="post">
    <table id="cartTable">
    <thead>
        <tr>
            <th><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
            <th>商品</th>
            <th>单价</th>
            <th>数量</th>
            <th>小计</th>
            <th>操作</th>
        </tr>
    </thead>
    <tbody>
    	<%if(showbook.size() != 0){ 
    		int i = 1;
    		for(car ca:showbook){
    	%>
    		 <tr>
		            <td class="checkbox">
		            <input class="check-one check" type="checkbox" name = "bookid" value = <%=ca.getbookid()+":"+ca.getId() %>>
		            </td>
		            <td class="goods">
		            	<img src=<%=ca.getBookpic() %> alt=""/>
		            	<span><%=ca.getBookname() %></span>
		            </td>
		            <td class="price"><%=ca.getNowprice() %></td>
		            <td class="count">
		                <span class="reduce"></span>
		                <input class="count-input" name =<%=ca.getbookid()+":"+ca.getId() %>  type="text" value=<%=ca.getBooknum() %>>
		                <input class="count-input" name = "id"  type="hidden" value=<%=ca.getId() %>>
		                <span class="add">+</span>
		            </td>
		            <td class="subtotal"><%=Float.parseFloat(ca.getBooknum())*Float.parseFloat(ca.getNowprice()) %></td>
		            <td class="operation"><span class="delete">删除</span></td>
		        </tr>
        <%}} %>
    </tbody>
</table>

<div class="foot" id="foot">
    <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
    <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
    <div class="fr closing"><input class="fr closing" type="submit" value = "结算"></div>
    <div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
    <div class="fr selected" id="selected">已选商品
        <span id="selectedTotal">0</span>件
        <span class="arrow up">︽</span>
        <span class="arrow down">︾</span>
    </div>
    <div class="selected-view">
        <div id="selectedViewList" class="clearfix">
        </div>
        <span class="arrow">◆<span>◆</span></span>
    </div>
</div>
</form>
  </body>
</html>
