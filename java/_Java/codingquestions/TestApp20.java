class Cluster {
}

class Node1 extends Cluster {
}

class Node2 extends Cluster {
}

public class TestApp20 {
    public static void main(String[] args) {
        Cluster tree = new Node1();
        if (tree instanceof Node1)
            System.out.println("Node1");
        else if (tree instanceof Cluster)
            System.out.println("Cluster");
        else if (tree instanceof Node2)
            System.out.println("Node2");
        else
            System.out.println("Unexpected");
    }
}
