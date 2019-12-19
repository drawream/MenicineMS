<%@ page language="java" import="java.util.*,dao.*,entity.*" pageEncoding="UTF8"%>
<%DoctorDao dd = new DoctorDao();
ArrayList<Doctor> list = dd.select(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'index.jsp' starting page</title>
		<style type="text/css">
			td {
			    text-align:center;
			}
		</style>
	</head>
	<body>
		<table width = "400px" border="1">
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
				<a href="deleteResult.jsp?id=<%=d.getId()%>">删除</a>
				<a href="update.jsp?id=<%=d.getId()%>">编辑</a>
				</td>
			</tr>
			<%} %>
		</table>
		<a href = "add.jsp">添加新医生</a>
<!-- 		<a href = "update.jsp">修改医生</a> -->

	</body>
</html>
