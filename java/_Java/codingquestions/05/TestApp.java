class TestApp {
    int i[] = { 0 };

    public static void main(String args[]) {
        int i[] = { 1 };
        alter(i);
	// we passed a copy of local variable i to the function alert
        System.out.println(i[0]);
    }

    public static void alter(int i[]) {
        int j[] = { 2 };
        i = j;
    }
}
