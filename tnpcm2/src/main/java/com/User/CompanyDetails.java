package com.User;

public class CompanyDetails {
	private int CompanyId;
	private String CompanyName;
	private String Title;
	private String Description;
	private String Location;
	private String Salary;
	private String Email;

	public CompanyDetails() {
		super();
	}

	public CompanyDetails( int CompanyId,String CompanyName, String Title, String Description, String Location, String Salary,
			String Email) {
		super();
		this.CompanyId= CompanyId;
		this.CompanyName = CompanyName;
		this.Title = Title;
		this.Description = Description;
		this.Location = Location;
		this.Salary = Salary;
		this.Email = Email;
	}
	
	public int getCompanyId() {
		return CompanyId;
	}
	
	public void setCompanyId(int CompanyId) {
		this.CompanyId = CompanyId;
	}

	public String getCompanyName() {
		return CompanyName;
	}

	public void setCompanyName(String CompanyName) {
		this.CompanyName = CompanyName;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String Title) {
		this.Title = Title;
	}

	

	public String getDescription() {
		return Description;
	}

	public void setDescription(String Description) {
		this.Description = Description;
	}

	public String getLocation() {
		return Location;
	}

	public void setLocation(String Location) {
		this.Location = Location;
	}

	public String getSalary() {
		return Salary;
	}

	public void setSalary(String Salary) {
		this.Salary = Salary;
	}
	
	public String getEmail() {
		return Email;
	}

	public void setEmail(String Email) {
		this.Email = Email;
	} 

	

}
