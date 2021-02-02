class TestApp {

    public void test(boolean a, boolean b) {
        if (a) {
            System.out.println("A");
        } else if (a && b) {
            System.out.println("A && B");
        } else {
            if (!b) {
                System.out.println("!B");
            } else {
                System.out.println("None");
            }
        }
    }

    public static void main(String args[]) {
	TestApp testApp = new TestApp();

        System.out.print("a: true, b: true  => "); testApp.test(true, true);
        System.out.print("a: true, b: false => "); testApp.test(true, false);
        System.out.print("a: false, b: true => "); testApp.test(false, true);
        System.out.print("a: false, b: false => "); testApp.test(false, false);
    }
}
