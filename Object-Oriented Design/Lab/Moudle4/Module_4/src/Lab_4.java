
public class Lab_4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Student s1=new Student();
		Student s2=new Student();
		
		s1.name = "May";
		s1.setSid("d0050578");
		s1.setSClass("1A");
		s1.setDepartment("Chinese");
		s2.setSdudent("Ken","d0054789","1B","IECS");
		System.out.println(s1);
		System.out.println(s2);
		s1.setSClass("1C");
		s1.setDepartment("Finance");
		System.out.println(s1);
		if(s1.equals(s2)) {
			System.out.println("Student 1 is equal to Student 2 ");
		}
		else {
			System.out.println("Student 1 is not equal to Student 2 ");
		}
	}

}
