public class Test02 {
	public static void main(String args[]) {
		MyNumClass<Integer> object0 = new MyNumClass<Integer>(10);
		MyNumClass<Double> object1 = new MyNumClass<Double>(20.0);

		object0.showType();
		object1.showType();
		object0.printSquare();
		object1.printSquare();
		object0.printAbs(object0);
		object1.printAbs(object1);
	}
}

class MyNumClass<T extends Number> {
	T t;

	public MyNumClass(T t) {
		this.t = t;
	}

	public void showType() {
		System.out.println(t.getClass().getName());
	}
	
	public void printSquare() {
		System.out.println(t.doubleValue() * t.doubleValue());
	}
	
	public void printAbs(MyNumClass<?> v) {
		System.out.println(Math.abs(t.doubleValue()) == Math.abs(v.t.doubleValue()));
	}
}
