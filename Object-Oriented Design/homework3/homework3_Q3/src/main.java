import Alien.Marshmallow;
import Alien.Orge;
import Alien.Snake;
import Alien.AlienPack;
public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Marshmallow aliens0 = new Marshmallow("MarshmallowMonster", 10);
		Orge aliens1 = new Orge("OrgeMonster", 50);
		Snake aliens2 = new Snake("SnakeMonster", 90);
		
		AlienPack alienPack = new AlienPack(3);
		alienPack.addAlien(aliens0, 0);
		alienPack.addAlien(aliens1, 1);
		alienPack.addAlien(aliens2, 2);
		
		System.out.println("The aliens in this pack are:");
		for(int i = 0; i<alienPack.getAliens().length; i++) {
			
			System.out.println(alienPack.getAliens()[i]);
		}
		
		System.out.println();
		System.out.println("The total damage from this AliensPack is: " + alienPack.calculateDamage());
	}

}
