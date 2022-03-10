package code;

public class Vehicle {

	private String manufacturer;
	private int cylinders;
	protected Person person ;  //沒有 = new Person() 好像也可以
	
	/*constructer method*/
	public Vehicle() {
		
	}
	
	public Vehicle(Person otherObject, String manfacturer, int cylinders) {
		
		this.manufacturer = manfacturer;
		this.cylinders = cylinders;
		person = otherObject;
	}
	
	/*acccessor method*/
	public String getManfacturer() {
		
		return this.manufacturer;
	}
	
	public int getCylinders() {
		
		return this.cylinders;
	}
	
	/*mutator method*/
	public void setManfacturer(String manfacturer) {
		
		this.manufacturer = manfacturer;
	}
	
	public void setCylinders(int cylinders) {
		
		this.cylinders = cylinders;
	}
	
	/*toString method*/
	public String toString() {
		
		return "PersonName: " + String.format("%-9s", person.getName())
		         + "Manfacturer: " + String.format("%-6s", this.manufacturer)
		         + "Cylinders: " + String.format("%-6d", this.cylinders);
	}
	
	/*equals method*/
	public boolean equals(Vehicle otherobj) {
		
		return this.manufacturer == otherobj.manufacturer
				&&this.cylinders == otherobj.cylinders
				&&this.person.equals(otherobj.person);
				
	}
}
