package ed2026.TP6;

public class TP6_08 {
    public static void main(String[] args) {
        AVLTree<Integer> tree = load();
        System.out.println("AVL 8: " + tree);
        System.out.print("Post order: ");
        tree.PostOrder();
        System.out.println();
    }

    public static AVLTree<Integer> load() {
        AVLTree<Integer> tree = new AVLTree<>();
        int[] values = { 10, 20, 30, 40, 50, 60, 5, 2, 1, 25, 35, 15, 12, 55, 65, 62 };
        for (int value : values) tree.add(value);
        return tree;
    }
}