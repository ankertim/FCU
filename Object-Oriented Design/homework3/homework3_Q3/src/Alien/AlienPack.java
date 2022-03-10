package Alien;

public class AlienPack extends Alien{
	
	private Alien aliens[];
	
	/*constructor method*/
	public AlienPack(int num) {
		
		aliens = new Alien[num];
	}

	/*將外星人加到陣列*/
	public void addAlien(Alien obj, int index) {
		
		aliens[index] = obj;
	}
	
	/*getAliens method*/
	public Alien[] getAliens() {
		
		return aliens;
	}
	
	/*回傳陣列內所有外星人的總傷害*/
	public int calculateDamage() {
		
		int sum = 0;
		for(int i = 0; i < aliens.length; i++) {
			
			sum += aliens[i].getDamage();
		}
		
		return sum;
	}
}
