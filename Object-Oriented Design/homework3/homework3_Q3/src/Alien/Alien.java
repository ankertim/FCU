package Alien;

public class Alien {

	private String name;
	private int health;
	
	/*constructor method*/
	public Alien() {
		
	}
	public Alien(String name, int health) {
		
		this.name = name;
		this.health = health;
	}
	/*accessor method*/
	public String getName() {
		
		return this.name;
	}
	
	public int getHealth() {
		
		return this.health;
	}
	/*mutator method*/
	public void setName(String name) {
		
		this.name = name;
	}
	
	public void setHealth(int health) {
		
		this.health = health;
	}
	
	/*toString method*/
	public String toString() {
		
		return "Name: " + String.format("%-20s", this.name)
				+"Health: " + String.format("%-5s", this.health)
				+"Damage: " + String.format("%-5s", this.getDamage());
	}
	
	/*getDamage method*/
	public int getDamage() {
		
		return 0;
	}
}
