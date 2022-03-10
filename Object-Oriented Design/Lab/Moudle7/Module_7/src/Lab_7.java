import student.StudentRecord;

public class Lab_7 {

	public static void main(String[] args) {

		StudentRecord studentArr[] = new StudentRecord[3];
		studentArr[0] = new StudentRecord("D02020202", "John", "資訊二甲", 80, 170, 70);
		studentArr[1] = new StudentRecord("D02020202", "John", "資訊二甲", 80, 170, 70);
		studentArr[2] = new StudentRecord("D03030303", "Mary", "資訊一乙", 85, 160, 45);
		
        for( int i = 0 ; i < studentArr.length ; i++ ) {
			
			System.out.println(studentArr[i]);
			System.out.println("===================================================");
		}
        
        System.out.println("Is studentArr[0] equal to studentArr[1]? " 
                + studentArr[0].equals(studentArr[1]));
        System.out.println("Is studentArr[1] equal to studentArr[2]? " 
                + studentArr[1].equals(studentArr[2]));
	}
	
}
