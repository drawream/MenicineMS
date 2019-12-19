<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'add.jsp' starting page</title>
  </head>
  <body>
	<form action = "addResult.jsp" method = "post">
		姓名：<input type="text" name = "name"/><br/>
		年龄：<input type="text" name = "age"/><br/>
		专业：<input type="text" name = "major"/><br/>
		<input type = "submit" value = "注册"/>
	</form>
  </body>
</html>
