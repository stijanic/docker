public class Test01 {
	public static void main(String args[]) {
		MyClass<Integer, Double> object = new MyClass<Integer, Double>(10, 20.0);

		object.showType();
		object.printSquare();
	}
}

class MyClass<T extends Number, V extends Number> {
	T t;
	V v;

	public MyClass(T t) {
		this.t = t;
	}

	public MyClass(T t, V v) {
		this.t = t;
		this.v = v;
	}

	public void showType() {
		System.out.println(t.getClass().getName());
		System.out.println(v.getClass().getName());
	}
	
	public void printSquare() {
		System.out.println(t.doubleValue() * v.doubleValue());
	}
}
