package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DoctorDao;
import entity.Doctor;

public class DoctorAddServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String major = request.getParameter("major");

		Doctor d = new Doctor(0,name,age,major);
		DoctorDao dd = new DoctorDao();

		int result = dd.add(d);

		if(result == 1){
			request.getRequestDispatcher("DoctorSelectServlet").forward(request,response);
		}else{
			request.getRequestDispatcher("add.jsp").forward(request,response);
		}
		
	}

}
