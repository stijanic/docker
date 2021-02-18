import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class Test01 {
	public static void main(String args[]) {
		List<Person> people = new ArrayList<>();
		
		people.add(new Person("Warren Buffett", 120));
		people.add(new Person("Jeff Bezos", 150));
		people.add(new Person("Bill Gates", 100));
		people.add(new Person("Mark Zuckerberg", 50));
		
		List<Person> hunderedClub = new ArrayList<>();
		
		for(Person p : people) {
			if(p.billions >= 50) {
				hunderedClub.add(p);
			}
		}
		hunderedClub.forEach(person -> System.out.println(person.name));
		
		List<Person> sortedHunderedClub = people.stream()
			.filter(person -> person.billions >= 100)
			.sorted(Comparator.comparing(person -> person.name))
			.collect(Collectors.toList());
		sortedHunderedClub.forEach(person -> System.out.println(person.name));
	}
}

class Person {
	String name;
	int billions;
	
	public Person(String name, int billions) {
		this.name = name;
		this.billions = billions;
	}
}
