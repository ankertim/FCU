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
	
	/*Implemented method*/
	@Override
	public String greet() {
		
		return "How do you do?";
	}
	
	@Override
	public String getID() {
		
		return fid;
	}
	
     public boolean equals(Object object) {
		
		 try {
			
			  if( object == null ) {
				
				  throw new NullPointerException("The passed object is null!");
			  }
			  else if( getClass() != object.getClass() ) {
				
				  throw new ClassCastException("Cannot cast passed object to specific class type!");
			  }
			  
			  ForeignStudent student = (ForeignStudent) object;	
			  return this.fid == student.fid;
		  }
		  catch( Exception e ) {
			
			  System.out.println("Exception: " + e.getMessage());
			  return false;
		  }
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
