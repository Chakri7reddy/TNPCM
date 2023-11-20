package com.DAO;

import java.sql.Connection;
import java.sql.Statement;

import com.User.StudentDetails;

public class StudentEntry {
    private Connection Conn;

    public StudentEntry(Connection Conn) {
    	super();
    	this.Conn=Conn;

    }
    public boolean addCandidate(StudentDetails us)
    {
    	boolean f=false;

    	try {
    		String query = "INSERT INTO `tnpcm`.`student` (`Id`, `Name`, `E-mail`, `Gender`, `Course`, `Specialization`, `Mobile`) VALUES ('"
    		        + us.getId() + "','" + us.getName() + "', '" + us.getEmail() + "', '" + us.getGender() + "', '" + us.getCourse() + "', '"
    		        + us.getSpecialization() + "','" + us.getMobile() + "')";


    		Statement statement = Conn.createStatement();
    		int i = statement.executeUpdate(query);
    		if (i == 1) {
    			f = true;
    		}
		} catch (Exception e) {
			e.printStackTrace();
		}

    	return f;
    }
}