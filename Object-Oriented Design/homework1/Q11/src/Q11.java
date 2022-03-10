import java.text.DecimalFormat;
import java.util.Scanner;

public class Q11 {
	public static void main(String[] args) {
		class grade{
			String name;
			int score;
			int total_posibble;
		}
		
		Scanner keyboard=new Scanner(System.in);
		grade a=new grade();
		grade b=new grade();
		grade c=new grade();
		
		System.out.println("Name of exercise 1:");
		a.name=keyboard.nextLine();
		System.out.println("Score received for exercise 1:");
		a.score=keyboard.nextInt();
		System.out.println("Total points possible for exercise 1:");
		a.total_posibble=keyboard.nextInt();
		keyboard.nextLine();
		
		System.out.println("Name of exercise 2:");
		b.name=keyboard.nextLine();
		System.out.println("Score received for exercise 2:");
		b.score=keyboard.nextInt();
		System.out.println("Total points possible for exercise 2:");
		b.total_posibble=keyboard.nextInt();
		keyboard.nextLine();
		
		System.out.println("Name of exercise 3:");
		c.name=keyboard.nextLine();
		System.out.println("Score received for exercise 3:");
		c.score=keyboard.nextInt();
		System.out.println("Total points possible for exercise 3:");
		c.total_posibble=keyboard.nextInt();
		keyboard.nextLine();
		
		String E="Exercise",S="Scoare",TP="Total Possible",T="Total";
		int subscore= a.score+b.score+c.score,subtotalpossible= a.total_posibble+b.total_posibble+c.total_posibble;
		DecimalFormat df=new DecimalFormat("0.00%");
		double totalpercent=(double)subscore/subtotalpossible;

		System.out.printf("\n%-20s%-20s%-20s\n",E,S,TP);
		System.out.printf("%-20s%-20d%-20d\n",a.name,a.score,a.total_posibble);
		System.out.printf("%-20s%-20d%-20d\n",b.name,b.score,b.total_posibble);
		System.out.printf("%-20s%-20d%-20d\n",c.name,c.score,c.total_posibble);
		System.out.printf("%-20s%-20d%-20d\n\n",T,subscore,subtotalpossible);
		System.out.println("Your total is "+subscore+" out of "+subtotalpossible+", or "+df.format(totalpercent));
	}
}
