package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DoctorDao;

public class DoctorDeleteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		DoctorDao dd = new DoctorDao();

		int id = Integer.parseInt(request.getParameter("id"));
		
		int result = dd.delete(id);
		/*request.getRequestDispatcher("index.jsp").forward(request,response);*/
		request.getRequestDispatcher("DoctorSelectServlet").forward(request,response);
		
	}

}
