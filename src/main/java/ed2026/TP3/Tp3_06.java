package ed2026.TP3;

import java.util.Arrays;

public class Tp3_06 {
    public static void main(String[] args) {
        Stack<Integer> pila = new Stack<>();
        pila.push(10);
        pila.push(20);
        pila.push(30);
        pila.push(40);

        System.out.println("Pila original: " + pila);
        System.out.println("Solución A: " + Arrays.toString(pilaAArregloA(pila)));
        System.out.println("Solución B: " + Arrays.toString(pilaAArregloB(pila)));
        System.out.println("Pila restaurada: " + pila);
    }

    public static int[] pilaAArregloA(Stack<Integer> pila) {
        Integer[] auxiliar = new Integer[pila.size()];
        pila.toArray(auxiliar);

        int[] arreglo = new int[auxiliar.length];
        for (int i = 0; i < auxiliar.length; i++) {
            arreglo[i] = auxiliar[i];
        }
        return arreglo;
    }

    public static int[] pilaAArregloB(Stack<Integer> pila) {
        int[] arreglo = new int[pila.size()];
        Stack<Integer> auxiliar = new Stack<>(Math.max(1, pila.size()));
        int indice = 0;

        while (!pila.empty()) {
            int valor = pila.pop();
            arreglo[indice] = valor;
            indice++;
            auxiliar.push(valor);
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }

        return arreglo;
    }
}
