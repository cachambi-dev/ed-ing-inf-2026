package ed2026.TP6;

public class TP6_09 {
    public static void main(String[] args) {
        AVLTree<Integer> tree = load();
        System.out.println("AVL 9: " + tree);
        System.out.print("Descending order: ");
        tree.DescendingOrder();
        System.out.println();
    }

    public static AVLTree<Integer> load() {
        AVLTree<Integer> tree = new AVLTree<>();
        int[] values = { 50, 10, 20, 60, 70, 5, 2, 1, 80, 90, 100, 15, 12, 75, 65, 85 };
        for (int value : values) tree.add(value);
        return tree;
    }
}