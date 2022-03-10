package student;

public class LocalStudent extends Student{

	private String pid;
	
	/*Constructors*/
	public LocalStudent() {
		
		pid = "N/A";
	}
	
	public LocalStudent(String id, String name, String sclass, int grade, String pid) {
		
		super(id, name, sclass, grade);
		
		this.pid = pid;
	}
	
	/*Mutator and accessor methods*/
	public String getPid() {
		
		return pid;
	}

	public void setPid(String pid) {
		
		this.pid = pid;
	}
	
	/* Output information of this object */
	public String toString() {
		
		return super.toString() + ", PID: " + pid;
	}
	
	/*Implemented method*/
	@Override
	public String greet() {
		
		return "近來可好?";
	}
	
	@Override
	public String getID() {
		
		return pid;
	}
	
	public boolean equals(Object object) {
		
		if(object == null) {
			
			System.out.println("The passed object is null!");
			return false;
		}
		else if(getClass() != object.getClass()) {
			
			System.out.println("Cannot cast passed object to specific type!");
			return false;
		}
		else {
			
			LocalStudent student = (LocalStudent) object;
			return this.pid == student.pid;
		}

	}
}
