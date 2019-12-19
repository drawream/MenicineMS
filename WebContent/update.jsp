<%@ page language="java" import="java.util.*,dao.*,entity.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
DoctorDao dd = new DoctorDao();
int id = Integer.parseInt(request.getParameter("id"));
Doctor d  = dd.getById(id);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'update.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
  </head>
  
  <body>
    <form action = "updateResult.jsp" method = "post">
    	编号：<input type="text" name = "id" value = <%=d.getId() %> readonly="readonly"><br/>
		姓名：<input type="text" name = "name" value = <%=d.getName() %>><br/>
		年龄：<input type="text" name = "age" value = <%=d.getAge() %>><br/>
		专业：<input type="text" name = "major" value = <%=d.getMajor() %>><br/>
		<input type = "submit" value = "修改"/>
	</form>
  </body>
</html>
