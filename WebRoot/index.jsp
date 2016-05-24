<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="UTF-8">
	<title>index</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/search.css" />
	<script type="text/javascript" src="js/jquery-1.4.2.main.js"></script>
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="javascript.fullPage.css" />
  <style type="text/css">
  .section2{
  	background-image:url(picture/444.png);
  }
  .section3{
  	background-image:url(picture/123.png);
  }
 .section4{
  	background-image:url(picture/444.png);
  }
div,ul,li,dl,dt,dd{
	margin:0;
	padding:0;
}
ul,li,dl,dt,dd{
	list-style:none;
}
.demo{
	position:absolute;
	top:130px;
	left:30px;
	width:1260px;
}
.demo ul li{
	float:left;
	width:400px;
	margin-right:10px;
	position:relative;
}
.demo ul li img{
    border:none;
	position:relative;
	z-index:22;
}
.demo ul li a{
	width:400px;
    display:block;
	border:2px solid #ccc;
}
.demo ul li a:hover{
	border:2px solid #C03;
}
.demo ul li a span{
    position:absolute;
	z-index:50;
	bottom:2px;
	left:2px;
	width:400px;
	height:350px;
	filter:alpha(Opacity=50);-moz-opacity:0.7;opacity: 0.7;
	background:#000;
	color:#fff;
	line-height:40px;
	text-align:left;
	display:none;
}
.demo ul li a:hover span{
	display:block;
}
</style>
</head>

<body>
<div id="fullpage">
	<div class="section" id="section1">
	<img src="picture/home-bg1.png" width="1280" height="702">
	<div class="nav">
		<ul>
			<li><a class="tooltip tooltip-effect-1" href="index.jsp#page1">��ҳ<span class="tooltip-content"><i class="fa fa-fw fa-home"></i></span></a></li>
			<li><a class="tooltip tooltip-effect-4" href="index.jsp#page2">ͼ�����<span class="tooltip-content"><i class="fa fa-fw fa-folder-open"></i></span></a></li>
			<li><a class="tooltip tooltip-effect-5" href="index.jsp#page3">ͼ������<span class="tooltip-content"><i class="fa fa-fw fa-binoculars"></i></span></a></li>
			<li><a class="tooltip tooltip-effect-2" href="index.jsp#page4">��������<span class="tooltip-content"><i class="fa fa-fw fa-user"></i></span></a></li>
		</ul>
		
	</div>
	<%if(session.getAttribute("login")==null){ %>
		<a href="login.jsp"><div class="denglu">��¼/ע��<li class="fa fa-fw fa-bank"></li></div></a>
	<%}else{ %>
		<a href="#"><div class="denglu"><%=session.getAttribute("login") %><li class="fa fa-fw fa-bank"></li></div></a>
	<%} %>
	</div>
	
	<div class="section section2" id="section2">
	<div>
	<img src="picture/donghua7.png">
	</div>

<table class="second" width="570" height="241" border="0" style="background-image:url()">
  <tr>
    <th scope="col" height="30"><div class="second-class"><br>ͼ�����<li class="fa fa-fw fa-desktop"></li></div></th>
  
  </tr>
  
  <tr>
  	<td>
  		<ul class="second-ul-1">
  		<br><br><br>
  			<a href="#"><li class="1">��ʷ<li class="fa fa-fw fa-eye"></li></li></a>
  			<a href="#"><li class="1">�ִ��Ƽ�<li class="fa fa-fw fa-rocket"></li></li></a>
  			<a href="#"><li class="1">��������<li class="fa fa-fw fa-bus"></li></li></a>
  			<a href="#"><li class="1">���ù���<li class="fa fa-fw fa-money"></li></li></a>
  			<a href="#"><li class="1">ʱ�г���<li class="fa fa-fw fa-photo"></li></li></a>
  			<br><br><br>
  			<a href="#"><li class="1">����<li class="fa fa-fw fa-graduation-cap"></li></li></a>
  			<a href="#"><li class="1">����ѧ<li class="fa fa-fw fa-coffee"></li></li></a>
  			<a href="#"><li class="1">��Ϸ����<li class="fa fa-fw fa-gamepad"></li></li></a>
  			<a href="#"><li class="1">��ѧ��Ȼ<li class="fa fa-fw fa-leaf"></li></li></a>
  			<a href="#"><li class="1">����ר��<li class="fa fa-fw  fa-github"></li></li></a>
  			<br><br><br>
  			<a href="#"><li class="1">����<li class="fa fa-fw fa-heart"></li></li></a>
  			<a href="#"><li class="1">�˶�����<li class="fa fa-fw fa-futbol-o"></li></li></a>
  			<a href="#"><li class="1">��������<li class="fa fa-fw fa-paw"></li></li></a>
  			<a href="#"><li class="1">���ε�ͼ<li class="fa fa-fw fa-camera"></li></li></a>
  			<a href="#"><li class="1">�����ͥ<li class="fa fa-fw fa-group"></li></li></a>
  			
  		</ul>
  	</td>
  </tr>
