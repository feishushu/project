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
	<link rel="stylesheet" type="text/css" href="login.css">
	<style type="text/css">
        .code
        {
            background-image:url(code.jpg);
            font-family:Arial;
            font-style:italic;
            color:Red;
            border:0;
            padding:2px 3px;
            letter-spacing:3px;
            font-weight:bolder;
        }
        .unchanged
        {
            border:0;
        }
    </style>
    <script language="javascript" type="text/javascript">
     
     var code ; 
     function createCode()
     { 
       code = "";
       var codeLength = 6;//验证码的长度
       var checkCode = document.getElementById("checkCode");
       var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');//所有候选组成验证码的字符，当然也可以用中文的
         
       for(var i=0;i<codeLength;i++)
       {
       
         
       var charIndex = Math.floor(Math.random()*36);
       code +=selectChar[charIndex];
        
        
       }
//       alert(code);
       if(checkCode)
       {
         checkCode.className="code";
         checkCode.value = code;
       }
        
     }
     function validate ()
     {
       var inputCode = document.getElementById("input1").value;
       if(inputCode.length <=0)
       {
           alert("请输入验证码！");
       }
       else if(inputCode != code )
       {
          alert("验证码输入错误！");
          createCode();//刷新验证码
       }
       else
       {
         alert("正确");
       }
        
       }
        
    </script>
  </head>
  
  <body onload="createCode()">
    <script src="jquery-1.7.2.min.js" type="text/javascript"></script>

<div class="logo_box">
	<h3>s t a r b o o k s</h3>
	<form action="#" name="login" method="post">
		<div class="input">
			<span class="u_user"></span>
			<input name="logname" class="text" onFocus=" if(this.value=='输入ID或用户名登录') this.value=''" onBlur="if(this.value=='') this.value='输入ID或用户名登录'" value="输入ID或用户名登录" style="color: #FFFFFF !important" type="text">
		</div>
		<div class="input">
			<span class="us_uer"></span>
			<label class="l-login login_password" style="color: rgb(255, 255, 255);display: block;">输入密码</label>
			<input name="logpass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" onFocus="$('.login_password').hide()" onBlur="if(this.value=='') $('.login_password').show()" value="" type="password">
		</div>
		
		<div class="prov">
		 	<input  type="text"   id="input1" />
    		<input type="text" onclick="createCode()" readonly="readonly" id="checkCode" class="unchanged" style="width: 80px"  /><br />
    		</div>
    
		<div class="button" onclick="validate();"><input class="act-but submit" type="submit" value="登录" name=submit style="color: #FFFFFF"></div>
		<input name="savesid" value="0" id="check-box" class="checkbox" type="checkbox"><span>记住用户名密码</span>
	</form>
	<div class="sas">
		<a href="register.jsp">还没注册账号?</a>
	</div>
	
</div>
  </body>
</html>
