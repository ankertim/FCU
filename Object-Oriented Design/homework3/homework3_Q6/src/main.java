import code.Person;
import code.Truck;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person[] person = new Person[3];
		Truck[] Truck = new Truck[3];
		person[0] = new Person("Jack");
		Truck[0] = new Truck(person[0], "Audi", 5, 20.2, 4);
		
		
		Truck[1] = new Truck(new Person("Jack"), "Audi", 5, 20.2, 4);
		
		person[2] = new Person("John");
		Truck[2] = new Truck(person[2], "Audi", 5, 16.7, 6);
		
		System.out.println(Truck[0]);
		System.out.println(Truck[1]);
		System.out.println(Truck[2]);
		
		System.out.println();
		System.out.println("Is Truck[0] equals toTruck[1]?  " + Truck[0].equals(Truck[1]));
		System.out.println("Is Truck[1] equals toTruck[2]?  " + Truck[1].equals(Truck[2]));
		
	}
}
