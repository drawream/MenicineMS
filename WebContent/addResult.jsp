<%@ page language="java" import="java.util.*,dao.*,entity.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
String major = request.getParameter("major");

Doctor d = new Doctor(0,name,age,major);
DoctorDao dd = new DoctorDao();

int result = dd.add(d);

if(result == 1){
	request.getRequestDispatcher("index.jsp").forward(request,response);
}else{
	request.getRequestDispatcher("add.jsp").forward(request,response);
}
%>
