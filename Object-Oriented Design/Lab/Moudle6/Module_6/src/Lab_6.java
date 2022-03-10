import test.HotDogStand;
public class Lab_6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		HotDogStand stand_01=new HotDogStand("Taipei Branch");
		HotDogStand stand_02=new HotDogStand("Taichung Branch");
		HotDogStand stand_03=new HotDogStand("Kaohsiung Branch ");
		
		stand_01.justSold(5);
		stand_01.justSold(7);
		stand_01.justSold(9);
		
		stand_02.justSold(1);
		stand_02.justSold(4);
		stand_02.justSold(5);
		
		stand_03.justSold(6);
		stand_03.justSold(7);
		stand_03.justSold(9);
		
		System.out.println(stand_01);
		System.out.println(stand_02);
		System.out.println(stand_03);
		
		System.out.println("Total Sold: " + HotDogStand.getTotalSold());

	}

}
