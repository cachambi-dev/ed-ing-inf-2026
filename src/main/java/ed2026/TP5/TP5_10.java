package ed2026.TP5;

public class TP5_10 {
    public static void main(String[] args) {
        SimpleLinkedList<Integer> lista = mockup();
        System.out.println("Lista original: " + lista);
        lista.eliminarPares();
        System.out.println("Lista sin pares: " + lista);
    }

    public static SimpleLinkedList<Integer> mockup() {
        SimpleLinkedList<Integer> lista = new SimpleLinkedList<>();
        int[] valores = { 2, 4, 5, 8, 7, 10, 11 };
        for (int valor : valores) {
            lista.addLast(valor);
        }
        return lista;
    }
}