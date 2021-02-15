public class Lambda03 {
	
	public static void main(String args[]) {
		int a = 10;
		int b = 20; // final not required since Java 8 - it's effectively final
		
		// Without lambda
		process(a, new Process() {
			@Override
			public void process(int i) {
				// b = 40; // final or effectively final variable can't be changed
				System.out.println(i + b);
			}
		});
		
		// With lambda
		process(a, i -> System.out.println(i + b));
	}
	
	public static void process(int i, Process p) {
		p.process(i);
	};
}

interface Process {
	void process(int i);
}