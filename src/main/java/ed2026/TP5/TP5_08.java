package ed2026.TP5;

import java.util.Random;
import ed2026.Helper.Helper;

public class TP5_08 {
    public static void main(String[] args) {
        int opcion = Helper.nextInteger("1. Usar mockup  2. Generar aleatorios: ", "Opcion invalida");
        Stack<Integer> pila = opcion == 1 ? mockup() : generarPila(Helper.nextInteger("Ingrese N: ", "Cantidad invalida"));

        System.out.println("Pila original (cima primero): " + pila);
        duplicarMultiplosDeTres(pila);
        System.out.println("Pila resultante: " + pila);
    }

    public static Stack<Integer> mockup() {
        Stack<Integer> pila = new Stack<>();
        pila.push(9);
        pila.push(4);
        pila.push(3);
        pila.push(6);
        return pila;
    }

    public static Stack<Integer> generarPila(int cantidad) {
        Stack<Integer> pila = new Stack<>();
        Random random = new Random();
        for (int i = 0; i < cantidad; i++) {
            pila.push(random.nextInt(31));
        }
        return pila;
    }

    public static void duplicarMultiplosDeTres(Stack<Integer> pila) {
        Stack<Integer> auxiliar = new Stack<>();
        while (!pila.isEmpty()) {
            auxiliar.push(pila.pop());
        }
        while (!auxiliar.isEmpty()) {
            Integer valor = auxiliar.pop();
            pila.push(valor);
            if (valor % 3 == 0) {
                pila.push(valor);
            }
        }
    }
}