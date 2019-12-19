package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DoctorDao;
import entity.Doctor;

public class DoctorUpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String major = request.getParameter("major");

		Doctor d = new Doctor(id,name,age,major);
		DoctorDao dd = new DoctorDao();

		int result = dd.update(d);

		if(result == 1){
			/*request.getRequestDispatcher("index.jsp").forward(request,response);*/
			request.getRequestDispatcher("DoctorSelectServlet").forward(request,response);
			
		}else{
			request.getRequestDispatcher("update.jsp").forward(request,response);
		}
		  
		
	}

}
