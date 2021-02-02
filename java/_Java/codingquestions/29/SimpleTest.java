public class SimpleTest {

    public static void main(String[] args) {
        int[] table = { 1, 2, 3, 4, 5 };
        table[1] = (table[2 * 1] == 2 - args.length) ? table[3] : 99; // false
        System.out.println(table[1]);
    }
}
