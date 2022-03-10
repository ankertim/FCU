package student;

public class StudentRecord extends Student {

	private double height;
	private double weight;
	
	public StudentRecord() {
		
		this.height = 0;
		this.weight = 0;
	}
	
	public StudentRecord(String id, String name, String sclass, double grade, double height, double weight) {
		
		super(id, name, sclass, grade);
		this.height = height;
		this.weight = weight;
	}
	/*accessor and  mutator methods*/
	public double getHeight() {
		
		return this.height;
	}
	
    public double getWeight() {
		
		return this.weight;
	}
    
    public void setHeight(double height) {
    	
    	this.height = height;
    }
    
    public void setWeight(double weight) {
    	
    	this.weight = weight;
    }
    /* equal*/
    public boolean equals(StudentRecord otherObject) {
    	
    	return super.equals(otherObject) 
    		    && this.height == otherObject.height
    			&& this.weight == otherObject.weight;
    }
    
    public String toString() {
    	
    	return super.toString() + ", Height: " + getHeight() + ", Weight: " + getWeight();
    }
}
