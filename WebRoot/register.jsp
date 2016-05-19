<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = 
request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>register</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="register.css">
	<script>
 		function pw(){
 			var pw1 = document.getElementById("registerpass").value;
 			var pw2 = document.getElementById("registernewpass").value;
 			if(pw1==pw2){
 				document.getElementById("tishi").innerHTML="<font color='red'>密码相同</font>";
 				document.getElementById("submit").disabled=false;
 			}else{
 				document.getElementById("tishi").innerHTML="<font color='red'>密码不相同</font>";
 				document.getElementById("submit").disabled=true;
 			}
 		}
 	</script>
  </head>
  
  <body>
    <script src="jquery-1.7.2.min.js" type="text/javascript"></script>

<div class="register_box">
	<h3>s t a r b o o k s</h3>
	<form action="servlet_register" name="r" method="post">
		<div class="input">
			<input name="registername" class="text" onFocus=" if(this.value=='ÊäÈëÓÃ»§Ãû(Ö§³ÖÊý×Ö£¬×ÖÄ¸)') this.value=''" onBlur="if(this.value=='') this.value='ÊäÈëÓÃ»§Ãû(Ö§³ÖÊý×Ö£¬×ÖÄ¸)'" value="ÊäÈëÓÃ»§Ãû(Ö§³ÖÊý×Ö£¬×ÖÄ¸)" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input">
		<!--  <label class="l-register register_password" style="color: rgb(255, 255, 255);">ÉèÖÃÃÜÂë</label> -->
		<label class="l-login login_password" style="color: rgb(255, 255, 255);display: block;">输入密码（支持数字，字母，符号）</label>
		<input name="registerpass" id="registerpass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" onFocus="$('.login_password').hide()" onBlur="if(this.value=='') $('.login_password').show()" value="${password}" type="password">
		</div>

		<div class="input">
 			<label class="l-login login_newpassword" style="color: rgb(255, 255, 255);display: block;">确认密码</label>
 			<input name="registernewpass" id="registernewpass" onkeyup="pw()" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" onFocus="$('.login_newpassword').hide()" onBlur="if(this.value=='') $('.login_newpassword').show()" value="${password}" type="password">
 		</div><span id="tishi" class="tishi"></span>
 
		
		<div class="input">
			<input name="registerTname" class="text" onFocus=" if(this.value=='ÕæÊµÐÕÃû') this.value=''" onBlur="if(this.value=='') this.value='ÕæÊµÐÕÃû'" value="ÕæÊµÐÕÃû" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input">
			<input name="registeremail" class="text" onFocus=" if(this.value=='ÓÊÏäµØÖ·') this.value=''" onBlur="if(this.value=='') this.value='ÓÊÏäµØÖ·'" value="ÓÊÏäµØÖ·" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input">
			<input name="registerphone" class="text" onFocus=" if(this.value=='ÊÖ»úºÅÂë') this.value=''" onBlur="if(this.value=='') this.value='ÊÖ»úºÅÂë'" value="ÊÖ»úºÅÂë" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input">
			<input name="registerbir" class="text" onFocus=" if(this.value=='ÉúÈÕÐÅÏ¢(1990-1-1)') this.value=''" onBlur="if(this.value=='') this.value='ÉúÈÕÐÅÏ¢(1990-1-1)'" value="ÉúÈÕÐÅÏ¢(1990-1-1)" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input-radio">
			<input name="registersex" type="radio" value="M" /> ÄÐ   
			<input name="registersex" type="radio" value="W" /> Å®
		</div>
		
		
		
		<div class="button"><input class="register-buttom submit" id="submit"  type="submit" value="µÇÂ¼" name=submit style="color: #FFFFFF"></div>
		
	</form>
	
</div>
  </body>
</html>
