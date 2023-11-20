package com.DAO;

import java.sql.Connection;

import com.User.StudentProfile;
import com.db.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class StudentProfileDAO {
    @SuppressWarnings("null")
	public static boolean saveStudentProfile(StudentProfile us) {
    	boolean f=false;
        Connection conn = DBConnect.getConn();
        PreparedStatement preparedStatement = null;
        

        try {
            String insertQuery = "INSERT INTO studentprofile (id,name, email, mobile, course,"
            		+ "resume_file, cv_file, graduate_certificate_file, internship_certificate_file, high_school_certificate_file, intermediate_certificate_file, other_certificate_file, projects_file)" + 
            "VALUES ('" + us.getId() + "', '" + us.getName() + "', '" + us.getEmail() + "', '" + us.getMobile() + "', '" + us.getCourse() +  "', '" + us.getResumeFileData() +"', '" + us.getcvFileData() +"', '" + us.getgraduateCertificateData()+"', '" + us.getinternshipCertificateData()+ "', '" + us.getHighSchoolCertificateData() +"', '" + us.getintermediateCertificateData()+ "', '" + us.getotherCertificateData()+ "', '" + us.getprojectsData()+"')";
            preparedStatement.setBlob(6, us.getResumeFileData());
            preparedStatement.setBlob(7, us.getcvFileData());
            preparedStatement.setBlob(8, us.getgraduateCertificateData());
            preparedStatement.setBlob(9, us.getinternshipCertificateData());
            preparedStatement.setBlob(10, us.getHighSchoolCertificateData());
            preparedStatement.setBlob(11, us.getintermediateCertificateData());
            preparedStatement.setBlob(12, us.getotherCertificateData());
            preparedStatement.setBlob(13, us.getprojectsData());

    		Statement statement = conn.createStatement();
    		int i = statement.executeUpdate(insertQuery);
    		if (i == 1) {
    			f = true;
    		}
		} catch (Exception e) {
			e.printStackTrace();
		}

    	return f;
    }
}
