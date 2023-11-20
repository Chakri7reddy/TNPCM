package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DAO.CompanyEntry;
import com.db.DBConnect;
import com.User.CompanyDetails;

@SuppressWarnings("serial")
@WebServlet("/CompaniesServlet")
@MultipartConfig

public class CompaniesServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int CompanyId = Integer.parseInt(request.getParameter("CompanyId"));
		String CompanyName = request.getParameter("CompanyName");
		String Title= request.getParameter("Title");
		String Description = request.getParameter("Description");
		String Location = request.getParameter("Location");
		String Salary = request.getParameter("Salary");
		String Email = request.getParameter("Email");

		CompanyDetails us = new CompanyDetails(CompanyId, CompanyName, Title,Description, Location, Salary,Email);

		CompanyEntry dao = new CompanyEntry(DBConnect.getConn());
		boolean y = dao.addCandidate(us);

		if (y) {

			HttpSession session = request.getSession();
			session.setAttribute("reg-sucess", "Register Sucessfully :)");
			response.sendRedirect("admin.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("reg-fail", "Register not Sucessful  :(");
			response.sendRedirect("Company.jsp");

		}

	}
}
