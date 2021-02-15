import java.util.Arrays;
import java.util.List;

public class Lambda07 {
	public static void main(String args[]) {
		List<Person> people = Arrays.asList(
				new Person("Charles", "Dickens", 60),
				new Person("Lewis", "Carroll", 42),
				new Person("Thomas", "Carlyle", 51),
				new Person("Charlotte", "Bronte", 45),
				new Person("Matthew", "Arnold", 39)
				);
		
		// Streaming of collection
		people.stream()
		.filter(p -> p.getLastName().startsWith("C"))
		.forEach(p -> System.out.println(p.getFirstName()));

		long count = people.stream()
		.filter(p -> p.getLastName().startsWith("C"))
		.count();
		System.out.println(count);

		long parallelCount = people.parallelStream() // can run on multiple cores in //
		.filter(p -> p.getLastName().startsWith("C"))
		.count();
		System.out.println(parallelCount);
}
}