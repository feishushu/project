<%@page import="star.mvc.modle.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

ArrayList<book> allbook 	= (ArrayList<book>) session.getAttribute("allbook");
ArrayList<comment> comlist  = (ArrayList<comment>) session.getAttribute("comlist");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�鼮����</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/book.css">
	<link media="screen" href="statics/grade.css" type="text/css" rel="stylesheet" /> 

<script src="statics/jquery-latest.pack.js" type="text/javascript"></script> 
<script src="statics/grade.js" type="text/javascript"></script> 
	
	<script type="text/javascript" src="jquery.min.js"></script>
	<script>
	$(document).ready(function(){
	
   var t = $("#text_box");
	//��ʼ������Ϊ1,��ʧЧ��
	$('#min').attr('disabled',true);
    //�������Ӳ���
    $("#add").click(function(){    
        t.val(parseInt(t.val())+1)
        if (parseInt(t.val())!=1){
            $('#min').attr('disabled',false);
        }
      
    }) 
    //�������ٲ���
    $("#min").click(function(){
        t.val(parseInt(t.val())-1);
        if (parseInt(t.val())==1){
            $('#min').attr('disabled',true);
        }
      
    })
   
});
</script> 
 
 <script>    
        // ����˵�����ҳ�涥���ľ��룬Ĭ��Ϊ200    
        var divOffsetTop = 500;    
        //�����¼�    
        window.onscroll=function(){    
            var div = document.getElementById("divId");    
            // ����ҳ������˶��٣���Ҫ���ֲ�ͬ�������    
            var topVal = 0;    
            if(window.pageYOffset){//��һ����ȥ�˴󲿷֣� ֻ����IE678    
                topVal = window.pageYOffset;    
            }    
            else if(document.documentElement.scrollTop ){//IE678 �ķ�quirkģʽ    
                topVal = document.documentElement.scrollTop;    
            }    
            else if(document.body.scrolltop){//IE678 ��quirkģʽ    
                topVal = document.body.scrolltop;    
            }    
            if(topVal <= divOffsetTop){    
                div.style.position = "";    
            }    
            else {    
                div.style.position = "fixed";    
            }    
        };    
        // ҳ�������֮�󣬼���˵�����ҳ�涥����ʵ�ʾ���    
        window.onload=function(){    
            var div = document.getElementById("divId");    
            divOffsetTop = div.offsetTop;    
        };    
        </script>    

 
  </head>
  
  <body bgcolor="#d7f4db">
  <div class="nav" id="divId">
 <ul>
   <li><a href="index.jsp#page1">��ҳ</a></li>
   <li><a href="index.jsp#page2">ͼ�����</a></li>
   <li><a href="index.jsp#page3">ͼ������</a></li>
   <li><a href="index.jsp#page4">��������</a></li>
   <a href="servlet_shop?xz=1"><div class="caidan-shop">�ҵĹ���</div></a>
 </ul>
</div>
  
  <div class="book">
    <div class="book-pic"><img alt="" src=<%=allbook.get(0).getPicture() %> width="250px" height="300px"></div>
    <div class="book-title"><div class="book-title-1"><%=allbook.get(0).getBookname() %></div></div>
    <div class="book-pr">
    	<div class="writer">����:</div>
    	<div class="writername"><%=allbook.get(0).getAuthor() %></div>
    	
    	<div class="sale">������:</div>
    	<div class="sale-1"><%=allbook.get(0).getPublisher() %></div>
    	
    	<div class="ISBN">ISBN:</div>
    	<div class="ISBN-1"><%=allbook.get(0).getIsbn() %></div>
    	
    	<div class="page">ͼ��ҳ��: </div>
    	<div class="page-1"><%=allbook.get(0).getPages() %></div>
    	
    	<div class="time">�ϼ�ʱ��:</div>
    	<div class="time-1"><%=allbook.get(0).getIntime() %></div>
    </div>
    <div class="book-shop">
    	<div class="book-shop-title">
    		��������
    	</div>
    	<div class="book-shop-box">
    	<form action="servlet_shop" name = "form1" method = "post">
    		<div class="book-shop-box-price">ԭ��:</div>
    		<div class="book-shop-box-price1">��<%=allbook.get(0).getPrice() %></div>
    		<div class="book-shop-box-price2">�ۼ�:(sale)</div>
    		<div class="book-shop-box-price3">��<%=allbook.get(0).getNowprice() %></div>
    		<div class="book-shop-box-mount" >����:���(<input id="kucun" value="<%=allbook.get(0).getBooknum() %>" readonly>)��</div>
    		<div class="book-shop-box-mount1">
    			<input name = "bookid" type = "hidden" value = <%=allbook.get(0).getBookid() %>>
    			<input name = "bookpic" type = "hidden" value = <%=allbook.get(0).getPicture() %>>
    			<input name = "nowprice" type = "hidden" value = <%=allbook.get(0).getNowprice() %>>
    			<input id="min" name="" type="button" value="-" style="width:40px;"/>  
				<input id="text_box" name="carnum" type="text" value="1" onfocus="document.getElementById('text_box').value=this.value;" style="width:60px ;"  onkeyup="mount()"/>  
				<input id="add" name="" type="button" value="+" style="width:40px;"/>  
			</div>
			<br><span id="tishi" class="tishi"></span>
    	</div>
    		<div class="book-shop-pic"><input name = "submit" type = "submit" value = "���빺�ﳵ"></div>
    	</form>
   		</div>
    <div class="book-detail">��Ŀ���
    	<div class="book-detail-write"><%=allbook.get(0).getIntroduce() %></div>
    </div>
    <div class="book-pinglun">
   
    <%if(comlist.size() != 0){ %>
    <%for(comment com:comlist){ %>
    <div class="pinglunall">
    <div class="pinglunname"><br><br>�����û���<%=com.getUsername() %></div>
    <div class="pinglunstar"><br><br>����������<%=com.getScore() %></div>
    <br><div class="pinglunneirong"><br><br><br><br><%=com.getContent() %></div>
    </div>
    <br>
    <% } %>
  <% }else{ %>
  	<div class="pinglunall">
    	����������
    </div>
  <%} %>
    </div>
</div>

<script type="text/javascript">
	function mount(){
		var mount = document.getElementById("text_box").value;
		var kucun = document.getElementById("kucun").value;
		if(mount-kucun<=0){
		
		document.getElementById("tishi").innerHTML="<font color='red'>����</font>"+mount+"<font color='red'>��</font>";
			
		}
		if(mount-kucun>0)
		{
			alert("���ֻ��"+kucun+"��");
		}
		
	}

</script>
  </body>
</html>
