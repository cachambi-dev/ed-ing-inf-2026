package ed2026.TP2;

public class Tp2_07 {
    public static void main(String[] args) {
        int[] arreglo = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        int[] pares = obtenerPares(arreglo);
        for (int numero : pares) {
            System.out.print(numero + " ");
        }
    }

    public static int[] obtenerPares(int[] arreglo) {
        int contador = 0;
        for (int i = 0; i < arreglo.length; i++) {
            if (arreglo[i] % 2 == 0) {
                contador++;
            }
        }

        int[] resultado = new int[contador];
        int indice = 0;
        for (int i = 0; i < arreglo.length; i++) {
            if (arreglo[i] % 2 == 0) {
                resultado[indice] = arreglo[i];
                indice++;
            }
        }
        return resultado;
    }
}
