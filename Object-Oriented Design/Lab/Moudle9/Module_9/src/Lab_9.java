import student.ForeignStudent;
import student.LocalStudent;
import student.Student;

public class Lab_9 {

	public static void main(String[] args) {

		Student[] localStudents = new Student[4];
		Student[] foreignStudentgs = new Student[4];
		
		localStudents[0] = new LocalStudent("D0014587", "ken", "��T�G��", 85, "M457896541");
		localStudents[1] = new LocalStudent("D0014578", "amy", "��T�@��", 65, "F445544665");
		localStudents[2] = new LocalStudent("D0014564", "andy", "��T�G��", 75, "A457789455");
		localStudents[3] = new LocalStudent("D0015465", "alan", "��T�T��", 70, "C457789455");
		
		foreignStudentgs[0] = new ForeignStudent("D0024785", "harry", "��T�T�A", 70, "CC123457897", "America");
		foreignStudentgs[1] = new ForeignStudent("D0021879", "ivy", "��T�G��", 80, "ED127889874", "America");
		foreignStudentgs[2] = new ForeignStudent("D0024785", "ian", "��T�T��", 75, "EC123457897", "China");
		foreignStudentgs[3] = new ForeignStudent("D0026542", "sandy", "��T�|��", 60, "AD127889874", "Vietnam");
		
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
		
		System.out.println();
		
		System.out.println("Cannot cast passed object to specific type!");
		
		System.out.println("Is localStudents[0] equal to localStudents[1]?" + localStudents[0].equals(localStudents[1]) );
		System.out.println("Is foreignStudents[1] equal to foreignStudents[3]?" + foreignStudentgs[1].equals(foreignStudentgs[3]) );
	}
	
	public static void sort(Student[] students) {
		
        for( int i = 0 ; i < students.length - 1 ; i++ ) {
			
			for( int j = 0 ; j < students.length - 1 - i ; j++ ) {
				
				/*Also, we can replace precedes(object) with follows(object)*/
				if( students[j].compareByID(students[j+1]) > 0 ) {
					
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
