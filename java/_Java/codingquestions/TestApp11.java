import java.io.CharArrayReader;
import java.io.IOException;

class TestApp11 {

    public static void main(String[] args) {
        String obj = "abcdef";
        int length = obj.length();
        char c[] = new char[length];
        obj.getChars(0, length, c, 0);
        CharArrayReader io_1 = new CharArrayReader(c); // io_1 is not used
        CharArrayReader io_2 = new CharArrayReader(c, 0, 3);
        int i;
        try {
            while ((i = io_2.read()) != -1) {
                System.out.print((char) i);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
