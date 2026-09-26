package ed2026.TP3;

import java.util.Random;

public class Tp3_01 {
    public static void main(String[] args) {
        Stack<Integer> original = new Stack<>(20);
        Random random = new Random();

        for (int i = 0; i < 15; i++) {
            original.push(random.nextInt(41) - 20);
        }

        Stack<Integer> positivos = new Stack<>();
        Stack<Integer> negativos = new Stack<>();
        separarPositivosNegativos(original, positivos, negativos);

        System.out.println("Pila original restaurada: " + original);
        System.out.println("Pila positivos: " + positivos);
        System.out.println("Pila negativos: " + negativos);

        System.out.println("Máximo de positivos: " + (maximo(positivos) == null ? "No hay positivos" : maximo(positivos)));
        System.out.println("Mínimo de negativos: " + (minimo(negativos) == null ? "No hay negativos" : minimo(negativos)));
    }

    public static void separarPositivosNegativos(Stack<Integer> original, Stack<Integer> positivos, Stack<Integer> negativos) {
        Stack<Integer> auxiliar = new Stack<>(Math.max(1, original.size()));

        while (!original.empty()) {
            int valor = original.pop();
            auxiliar.push(valor);

            if (valor >= 0) {
                positivos.push(valor);
            } else {
                negativos.push(valor);
            }
        }

        while (!auxiliar.empty()) {
            original.push(auxiliar.pop());
        }
    }

    public static Integer maximo(Stack<Integer> pila) {
        if (pila.empty()) {
            return null;
        }

        Stack<Integer> auxiliar = new Stack<>(Math.max(1, pila.size()));
        Integer maximo = null;

        while (!pila.empty()) {
            Integer valor = pila.pop();
            if (maximo == null || valor > maximo) {
                maximo = valor;
            }
            auxiliar.push(valor);
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }

        return maximo;
    }

    public static Integer minimo(Stack<Integer> pila) {
        if (pila.empty()) {
            return null;
        }

        Stack<Integer> auxiliar = new Stack<>(Math.max(1, pila.size()));
        Integer minimo = null;

        while (!pila.empty()) {
            Integer valor = pila.pop();
            if (minimo == null || valor < minimo) {
                minimo = valor;
            }
            auxiliar.push(valor);
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }

        return minimo;
    }
}
