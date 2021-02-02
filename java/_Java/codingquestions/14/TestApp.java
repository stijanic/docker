class TestApp {

    static int index = 0;

    public static void main(String args[]) {
        System.out.println(test()); // test() is not static
    }

    int test() {
        int index = 1;
        return index;
    }
}
