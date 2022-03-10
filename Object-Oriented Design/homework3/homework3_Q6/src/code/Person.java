package code;

public class Person {

	private String name;
	
	/*constructer mathod*/
	public Person() {
		
	}
	
	public Person(String name) {
		
		this.name = name;
	}
	public Person(Person obj) {
		
		this.name = obj.name;
	}
	
	/*accessor method*/
	public String getName() {
		
		return this.name;
	}
	
	/*mutator method*/
	public void setName(String name) {
		
		this.name = name;
	}
	
	/*toString method*/
	public String toString() {
		
		return this.name;
	}
	
	/*equals method*/
	public boolean equals(Person obj) {
		
		return this.name == obj.name;
	}
}
