public class SimpleTest {

    public static void main(String args[]) {
        try {
            args[0] = "0";
            return;

        } catch (Exception e) {
            System.out.print("Exception");
        } finally {
            System.out.print("Final");
        }
    }
}
