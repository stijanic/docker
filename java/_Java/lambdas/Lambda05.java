import java.util.function.Consumer;

public class Lambda05 {
	static String text = "Hello!";
	
	public static void main(String args[]) {
		String text = "Hello!";

		Thread t1 = new Thread(() -> printMessage());
		Thread t2 = new Thread(Lambda05::printMessage);
		
		t1.start();
		t2.start();

		perform(text, System.out::println);
		perform(text, (v) -> System.out.println(v));
	}

	public static void printMessage() {
		System.out.println(text);
	}

	private static void perform(String text, Consumer<String> consumer) {
		consumer.accept(text);
	}
}

