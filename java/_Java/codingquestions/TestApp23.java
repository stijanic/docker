import java.io.File;

public class TestApp23 {

    public static void main(String args[]) {
        File sys = new File("/MVC/system");
        System.out.print(sys.getParent());
        System.out.print(" " + sys.isFile());
    }

}
