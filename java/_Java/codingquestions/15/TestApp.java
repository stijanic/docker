class TestApp {

    public static void main(String args[]) {
        int bits;

        bits = -3 >> 1;
        System.out.println(bits);
        bits = bits >>> 2; //unsigned right shift operator
        System.out.println(bits);
        bits = bits << 1;
        System.out.println(bits);
    }
}
