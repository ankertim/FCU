package code;

public class Truck extends Vehicle{

	private double load;
	private int towing;
	
	/*constructer method*/
	public Truck() {
		
	}
	
	public Truck(Person otherobject, String manfacturer, int cylinders, double load, int towing) {
		
		super(otherobject, manfacturer, cylinders);
		
		this.load = load;
		this.towing = towing;
	}
	
	/*accessor method*/
    public double getLoad() {
		
		return this.load;
	}
    
    public int getTowing() {
		
		return this.towing;
	}
    
    /*mutator method*/
    public void setLoad(double load) {
    	
    	this.load = load;
    }
    
    public void setTowing(int towing) {
    	
    	this.towing = towing;
    }
    
    /*mutator method*/
    public String toString() {
    	
    	return super.toString()
    			+ "Load: " + String.format("%-10.1f", this.load)
    			+ "Towing: "+ String.format("%-5d", this.towing);
    }
    
    /*equals method*/
    public boolean equals(Truck otherobj) {
    	
    	return super.equals(otherobj)
    			&&this.load == otherobj.load
    			&&this.towing == otherobj.towing;
    }
}
