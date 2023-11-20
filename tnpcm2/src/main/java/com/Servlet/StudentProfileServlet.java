package com.Servlet;

import com.DAO.StudentProfileDAO;
import com.User.StudentProfile;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@WebServlet("/StudentProfileServlet")
@MultipartConfig
public class StudentProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve data from the request
            
            String idString = request.getParameter("id");
            int id = Integer.parseInt(idString);
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String course = request.getParameter("course");

            // Create a StudentProfile object
            StudentProfile studentProfile = new StudentProfile(id,name,  email, mobile, course);

            // Handle file uploads
            Part resumePart = request.getPart("resumeFile");
            Part cvPart = request.getPart("cvFile");
            Part graduateCertificatePart = request.getPart("graduateCertificateFile");
            Part internshipCertificatePart = request.getPart("internshipCertificateFile");
            Part highSchoolCertificatePart = request.getPart("highSchoolCertificateFile");
            Part intermediateCertificatePart = request.getPart("intermediateCertificateFile");
            Part otherCertificatePart = request.getPart("otherCertificateFile");
            Part projectsPart = request.getPart("projectsFile");

            // Set file data in the StudentProfile object
            studentProfile.setResumeFilePart(resumePart);
            studentProfile.setCvFilePart(cvPart);
            studentProfile.setGraduateCertificatePart(graduateCertificatePart);
            studentProfile.setInternshipCertificatePart(internshipCertificatePart);
            studentProfile.setHighSchoolCertificatePart(highSchoolCertificatePart);
            studentProfile.setIntermediateCertificatePart(intermediateCertificatePart);
            studentProfile.setOtherCertificatePart(otherCertificatePart);
            studentProfile.setProjectsPart(projectsPart);

            // Save the student profile to the database, including the file data
            boolean result = StudentProfileDAO.saveStudentProfile(studentProfile);

            if (result) {
                response.getWriter().write("Student profile saved successfully.");
            } else {
                response.getWriter().write("Failed to save student profile.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
