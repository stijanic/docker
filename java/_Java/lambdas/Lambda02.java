import java.util.function.BiConsumer;

public class Lambda02 {
	
	public static void main(String args[]) {
		int[] someNumbers = { 1, 2, 3, 4 };
		int key = 0;
		
		// Without Lambda wrapper
		process(someNumbers, key, (v, k) -> {
			try {
				System.out.println(v / k);
			} catch (ArithmeticException e) {
				System.out.println("An Arithmetic exception occured...");
			}
		});

		// With Lambda wrapper
		process(someNumbers, key, wrapperLambda((v, k) -> System.out.println(v / k)));
	}
	
	// Calls lambda on all members of someNumbers array
	public static void process(int[] someNumbers, int key, BiConsumer<Integer, Integer> consumer) {
		for (int i: someNumbers) {
			consumer.accept(i, key);
		}
	}
	
	// Wraps our BiConsumer lambda into try/catch
	private static BiConsumer<Integer, Integer> wrapperLambda(BiConsumer<Integer, Integer> consumer) {
		return (v, k) -> {
			try {
				consumer.accept(v, k);
			} catch (ArithmeticException e) {
				System.out.println("An Arithmetic exception occured...");
			}
		};
	}
}