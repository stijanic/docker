import java.io.CharArrayReader;
import java.io.IOException;

class TestApp {

    public static void main(String[] args) {
        String obj = "abcdef";
        int length = obj.length();
        char c[] = new char[length];
        obj.getChars(0, length, c, 0);
        CharArrayReader io_1 = new CharArrayReader(c);
        CharArrayReader io_2 = new CharArrayReader(c, 1, 4);
        int i, j;
        try {
            while ((i = io_1.read()) == (j = io_2.read())) { // leaves the loop immediately as 'a' != 'b'
                System.out.print((char) i);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
