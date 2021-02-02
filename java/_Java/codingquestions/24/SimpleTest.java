public class SimpleTest {

    static int test;
    boolean final() // final is a reserved word
    {
        test++;
        return true;
    }

    public static void main(String[] args)
    {
        test=0; 
        if ((final() | final()) || final())
            test++; 
        System.out.println(test); 
    }
}