</table>

<table class="third" width="280" height="700" border="0">
  <tr>
    <th scope="col" height="233"><a href="#"><img src="picture/fasion2.jpg" width="280" height="233" class="third-img1"></a><div class="third-img1-title">ʱ��ר��</div></th>
  </tr>
  <tr>
    <td height="233"><a href="#"><img src="picture/photo2.jpg" width="280" height="233" class="third-img2"></a><div class="third-img2-title">��Ӱר��</div></td>
  </tr>
  <tr>
    <td height="220"><a href="#"><img src="picture/car.jpg" width="280" height="220" class="third-img3"></a><div class="third-img3-title">������־</div></td>
  </tr>
  
</table>


<div class="fourth">
	<div class="fourth-title"><li class="fa fa-fw fa-edit"></li>HOT!</div>
	<div class="fourth-title-1">_________________</div>
		<a href="book.jsp"><figure class="test1">
		<img src="picture/feizhou.jpg" width="170" height="170"> 
		<figcaption>
		<p>�ۼۣ���20</p>
		<p>����</p>
		<p>���:����֮��</p>
		</figcaption>
		</figure></a>
		
		<a href="book.jsp"><figure class="test2">
		<img src="picture/tongji.jpg" width="170" height="170"> 
		<figcaption>
		<p>�ۼۣ���30</p>
		<p>����:�</p>
		<p>���:ͳ��ѧ</p>
		</figcaption>
		</figure></a>
		
		<a href="book.jsp"><figure class="test3">
		<img src="picture/ziyouai.jpg" width="170" height="170"> 
		<figcaption>
		<p>�ۼۣ���20</p>
		<p>����:ˮľ��</p>
		<p>���:���ɰ�</p>
		</figcaption>
		</figure></a>
		
		<a href="book.jsp"><figure class="test4">
		<img src="picture/anni.jpg" width="170" height="170"> 
		<figcaption>
		<p>�ۼۣ���20</p>
		<p>����</p>
		<p>���:��ɽǽ�İ���</p>
		</figcaption>
		</figure></a>
</div>

<div class="fifth">
 
	<div class="fifth-title"><li class="fa fa-fw fa-tree"></li>������Ŀ</div>
		<a href="book.jsp"><div class="fifth-img1"><img src="picture/caicai.jpg" width="170" height="170"></div></a>
		<a href="book.jsp"><div class="fifth-img2"><img src="picture/dashengwu.jpg" width="170" height="170"></div></a>
		<a href="book.jsp"><div class="fifth-img3"><img src="picture/jiqi.jpg" width="170" height="170"></div></a>
		<a href="book.jsp"><div class="fifth-img4"><img src="picture/nba.jpg" width="170" height="170"></div></a>
</div>

</div>

