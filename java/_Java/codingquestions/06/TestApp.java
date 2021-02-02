class TestApp {

    String args[] = { "1", "2" };

    public static void main(String args[]) {
        if (args.length > 0)
	    // value of args.length is 0 unless we specify arguments on command line
            System.out.println(args.length);
    }
}
