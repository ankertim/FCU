package test;
public class HotDogStand {

	private static int totalSold;
	private String standName;
	private int sold;
	
	public HotDogStand() {
		
		this.standName = "N/A";
	}
	
	public HotDogStand(String standname) {
		
		this.standName = standname;
	}
	
	public String getStandName() {
		
		return this.standName;
	}
	
	public void setStandName(String standname) {
		
		this.standName = standname;
	}
	
	public int getSold() {
		
		return this.sold;
	}
	
	public void setSold(String sold) {
		
		this.standName = sold;
	}
	
	public void justSold(int n) {
		
		if(n>0) {
			this.sold += n;
			totalSold += n;
		}
	}
	
	public static int getTotalSold() {
		
		return totalSold;
	}
	
	public String toString() {
		return "Stand Name: " + this.standName + "\tSold: " + this.sold;
	}
}
