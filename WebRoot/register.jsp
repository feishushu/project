<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>login</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="register.css">
  </head>
  
  <body>
    <script src="jquery-1.7.2.min.js" type="text/javascript"></script>

<div class="register_box">
	<h3>s t a r b o o k s</h3>
	<form action="#" name="r" method="post">
		<div class="input">
			<input name="registername" class="text" onFocus=" if(this.value=='�����û���(֧�����֣���ĸ)') this.value=''" onBlur="if(this.value=='') this.value='�����û���(֧�����֣���ĸ)'" value="�����û���(֧�����֣���ĸ)" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input">
		<!--  <label class="l-register register_password" style="color: rgb(255, 255, 255);">��������</label> -->
		<input name="registerpass" class="text" onFocus=" if(this.value=='��������(֧�����֣���ĸ������)') this.value=''" onBlur="if(this.value=='') this.value='��������(֧�����֣���ĸ������)'" value="��������(֧�����֣���ĸ������)" style="color: #FFFFFF !important" type="text">
		<!-- <input name="registerpass" class="text" style="color: #FFFFFF !important;z-index:100;" onFocus="$('.register_password').hide()" onBlur="if(this.value=='') $('.register_password').show()" value="" type="password"> -->
		</div>
		
		<div class="input">
			<input name="registerTname" class="text" onFocus=" if(this.value=='��ʵ����') this.value=''" onBlur="if(this.value=='') this.value='��ʵ����'" value="��ʵ����" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input">
			<input name="registeremail" class="text" onFocus=" if(this.value=='�����ַ') this.value=''" onBlur="if(this.value=='') this.value='�����ַ'" value="�����ַ" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input">
			<input name="registerphone" class="text" onFocus=" if(this.value=='�ֻ�����') this.value=''" onBlur="if(this.value=='') this.value='�ֻ�����'" value="�ֻ�����" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input">
			<input name="registerbir" class="text" onFocus=" if(this.value=='������Ϣ(1990-1-1)') this.value=''" onBlur="if(this.value=='') this.value='������Ϣ(1990-1-1)'" value="������Ϣ(1990-1-1)" style="color: #FFFFFF !important" type="text">
		</div>
		
		<div class="input-radio">
			<input name="registersex" type="radio" value="M" /> ��   
			<input name="registersex" type="radio" value="W" /> Ů
		</div>
		
		
		
		<div class="button"><input class="register-buttom submit" type="submit" value="��¼" name=submit style="color: #FFFFFF"></div>
		
	</form>
	
</div>
  </body>
</html>
