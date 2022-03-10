import student.Student;
import student.StudentRecord;

public class Lab_8 {

	public static void main(String[] args) {

		StudentRecord student_1 = new StudentRecord("D02020202", "john", "資訊二甲", 80, 170, 70);
		StudentRecord student_2 = new StudentRecord("D03030303", "mary", "資訊一乙", 85, 160, 45);
		StudentRecord johnCopy = new StudentRecord(student_1);
		
		showStudent(student_1);
		showStudent(johnCopy);
		showStudent(student_2);
		
		System.out.println("\nIs john equal to johnCopy? " + student_1.equals(johnCopy));
		System.out.println("Is john equal to mary? " + student_1.equals(student_2));
	}
	
	public static void showStudent(Student student) {
		
		System.out.println("***************");
		System.out.println(student);
	}
}

