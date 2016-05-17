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
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="javascript.fullPage.css" />
  <style type="text/css">
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
	<a href="login.jsp"><div class="denglu">��¼/ע��<li class="fa fa-fw fa-bank"></li></div></a>
	</div>
	
	<div class="section" id="section2">
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

<a href="#"><div class="fourth-title-2"><br>�����Ƽ�</div></a>
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
 <a href="#"><div class="fifth-title-2"><br>���ྭ��</div></a>
	<div class="fifth-title"><li class="fa fa-fw fa-tree"></li>������Ŀ</div>
		<a href="book.jsp"><div class="fifth-img1"><img src="picture/caicai.jpg" width="170" height="170"></div></a>
		<a href="book.jsp"><div class="fifth-img2"><img src="picture/dashengwu.jpg" width="170" height="170"></div></a>
		<a href="book.jsp"><div class="fifth-img3"><img src="picture/jiqi.jpg" width="170" height="170"></div></a>
		<a href="book.jsp"><div class="fifth-img4"><img src="picture/nba.jpg" width="170" height="170"></div></a>
</div>

</div>

<div class="section" id="section3">123</div>

<div class="section" id="section4"   style="background:#17ab9f;">
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