<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'add.jsp' starting page</title>
    <style type="text/css">
			.header{
				height: 100px;
				background-color: gray;
			}
			body {
				margin: 0;
				padding: 0;
				font-family: Georgia, Palatino, serif;
				}
			.main{
				
				text-align: center;
				height: 550px;
			}
			td {
			    text-align:center;
			}
			.footer{

				height: 80px;
				background-color: gray;
			}
			form{
				margin-top: 30px;
			}

		</style>
  </head>
  <body>
  <div class = "header">
	</div>
		<div class="main">
	<form action = "DoctorAddServlet" method = "post">
		姓名：<input type="text" name = "name"/><br/><br/>
		年龄：<input type="text" name = "age"/><br/><br/>
		专业：<input type="text" name = "major"/><br/><br/>
		<input type = "submit" value = "添加"/>
	</form>
	</div>
		<div class = "footer">
		</div>
  </body>
</html>
