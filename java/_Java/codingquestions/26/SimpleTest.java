public class SimpleTest {

    public static void main(String ags[]) {
        String initial = "ABCDEFG", after = "";
        after = initial = initial.replace('A', 'Z');
        System.out.println(initial + ", " + after);
    }
}
