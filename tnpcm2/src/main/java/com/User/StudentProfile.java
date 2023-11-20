package com.User;
import javax.servlet.http.Part;

import java.io.InputStream;

public class StudentProfile {
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}
	
	

    public InputStream getResumeFileData() {
        return resumeFileData;
    }

    public void setResumeFileData(InputStream resumeFileData) {
        this.resumeFileData = resumeFileData;
    }
    
    public InputStream getcvFileData() {
        return cvFileData;
    }

    public void setcvFileData(InputStream cvFileData) {
        this.cvFileData = cvFileData;
    }
    
    public InputStream getgraduateCertificateData() {
        return graduateCertificateData;
    }

    public void setgraduateCertificateData(InputStream graduateCertificateData) {
        this.graduateCertificateData= graduateCertificateData;
    }
    
    public InputStream getinternshipCertificateData() {
        return internshipCertificateData;
    }

    public void setinternshipCertificateData(InputStream internshipCertificateData) {
        this.internshipCertificateData= internshipCertificateData;
    }
    

    public InputStream getintermediateCertificateData() {
        return intermediateCertificateData;
    }

    public void setintermediateCertificateData(InputStream intermediateCertificateData) {
        this.intermediateCertificateData= intermediateCertificateData;
    }
    
    public InputStream getotherCertificateData() {
        return otherCertificateData;
    }

    public void setotherCertificateData(InputStream otherCertificateData) {
        this.otherCertificateData= otherCertificateData;
    }
    
    public InputStream getprojectsData() {
        return projectsData;
    }

    public void setprojectsData(InputStream projectsData) {
        this.projectsData= projectsData;
    }
    
    public InputStream getHighSchoolCertificateData() {
		return highSchoolCertificateData;
	}

	public void setHighSchoolCertificateData(InputStream highSchoolCertificateData) {
		this.highSchoolCertificateData = highSchoolCertificateData;
	}
	
	public void setResumeFilePart(Part resumeFilePart) {
        this.resumeFilePart = resumeFilePart;
    }

    public void setCvFilePart(Part cvFilePart) {
        this.cvFilePart = cvFilePart;
    }

    public void setGraduateCertificatePart(Part graduateCertificatePart) {
        this.graduateCertificatePart = graduateCertificatePart;
    }

    public void setInternshipCertificatePart(Part internshipCertificatePart) {
        this.internshipCertificatePart = internshipCertificatePart;
    }

    public void setHighSchoolCertificatePart(Part highSchoolCertificatePart) {
        this.highSchoolCertificatePart = highSchoolCertificatePart;
    }

    public void setIntermediateCertificatePart(Part intermediateCertificatePart) {
        this.intermediateCertificatePart = intermediateCertificatePart;
    }

    public void setOtherCertificatePart(Part otherCertificatePart) {
        this.otherCertificatePart = otherCertificatePart;
    }

    public void setProjectsPart(Part projectsPart) {
        this.projectsPart = projectsPart;
    }

    
    
    private int id;
	private String name;
   
    private String email;
    private String mobile;
    private String course;
    
    private InputStream resumeFileData;
    private InputStream cvFileData;
    private InputStream graduateCertificateData;
    private InputStream internshipCertificateData;
    private InputStream highSchoolCertificateData;
    private InputStream intermediateCertificateData;
    private InputStream otherCertificateData;
    private InputStream projectsData;
    
    
	
	  private Part resumeFilePart; 
	  private Part cvFilePart; 
	  private Part graduateCertificatePart; 
	  private Part internshipCertificatePart; 
	  private Part highSchoolCertificatePart; 
	  private Part intermediateCertificatePart; 
	  private Part otherCertificatePart; private Part projectsPart;
	 

    public StudentProfile() {
		super();
	}

	public StudentProfile(int id,String name,  String email, String mobile, String course) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.course = course;
		
    		
		
}

	
}
