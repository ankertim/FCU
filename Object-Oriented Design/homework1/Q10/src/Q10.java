import java.util.Scanner; 

public class Q10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner keyboard=new Scanner(System.in);
		String name1,name2,name3;
		double quantity1,quantity2,quantity3;
		double price1,price2,price3;
			System.out.println("Input name of item 1 :");
			name1=keyboard.nextLine();
			System.out.println("Input quantity of item 1 :");
			quantity1=keyboard.nextDouble();
			System.out.println("Input price of item 1 :");
			price1=keyboard.nextDouble();
			keyboard.nextLine();//存入上行遺留的空白
			
			System.out.println("Input name of item 2 :");
			name2=keyboard.nextLine();
			System.out.println("Input quantity of item 2 :");
			quantity2=keyboard.nextDouble();
			System.out.println("Input price of item 2 :");
			price2=keyboard.nextDouble();
			keyboard.nextLine();
			
			System.out.println("Input name of item 3 :");
			name3=keyboard.nextLine();
			System.out.println("Input quantity of item 3 :");
			quantity3=keyboard.nextDouble();
			System.out.println("Input price of item 3 :");
			price3=keyboard.nextDouble();
			
			Double total1,total2,total3,subtotal,sale,Total;
			total1=quantity1*price1;
			total2=quantity2*price2;
			total3=quantity3*price3;
			subtotal=total1+total2+total3;
			sale=subtotal*6.25/100;
			Total=subtotal+sale;
			System.out.println("\nYour bill : \n");
			String I="Item",Q="Quantity",P="Price",T="Total",S="Subtotal",sale_tax="6.25% sales tax";
			System.out.printf("%-30s%-10s%-10s%-10s\n",I,Q,P,T);
			System.out.printf("%-30s%-10.0f%-10.2f%-10.2f\n",name1,quantity1,price1,total1);
			System.out.printf("%-30s%-10.0f%-10.2f%-10.2f\n",name2,quantity2,price2,total2);
			System.out.printf("%-30s%-10.0f%-10.2f%-10.2f\n\n",name3,quantity3,price3,total3);
			System.out.printf("%-50s%-10.2f\n",S,subtotal);
			System.out.printf("%-50s%-10.2f\n",sale_tax,sale);
			System.out.printf("%-50s%-10.2f\n",T,Total);
			
	}

}
