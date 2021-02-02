public class SimpleTest {
    public static void stringReplace(String str) {
        str = str.replace('c', 'c');
    }

    public static void bufferReplace(StringBuffer str) {
        str.trimToSize();
    }

    public static void main(String args[]) {
        String myString = new String("cplus");
        StringBuffer myBuffer = new StringBuffer(" plus");
        stringReplace(myString);
        bufferReplace(myBuffer);
        System.out.println(myString + myBuffer);
    }
}
