package ed2026.TP5;

public class TP5_09 {
    public static void main(String[] args) {
        SimpleLinkedList<Integer> lista = mockup();
        System.out.println("Lista original: " + lista);
        System.out.println("Suma: " + sumarElementos(lista));
        System.out.println("Lista después del método: " + lista);
    }

    public static SimpleLinkedList<Integer> mockup() {
        SimpleLinkedList<Integer> lista = new SimpleLinkedList<>();
        int[] valores = { 4, -2, 8, 5, 1 };
        for (int valor : valores) {
            lista.addLast(valor);
        }
        return lista;
    }

    public static int sumarElementos(SimpleLinkedList<Integer> lista) {
        int suma = 0;
        for (Integer numero : lista) {
            suma += numero;
        }
        return suma;
    }
}