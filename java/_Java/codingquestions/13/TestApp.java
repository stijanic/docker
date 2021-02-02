class TestApp {

    public static void main(String args[]) {
        System.out.println(test());
    }

    static float test() {
        static float x = 0.0; // usage of static as local doesn't work
        return ++x;
    }
}
