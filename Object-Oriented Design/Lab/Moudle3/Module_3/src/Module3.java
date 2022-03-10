import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.util.Scanner;
public class Module3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner keyboardinput=new Scanner(System.in);
		System.out.println("Please input the path of side file 1: ");
		String inputfilepath1 = keyboardinput.nextLine();
		System.out.println("Please input the path of side file 2: ");
		String inputfilepath2 = keyboardinput.nextLine();
		
		Scanner fileInput1 = null;
		try {

			fileInput1 = new Scanner(new FileInputStream(inputfilepath1));
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}
		Scanner fileInput2 = null;
		try {

			fileInput2 = new Scanner(new FileInputStream(inputfilepath2));
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}

		System.out.println("File path 1 is "+inputfilepath1);
		System.out.println("File path 2 is "+inputfilepath2);
		String outputfilepath = keyboardinput.nextLine();
		PrintWriter textOutput=null;
		try {

			textOutput = new PrintWriter(new FileOutputStream(outputfilepath));
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}
		String a1=null,a2=null;
		while(fileInput1.hasNext()) {
			a1=fileInput1.nextLine();
			while(fileInput2.hasNext()) {
				a2=fileInput2.nextLine();
				if(a1==a2) {
					textOutput.println(a1);
				}
			}
		}
		fileInput1.close();
		fileInput2.close();
		textOutput.close();
	}

}
