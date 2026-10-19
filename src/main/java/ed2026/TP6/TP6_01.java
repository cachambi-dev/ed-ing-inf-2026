package ed2026.TP6;

public class TP6_01 {
    public static void main(String[] args){
        BinaryTree<Integer> tree = loadBinaryTree();
        System.out.println("Recorrido In-Order:");
        tree.InOrder();
        System.out.println("\n Cantidad de Nodos: " + tree.NodeCount());
        System.out.println(" Cantidad de Hojas: " + tree.LeafCount());
        System.out.println(" Cantidad de Nodos Internos: " + tree.InternalCount());
        System.out.println(" Máximo Nivel: " + tree.MaxLevel());
        System.out.println(" Altura: " + tree.Height());
        System.out.println("Recorrido Descendente:");
        tree.DescendingOrder();
        System.out.println("\nRepresentación del Árbol parentizada:");
        System.out.println(tree.toString());
    }

    static BinaryTree<Integer> loadBinaryTree(){
        BinaryTree<Integer> node20 = new BinaryTree<>(20);
        BinaryTree<Integer> node222 = new BinaryTree<>(222);
        BinaryTree<Integer> node146 = new BinaryTree<>(146, null, node222);
        BinaryTree<Integer> node128 = new BinaryTree<>(128, node20, node146);

        BinaryTree<Integer> node342 = new BinaryTree<>(342);
        BinaryTree<Integer> node380 = new BinaryTree<>(380, node342, null);
        BinaryTree<Integer> node226 = new BinaryTree<>(226, node128, node380);

        BinaryTree<Integer> node620 = new BinaryTree<>(620);
        BinaryTree<Integer> node633 = new BinaryTree<>(633, node620, null);
        BinaryTree<Integer> node940 = new BinaryTree<>(940);
        BinaryTree<Integer> node930 = new BinaryTree<>(930, null, node940);
        BinaryTree<Integer> node950 = new BinaryTree<>(950, node930, null);
        BinaryTree<Integer> node901 = new BinaryTree<>(901, node633, node950);

        return new BinaryTree<>(527, node226, node901);
    }
}
