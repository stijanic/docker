class Super {
    public int index = 1;
}

class App extends Super {

    public App(int index) {
        index = index;
        // this.index = index; would modify the value of instance variable index
    }

    public static void main(String args[]) {
        App myApp = new App(10);
        System.out.println(myApp.index);
    }
}
