package ed2026.TP6;

public class TP6_03 {
    public static void main(String[] args) {
        BinarySearchTree<Integer> tree = mockup();
        System.out.println("ABB: " + tree);
        System.out.println("Buscar 60: " + tree.buscar(60));
        System.out.println("Buscar 99: " + tree.buscar(99));

        System.out.println("Modificar raíz 50 por 55: " + tree.modificar(50, 55));
        System.out.println("Modificar hoja 20 por 25: " + tree.modificar(20, 25));
        System.out.println("Modificar inexistente 99 por 100: " + tree.modificar(99, 100));
        System.out.println("ABB luego de las pruebas: " + tree);
    }

    public static BinarySearchTree<Integer> mockup() {
        BinarySearchTree<Integer> tree = new BinarySearchTree<>();
        int[] values = { 50, 30, 70, 20, 40, 60, 80 };
        for (int value : values) {
            tree.add(value);
        }
        return tree;
    }
}