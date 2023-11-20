package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DAO.StudentEntry;
import com.db.DBConnect;
import com.User.StudentDetails;

@SuppressWarnings("serial")
@WebServlet("/StudentServlet")
@MultipartConfig

public class StudentServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int Id = Integer.parseInt(request.getParameter("Id"));
		String Name = request.getParameter("Name");
		String Email = request.getParameter("Email");
		String Gender = request.getParameter("Gender");
		String Course = request.getParameter("Course");
		String Specialization = request.getParameter("Specialization");
		int Mobile = Integer.parseInt(request.getParameter("Mobile"));

		StudentDetails us = new StudentDetails(Id, Name, Email, Gender, Course, Specialization, Mobile);

		StudentEntry dao = new StudentEntry(DBConnect.getConn());
		boolean y = dao.addCandidate(us);

		if (y) {

			HttpSession session = request.getSession();
			session.setAttribute("reg-sucess", "Register Sucessfully :)");
			response.sendRedirect("admin.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("reg-fail", "Register not Sucessful  :(");
			response.sendRedirect("student.jsp");

		}

	}
}
