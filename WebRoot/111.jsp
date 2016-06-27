<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '111.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form action="222.jsp" method=post name=form>
    
    <img src="picture/b1.jpg" width="60px" height="58px" id="img" name="img" />
    <input type="text" name="hidden" id="hidden" onchange="document.getElementById('img').src=this.value;"/>
    <input type="file" name="file" onchange="document.getElementById('file').src=this.value"/>
    <input type="submit" id="sub" value="12" name="submit">
    </form>
    <script type="text/javascript">

</script>
    
      <!--    <script>
	  function doSubmit(file,hidden){ 
            var file = document.getElementById("file");
            var hidden = document.getElementById("hidden");  
        if (file.value == "") { 
        	alert("img");
			return file;
		}
		if (file.value != ""){ 
		alert("file");
		return hidden;
} 
       } 
		</script>-->
  </body>
</html>
