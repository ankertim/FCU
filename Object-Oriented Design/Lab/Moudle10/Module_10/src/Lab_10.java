import student.ForeignStudent;
import student.LocalStudent;
import student.Student;

public class Lab_10 {

	public static void main(String[] args) {

		Student[] localStudents = new Student[3];
		Student[] foreignStudentgs = new Student[3];
		Student nobody = null;
		
		localStudents[0] = new LocalStudent("D0015465", "alan", "資訊三丙", 70, "C457789455");
		localStudents[1] = new LocalStudent("D0014578", "amy", "資訊一甲", 65, "F445544665");
		localStudents[2] = new LocalStudent("D0014564", "andy", "資訊二甲", 75, "A457789455");
		
		foreignStudentgs[0] = new ForeignStudent("D0024785", "harry", "資訊三乙", 70, "CC123457897", "America");
		foreignStudentgs[1] = new ForeignStudent("D0021879", "ivy", "資訊二甲", 80, "ED127889874", "America");
		foreignStudentgs[2] = new ForeignStudent("D0026542", "sandy", "資訊四丙", 60, "AD127889874", "Vietnam");
		
		/*Sorting local students*/
		System.out.println("################");
		System.out.println("Before sorting local students...");
		System.out.println("################\n");
		
		showStudents(localStudents);
		sort(localStudents);
		
		System.out.println("\n################");
		System.out.println("After sorting local students...");
		System.out.println("################\n");

		showStudents(localStudents);
		
		/*Sorting foreign students*/
		System.out.println("\n################");
		System.out.println("Before sorting foreign students...");
		System.out.println("################\n");
		
		showStudents(foreignStudentgs);
		sort(foreignStudentgs);
		
		System.out.println("\n################");
		System.out.println("After sorting foreign students...");
		System.out.println("################\n");

		showStudents(foreignStudentgs);
		
		/*Demo general error handling*/
		System.out.println("\n--------------------general error handling-----------------------");
		System.out.println("Is localStudents[0] equal to nobody? " 		 + localStudents[0].equals(nobody));
		System.out.println("Is localStudents[0] equal to foreignStudentgs[0]? " + localStudents[0].equals(foreignStudentgs[0]));
		/*Demo exception mechanism*/
		System.out.println("\n-----------------------exception mechanism-----------------------");
		System.out.println("Is foreignStudentgs[0] equal to nobody? " + foreignStudentgs[0].equals(nobody));
		System.out.println("Is foreignStudentgs[0] equal to localStudents[0]? " + foreignStudentgs[0].equals(localStudents[0]));

	}
	

    public static void sort(Student[] students) {
		
        for( int i = 0 ; i < students.length - 1 ; i++ ) {
			
			for( int j = 0 ; j < students.length - 1 - i ; j++ ) {
				
				/*Also, we can replace precedes(object) with follows(object)*/
				if( students[j].compareByID(students[j+1]) < 0 ) {
					
					swap(students, j, j+1);
				}
			}
		}
	}
	
	private static void swap(Student[] students, int index_1, int index_2){
        
		Student temp = students[index_1];
		students[index_1] = students[index_2];
		students[index_2] = temp;
    }
	
	public static void showStudents(Student[] students) {
		
		for( int i = 0 ; i < students.length ; i++ ) {
			
			System.out.println("***************" + students[i].getClass().getSimpleName() + "***************");
			System.out.println(students[i]);
			System.out.println("The student say hello to you. \"" + students[i].greet() + "\"");
		}
	}
}
