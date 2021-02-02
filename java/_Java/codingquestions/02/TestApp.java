class TestApp {
    protected int x, y;
    // int values are initialized as 0
}

class Main {
    public static void main(String args[]) {
        TestApp app = new TestApp();
        System.out.println(app.x + " " + app.y);
    }
}
