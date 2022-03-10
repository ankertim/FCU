
public class Student {
	
	public String name;
	private String sid;
	private String sClass;
	private String department;
	
    public String getName() {
		
		return this.name;
	}
    
    public String getSid() {
		
		return this.sid;
	}
    
    public String getsClass() {
		
		return this.sClass;
	}
    
    public String getDepartment() {
		
		return this.department;
	}
    
    public void setName(String name) {
    	this.name = name;
    }
    
    public void setSid(String sid) {
    	this.sid = sid;
    }
    
    public void setSClass(String sClass) {
    	this.sClass = sClass;
    }
    
    public void setDepartment(String department) {
    	this.department = department;
    }
    
    public void setSdudent(String n,String sid,String sclass,String d) {
    	
    	this.name=n;
    	this.sid=sid;
    	this.sClass=sclass;
    	this.department=d;
    }
    
    public boolean equals(Student otherStudent) {
    	return this.name == otherStudent.name && this.sid == otherStudent.sid;
    }
    
	public String toString() {
		
		return "Name: "+ this.name + ", SID: " + this.sid + ", Student class: " + this.sClass + ", Department: " + this.department ;
	}
	
}
