package student;

public class ForeignStudent extends Student {

	private String fid;
	private String country;
	
	/*Constructors*/
	public ForeignStudent() {
		
		fid = "N/A";
	}
	
	public ForeignStudent(String id, String name, String sclass, int grade, String fid, String country) {
		
		super(id, name, sclass, grade);
		
		this.fid = fid;
		this.country = country;
	}
	
	/*Mutator and accessor methods*/
	public void setFid(String fid) {
		
		this.fid = fid;
	}
	
	public String getCountry() {
		
		return country;
	}

	public void setCountry(String country) {
		
		this.country = country;
	}
	
	/* Output information of this object */
	public String toString() {
		
		return super.toString() + ", FID: " + fid + ", Country: " + country;
	}
	
	/*Comparison method*/
	public boolean equals(Object object) {
		
		if( object == null ) {
			
			System.out.println("The passed object is null!");
			return false;
		}
		
		if( getClass() != object.getClass() ) {
			
			System.out.println("Cannot cast passed object to specific type!");
			return false;
		}
		
		ForeignStudent student = (ForeignStudent) object;
		
		return country.equals(student.country);
	}
	
	/*greet method*/
	public String greet() {
		
		return "How do you do?";
	}
	
	/*getID method*/
	public String getID() {
		
		return this.fid;
	}
}
