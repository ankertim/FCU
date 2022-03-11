package Alien;

public class AlienPack extends Alien{
	
	private Alien aliens[];
	
	/*constructor method*/
	public AlienPack(int num) {
		
		aliens = new Alien[num];
	}

	/*�N�~�P�H�[��}�C*/
	public void addAlien(Alien obj, int index) {
		
		aliens[index] = obj;
	}
	
	/*getAliens method*/
	public Alien[] getAliens() {
		
		return aliens;
	}
	
	/*�^�ǰ}�C���Ҧ��~�P�H���`�ˮ`*/
	public int calculateDamage() {
		
		int sum = 0;
		for(int i = 0; i < aliens.length; i++) {
			
			sum += aliens[i].getDamage();
		}
		
		return sum;
	}
}
