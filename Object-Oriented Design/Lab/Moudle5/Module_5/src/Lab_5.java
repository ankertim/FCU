
public class Lab_5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Student student_1=new Student("May","d0050578","1A","Chinese");
		Student student_2=new Student("May","d0050578","1C","IECS");
		Student student_3=new Student("Alley","d0058798","2A","Finance");
		
		if(student_1.equals(student_2)) {
			
			System.out.println("Student 1 is equal to Student 2 ");
		}
		else {
			System.out.println("Student 1 is not equal to Student 2 ");
		}
		
		System.out.println(student_1);
		System.out.println(student_2);
		System.out.println();
		
        if(student_2.equals(student_3)) {
			
			System.out.println("Student 2 is equal to Student 3 ");
		}
		else {
			
			System.out.println("Student 2 is not equal to Student 3 ");
		}
        
		System.out.println(student_2);
		System.out.println(student_3);
        System.out.println();
        
        student_1.sClass = "1C";
        student_1.department = "IECS";
        
        System.out.println("My changed her mayjor from Chinese to IECS!\n"+student_1);
	}

}
