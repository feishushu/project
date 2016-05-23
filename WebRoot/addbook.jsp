<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <body>
    <p>输入新信息
		<form action="addbook" method="post" name=form ENCTYPE="multipart/form-data">
			<p>ID
				<input type="text" name="bookid" >
			<p>图片
				<input type="FILE" name="FILE1">
				<br>
			<input type='submit' value="插入" name="submit">
		</form> 
  </body>
</html>
