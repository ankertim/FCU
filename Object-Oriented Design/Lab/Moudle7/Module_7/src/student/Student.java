package student;

public class Student {

	/* Instance variables */
	private String sid;
	private String name;
	protected String sclass;
	private double grade;

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
	public boolean equals(Student student) {

		return sid.equals(student.sid) 
				&& name.equals(student.name) 
				&& sclass.equals(student.sclass)
				&& grade == student.grade;
	}

	/* Output information of instance variables */
	public String toString() {

		return ("SID: " + sid + ", Name: " + name + ", Class: " + sclass + ", Grade: " + grade);
	}
}
