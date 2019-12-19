<%@ page language="java" import="java.util.*,dao.*,entity.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


	DoctorDao dd = new DoctorDao();

	int id = Integer.parseInt(request.getParameter("id"));
	
	int result = dd.delete(id);
	request.getRequestDispatcher("index.jsp").forward(request,response);

%>

