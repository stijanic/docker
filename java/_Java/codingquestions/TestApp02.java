class TestApp02 {
    protected int x, y;
    // int values are initialized as 0
}

class Main {
    public static void main(String args[]) {
        TestApp02 app = new TestApp02();
        System.out.println(app.x + " " + app.y);
    }
}
