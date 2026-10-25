package ed2026.TP6;

public class TP6_07 {
    public static void main(String[] args) {
        AVLTree<Integer> tree = load();
        System.out.println("AVL 7: " + tree);
        System.out.print("In order: ");
        tree.InOrder();
        System.out.println();
    }

    public static AVLTree<Integer> load() {
        AVLTree<Integer> tree = new AVLTree<>();
        int[] values = { 50, 25, 10, 5, 2, 1, 75, 100, 125, 60, 80, 90, 85, 30, 35, 32 };
        for (int value : values) tree.add(value);
        return tree;
    }
}