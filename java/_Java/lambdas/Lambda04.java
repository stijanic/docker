public class Lambda04 {
	
	public static void main(String args[]) {
		Lambda04 lambda04 = new Lambda04();
		
		// Anonymous inner class
		lambda04.process(10, new Process() {
			
			@Override
			public void process(int i) {
				System.out.println("while calling process from inner class it says: Value of i is " + i + ".");
				System.out.println(this);
			}

			public String toString() {
				return "I am an anonymous inner class...";
			}
		});
		
		// Lambda function can't access this reference from class method
		lambda04.process(10, i -> {
			System.out.println("while calling process from inner class it says: Value of i is " + i + ".");
			//System.out.println(this); // Lambda can't access this reference
		});
		
		lambda04.execute();
	}

	// Lambda function can access this reference from instance method
	public void execute() {
		process(10, i -> {
			System.out.println("while calling process from execute it says: Value of i is " + i + ".");
			System.out.println(this);
		});
	}

	public void process(int i, Process p) {
		p.process(i);
	};
	
	public String toString() {
		return("I am the class " + this.getClass().getName() + "...");
	}
}