<div class="section section3" id="section3">
		<form class="sc form">
			<input type="text" placeholder="��������Ҫ���鼮" class="input">
			<input name="search" type="submit" value="��ʼ����" class="submit">
		</form>
 <div id="side">
	 <ul id="side-menu">
		 <li class="active">
			 <a>��������</a>
			 <a class="banner_menu_i">&gt;</a>
			 <div class="banner_menu_content" style="width: 600px; top: -20px;">
				 <ul class="banner_menu_content_ul">
					<li>��Ե</li>
					<li>���˶�</li>
					<li>ë��</li>
				 </ul>
				 <ul class="banner_menu_content_ul">
				
				 </ul>
			 </div>
		 </li>
		 <li>
			 <a>����ͼ��</a>
			 <a class="banner_menu_i">&gt;</a>
			 <div class="banner_menu_content" style="width: 600px; top: -62px;">
				 <ul class="banner_menu_content_ul">
				 	 <a><img src="picture/anni.jpg"></a></li>
				 	 <a><img src="picture/caicai.jpg"></a></li>
				 	 <a><img src="picture/guoji.jpg"></a></li>
				 </ul>
				 <ul class="banner_menu_content_ul">
				 	<a><img src="picture/anni.jpg"></a></li>
				 	<a><img src="picture/caicai.jpg"></a></li>
				 	<a><img src="picture/caicai.jpg"></a></li>
				 </ul>
			 </div>
		 </li>
		 <li>
			 <a>��ͼ۸�</a>
			 <a class="banner_menu_i">&gt;</a>
			 <div class="banner_menu_content" style="width: 600px; top: -104px;">
				 <ul class="banner_menu_content_ul">
				 </ul>
				 <ul class="banner_menu_content_ul">
				 </ul>
				 <ul class="banner_menu_content_ul">
				 </ul>
			 </div>
		 </li>
		 <li>
			 <a>������Ŀ</a>
			 <a class="banner_menu_i">&gt;</a>
			 <div class="banner_menu_content" style="width: 600px; top: -146px;">
				 <ul class="banner_menu_content_ul">
				 </ul>
			 </div>
		 </li>
		 <li>
			 <a>��Ҷ��ڿ�</a>
			 <a class="banner_menu_i">&gt;</a>
			 <div class="banner_menu_content" style="width: 600px; top: -188px;">
				 <ul class="banner_menu_content_ul">
				 </ul>
			 </div>
		 </li>
		 <li>
			 <a>Ϊ���Ƽ�</a>
			 <a class="banner_menu_i">&gt;</a>
			 <div class="banner_menu_content" style="width: 600px; top: -230px;">
				 <ul class="banner_menu_content_ul">
				 </ul>
			 </div>
		 </li>
		 <li>
			 <a>����ר��</a>
			 <a class="banner_menu_i">&gt;</a>
			 <div class="banner_menu_content" style="width: 600px; top: -272px;">
				 <ul class="banner_menu_content_ul">
				 </ul>
			 </div>
		 </li>
	</lu>
 </div>
 <div class="search-pic"></div>
 <script type="text/javascript" src="js/search.js"></script>
</div>


<div class="section section4" id="section4">
<div class="demo-title">starbooks ������Ա</div>
<div class="demo">
    <ul>
       <li>
         <a href="#">
           <img src="picture/people.jpg" width="400" height="350">
           <span>��Ե<br>ǰ����� ���г���Գ��ô˧����<br>��Ե̫˧��<br>��Ե̫˧��<br>��Ե̫˧��<br>��Ե̫˧��</span>
         </a>
       </li>
       <li>
         <a href="#">
           <img src="picture/people2.jpg" width="400" height="350">
           <span>ë��<br>��̨����</span>
         </a>
       </li>
       <li>
         <a href="#">
           <img src="picture/people3.jpg" width="400" height="350">
           <span>���̶�<br>null</span>
         </a>
       </li>
    </ul>
 </div>
 </div>

<script type="text/javascript" src="javascript.fullPage.js"></script>
<script type="text/javascript">
	fullpage.initialize('#fullpage', {
		anchors: ['page1', 'page2','page3','page4']
	});

</script>

</body>
</html>