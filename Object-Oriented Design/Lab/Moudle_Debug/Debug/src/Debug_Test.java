import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.util.Scanner;

public class Debug_Test {
	
	public static void main(String[] args) {

		/* Get keyboard input */
		Scanner keyboardInput;
		keyboardInput = new Scanner(System.in);

		/* Read your input file path from keyboard*/
		System.out.println("Please input your input file path: ");
		String inputFilePath = keyboardInput.nextLine();
		System.out.println("Input file path: " + inputFilePath);
		System.out.println("*************************************");
		
		/* Get file input */
		Scanner fileInput = null;

		/* Handle file not found exception */
		try {

			fileInput = new Scanner(new FileInputStream(inputFilePath));
			
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}
		
		/* Get text-output stream */
		PrintWriter textOutput = null;

		/* Handle file not found exception */
		try {

			textOutput = new PrintWriter(new FileOutputStream("output.txt"));
			
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}

		/* Output all of the content in input file */
		int counter_little = 0;
		int counter_indians = 0;
		
		while (fileInput.hasNext()) {

			String result = fileInput.nextLine();
	
			for( int i = 0, index = 0 ; i < result.length() ; i=index+1 ) {
				
				index = result.indexOf("little", i);
				if( index == -1 ){
					break;
				}
				
				counter_little++;
				
			}
			
			for( int i = 0, index = 0 ; i < result.length() ; i=index+1 ) {
				
				index = result.indexOf("Indians", i);
				
				if( index == -1 ){
					break;
				}
				
				counter_indians++;
				
			}
			result = result.replace("little", "big");
			result = result.replace("Indian", "Taiwanese");
			textOutput.println(result);
			System.out.println(result);
			
		}
		
		System.out.println("The word \"little\" appears " + counter_little);
		System.out.println("The word \"indians\" appears " + counter_indians);
		
		/* Close input and output stream */
		keyboardInput.close();
		fileInput.close();
		textOutput.close();
	}
}
