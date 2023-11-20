package com.DAO;

import java.sql.Connection;
import java.sql.Statement;

import com.User.CompanyDetails;

public class CompanyEntry {
    private Connection Conn;

    public CompanyEntry(Connection Conn) {
    	super();
    	this.Conn=Conn;

    }
    public boolean addCandidate(CompanyDetails us)
    {
    	boolean f=false;

    	try {
    		String query = "INSERT INTO `tnpcm`.`company` (`CompanyId`, `CompanyName`, `Title`, `Description`, `Location`, `Salary`, `Email`) VALUES ('"
    		        + us.getCompanyId() + "','" + us.getCompanyName() + "', '" + us.getTitle() + "', '" + us.getDescription() + "', '" + us.getLocation() + "', '"
    		        + us.getSalary() + "','" + us.getEmail() + "')";

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