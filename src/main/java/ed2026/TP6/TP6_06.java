package ed2026.TP6;

public class TP6_06 {
    public static void main(String[] args) {
        AVLTree<Integer> tree = load();
        System.out.println("AVL 6: " + tree);
        System.out.print("Pre order: ");
        tree.PreOrder();
        System.out.println();
    }

    public static AVLTree<Integer> load() {
        AVLTree<Integer> tree = new AVLTree<>();
        int[] values = { 10, 20, 30, 5, 15, 25, 12, 17, 40, 35, 2, 1, 8, 7, 37 };
        for (int value : values) tree.add(value);
        return tree;
    }
}