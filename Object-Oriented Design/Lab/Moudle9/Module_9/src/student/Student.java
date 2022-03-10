package student;

public abstract class Student {

	/* Instance variables */
	private String sid;
	private String name;
	private double grade;
	protected String sclass;
	
	/* Constructors */
	public Student() {

		this.sid = "N/A";
		this.name = "N/A";
		this.sclass = "N/A";
		this.grade = 0;
	}

	public Student(String id, String name, String sclass, double grade) {

		this.sid = id;
		this.name = name;
		this.sclass = sclass;
		this.grade = grade;
	}

	/* Accessor and mutator methods */
	public void setSid(String id) {

		this.sid = id;
	}

	public void setName(String name) {

		this.name = name;
	}

	public void setClass(String sclass) {

		this.sclass = sclass;
	}

	public void setGrade(double grade) {

		this.grade = grade;
	}

	public String getSid() {

		return sid;
	}

	public String getName() {

		return name;
	}

	public String getSClass() {

		return sclass;
	}

	public double getGrade() {

		return grade;
	}

	/* Comparison method */
	public boolean equals(Object object) {
		
		if( object == null ) {
			
			System.out.println("The passed object is null!");
			return false;
		}
		
		if( getClass() != object.getClass() ) {
			
			System.out.println("Cannot cast passed object to specific type!");
			return false;
		}
		
		Student student = (Student) object;
		
		return sid.equals(student.sid) && name.equals(student.name) && sclass.equals(student.sclass) && grade == student.grade;
	}
	
	/* Output information of instance variables */
	public String toString() {

		return ("SID: " + sid + ", Name: " + name + ", Class: " + sclass + ", Grade: " + grade);
	}
	
	/*Greeting method*/
	abstract public String greet();
	
	/*getID method*/
	abstract public String getID();
	
	public int compareByID(Student student) {
		
		return this.getID().compareTo(student.getID());
	}
}
