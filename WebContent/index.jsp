<%@ page language="java" import="java.util.*,dao.*,entity.*" pageEncoding="UTF8"%>
<%

ArrayList<Doctor> list = (ArrayList<Doctor>)request.getAttribute("list");

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>医生管理系统</title>
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

		</style>
	</head>
	<body>
	<div class = "header">
	</div>
		<div class="main">
			<h1 >医生管理系统</h1><br/>
			医生信息表<br/><br/>
			<table width = "800px" border="1" align="center">
				<tr>
					<th>编号</th>
					<th>姓名</th>
					<th>年龄</th>
					<th>专业</th>
					<th>操作</th>
				</tr>
				<%for(Doctor d	: list){ %>
				<tr>
					<td><%=d.getId() %></td>
					<td><%=d.getName() %></td>
					<td><%=d.getAge() %></td>
					<td><%=d.getMajor() %></td>
					<td>
					<a href="DoctorDeleteServlet?id=<%=d.getId()%>">删除</a>
					<a href="update.jsp?id=<%=d.getId()%>">编辑</a>
					</td>
				</tr>
				<%} %>
			</table><br/>
			<a href = "add.jsp">添加新医生</a>
		</div>
		<div class = "footer">
		</div>
	</body>
</html>
