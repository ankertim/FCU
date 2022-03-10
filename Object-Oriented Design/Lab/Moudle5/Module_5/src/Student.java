
public class Student {
	
	private String name;
	private String sid;
	public String sClass;
	public String department;
	
	public Student() {
		this.name = "N/A";
		this.sid = "N/A";
    	this.sClass = "N/A";
    	this.department = "N/A";
	}
	
	public Student(String n,String si,String sc,String d) {
		this.name = n;
		this.sid = si;
    	this.sClass = sc;
    	this.department = d;
	}
	
	public String getName() {
		
		return this.name;
	}
	
	public String getSid() {
		
		return this.sid;
	}
	
	public void setName(String n) {
		
		this.name = n;
	}
	
    public void setSid(String s) {
		
		this.sid = s;
	}
    
    public boolean equals(Student otherStudent) {
    	
    	return this.name == otherStudent.name && this.sid == otherStudent.sid;
    }
    
    public String toString() {
    	
    	return "Name: "+ this.name + ", SID: " + this.sid + ", Student class: " + this.sClass + ", Department: " + this.department ;
    }
}
