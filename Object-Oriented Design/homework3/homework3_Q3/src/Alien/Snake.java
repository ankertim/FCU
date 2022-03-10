package Alien;

public class Snake extends Alien{

	/*constructor method*/
	public Snake() {
		
	}
	public Snake(String name, int health) {
		
		super(name, health);
	}
	
	/*getDamage method*/
	public int getDamage() {
		
		return 10;
	}
}
