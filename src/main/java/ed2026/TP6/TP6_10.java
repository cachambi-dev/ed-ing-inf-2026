package ed2026.TP6;

public class TP6_10 {
    public static void main(String[] args) {
        AVLTree<Integer> tree = load();
        System.out.println("AVL 10: " + tree);
        System.out.print("Pre order de verificación: ");
        tree.PreOrder();
        System.out.println();
    }

    public static AVLTree<Integer> load() {
        AVLTree<Integer> tree = new AVLTree<>();
        int[] values = { 30, 20, 10, 5, 15, 25, 40, 35, 50, 45, 55, 60, 1, 3, 12, 18 };
        for (int value : values) tree.add(value);
        return tree;
    }
}