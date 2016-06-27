<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
   <a href="#"><div class="caidan-shop">我的购物</div></a>
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
        <tr>
            <td class="checkbox"><input class="check-one check" type="checkbox" name = "bookid" value = "1"/></td>
            <td class="goods"><img src="picture/caicai.jpg" alt=""/><span>猜猜我有多爱你</span></td>
            <td class="price">1111</td>
            <td class="count">
                <span class="reduce"></span>
                <input class="count-input" name = "1"  type="text" value="1"/>
                <span class="add">+</span></td>
            <td class="subtotal">1111</td>
            <td class="operation"><span class="delete">删除</span></td>
        </tr>
        <tr>
            <td class="checkbox"><input class="check-one check" type="checkbox" name = "bookid" value = "2"/></td>
            <td class="goods"><img src="picture/guoji.jpg" alt=""/><span>嘘！别提爱丽丝</span></td>
            <td class="price">2222</td>
            <td class="count"><span class="reduce"></span><input class="count-input" name = "2" type="text" value="1"/><span class="add">+</span></td>
            <td class="subtotal">2222</td>
            <td class="operation"><span class="delete">删除</span></td>
        </tr>
        <tr>
            <td class="checkbox"><input class="check-one check" type="checkbox" name = "bookid" value = "3"/></td>
            <td class="goods"><img src="picture/jiqi.jpg" alt=""/><span>机器学习实战</span></td>
            <td class="price">3333</td>
            <td class="count"><span class="reduce"></span><input class="count-input" name = "3"  type="text" value="1"/><span class="add">+</span></td>
            <td class="subtotal">3333</td>
            <td class="operation"><span class="delete">删除</span></td>
        </tr>
        <tr>
            <td class="checkbox"><input class="check-one check" type="checkbox" name = "bookid" value = "4:id"/></td>
            <td class="goods"><img src="picture/nba.jpg" alt=""/><span>MBA十日读</span></td>
            <td class="price">4444</td>
            <td class="count"><span class="reduce"></span><input class="count-input" name = "4"  type="text" value="1"/><span class="add">+</span></td>
            <td class="subtotal">4444</td>
            <td class="operation"><span class="delete">删除</span></td>
        </tr>
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
