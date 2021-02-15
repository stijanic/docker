import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class Lambda01 {
	public static void main(String args[]) {
		List<Person> people = Arrays.asList(
				new Person("Charles", "Dickens", 60),
				new Person("Lewis", "Carroll", 42),
				new Person("Thomas", "Carlyle", 51),
				new Person("Charlotte", "Bronte", 45),
				new Person("Matthew", "Arnold", 39)
				);
	
		Collections.sort(people, (p1, p2) -> p1.getLastName().compareTo(p2.getLastName()));

		System.out.println("\nPrinting all people");
		performConditionally(people, p -> true, p -> System.out.println(p));

		System.out.println("\nPrinting all people with last names starting with C");
		performConditionally(people, p -> p.getLastName().startsWith("C"), p -> System.out.println(p.getLastName()));
		
		System.out.println("\nPrinting all people with first names starting with C");
		performConditionally(people, p -> p.getFirstName().startsWith("C"), p -> System.out.println(p.getFirstName()));
	}
	
	private static void performConditionally(List<Person> people, Predicate<Person> predicate, Consumer<Person> consumer) {
		for (Person p: people) {
			if (predicate.test(p)) {
				consumer.accept(p);
			}
		}
	}
}

class Person {
	String firstName;
	String lastName;
	int age;
	
	public Person(String firstName, String lastName, int age) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Person [firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + "]";
	}
}