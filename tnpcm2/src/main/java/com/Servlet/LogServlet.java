package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.User.StudentDetails;

@WebServlet("/")
public class LogServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String em = req.getParameter("Email");
            String ps = req.getParameter("password");
            StudentDetails u = new StudentDetails();
            HttpSession session = req.getSession();

            if ("admin@gmail.com".equals(em) && "admin@121".equals(ps)) {
                session.setAttribute("userobj", u);
                resp.sendRedirect("admin.jsp");
            } else {
                // Handle other cases or provide a response here
                resp.sendRedirect("studentprofile.jsp"); 
            }
        } catch(Exception e){
            e.printStackTrace();
        }
    }
}
