package ed2026.TP6;

public class TP6_02 {
    public static void main(String[] args) {
        BinaryTree<Integer> treeA = loadBinaryTreeA();
        BinaryTree<Integer> treeB = loadBinaryTreeB();

        System.out.println("Representación del Árbol A:");
        System.out.println(treeA.toString());
        System.out.println("\nRepresentación del Árbol B:");
        System.out.println(treeB.toString());



        System.out.println("\nRecorrido In-Order del Árbol A:");
        treeA.InOrder();
        System.out.println("\nRecorrido In-Order del Árbol B:");
        treeB.InOrder();

        System.out.println("\nRecorrido Pre-Order del Árbol A:");
        treeA.PreOrder();
        System.out.println("\nRecorrido Pre-Order del Árbol B:");
        treeB.PreOrder();

        System.out.println("\nRecorrido Post-Order del Árbol A:");
        treeA.PostOrder();
        System.out.println("\nRecorrido Post-Order del Árbol B:");
        treeB.PostOrder();

        System.out.println("\nRecorrido Descendente del Árbol A:");
        treeA.DescendingOrder();
        System.out.println("\nRecorrido Descendente del Árbol B:");
        treeB.DescendingOrder();



    }

    static BinaryTree<Integer> loadBinaryTreeA(){
        BinaryTree<Integer> node246 = new BinaryTree<Integer>(246);
        BinaryTree<Integer> node394 = new BinaryTree<Integer>(394, node246, null);
        BinaryTree<Integer> node1 = new BinaryTree<Integer>(1, null, node394);

        BinaryTree<Integer> node620 = new BinaryTree<Integer>(620);
        BinaryTree<Integer> node859 = new BinaryTree<Integer>(859);
        BinaryTree<Integer> node687 = new BinaryTree<Integer>(687, node620, node859);
        BinaryTree<Integer> node959 = new BinaryTree<Integer>(959);
        BinaryTree<Integer> node934 = new BinaryTree<Integer>(934, null, node959);
        BinaryTree<Integer> node880 = new BinaryTree<Integer>(880, node687, node934);

        return new BinaryTree<Integer>(527, node1, node880);

    }

    static BinaryTree<Integer> loadBinaryTreeB(){
        BinaryTree<Integer> node50 = new BinaryTree<Integer>(50);
        BinaryTree<Integer> node96 = new BinaryTree<Integer>(96, node50, null);
        BinaryTree<Integer> node170 = new BinaryTree<Integer>(170);
        BinaryTree<Integer> node156 = new BinaryTree<Integer>(156, node96, node170);

        BinaryTree<Integer> node462 = new BinaryTree<Integer>(462);
        BinaryTree<Integer> node757 = new BinaryTree<Integer>(757);
        BinaryTree<Integer> node781 = new BinaryTree<Integer>(781, node757, null);
        BinaryTree<Integer> node666 = new BinaryTree<Integer>(666, node462, node781);
        BinaryTree<Integer> node850 = new BinaryTree<Integer>(850);
        BinaryTree<Integer> node866 = new BinaryTree<Integer>(866, node850, null);
        BinaryTree<Integer> node787 = new BinaryTree<Integer>(787, null, node866);
        BinaryTree<Integer> node785 = new BinaryTree<Integer>(785, node666, node787);

        return new BinaryTree<Integer>(441, node156, node785);
    } 
}
