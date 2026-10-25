package ed2026.TP5;

import java.util.Random;
import ed2026.Helper.Helper;

public class TP5_06 {
    public static void main(String[] args) {
        int opcion = Helper.nextInteger("1. Usar mockup  2. Generar aleatorios: ", "Opcion invalida");
        SimpleLinkedList<Integer> original = opcion == 1
            ? mockup()
            : generarAleatorios(Helper.nextInteger("Ingrese N: ", "Cantidad invalida"));

        System.out.println("Lista original: " + original);
        System.out.println("Negativos al principio: " + separarNegativos(original));

        int a = Helper.nextInteger("Ingrese A: ", "Valor invalido");
        int b = Helper.nextInteger("Ingrese B: ", "Valor invalido");
        System.out.println("Suma en [" + Math.min(a, b) + ", " + Math.max(a, b) + "]: " + sumarRango(original, a, b));
        System.out.println("Lista ordenada: " + ordenar(original));
    }

    public static SimpleLinkedList<Integer> generarAleatorios(int cantidad) {
        SimpleLinkedList<Integer> lista = new SimpleLinkedList<>();
        Random random = new Random();
        for (int i = 0; i < cantidad; i++) {
            lista.addLast(random.nextInt(41) - 20);
        }
        return lista;
    }

    public static SimpleLinkedList<Integer> mockup() {
        SimpleLinkedList<Integer> lista = new SimpleLinkedList<>();
        int[] valores = { 7, -3, 0, -8, 12, 4, -1, 9 };
        for (int valor : valores) {
            lista.addLast(valor);
        }
        return lista;
    }

    public static SimpleLinkedList<Integer> separarNegativos(SimpleLinkedList<Integer> lista) {
        SimpleLinkedList<Integer> resultado = new SimpleLinkedList<>();
        for (Integer valor : lista) {
            if (valor < 0) {
                resultado.addLast(valor);
            }
        }
        for (Integer valor : lista) {
            if (valor >= 0) {
                resultado.addLast(valor);
            }
        }
        return resultado;
    }

    public static int sumarRango(SimpleLinkedList<Integer> lista, int a, int b) {
        int minimo = Math.min(a, b);
        int maximo = Math.max(a, b);
        int suma = 0;
        for (Integer valor : lista) {
            if (valor >= minimo && valor <= maximo) {
                suma += valor;
            }
        }
        return suma;
    }

    public static SimpleLinkedList<Integer> ordenar(SimpleLinkedList<Integer> lista) {
        SimpleLinkedList<Integer> ordenada = new SimpleLinkedList<>();
        for (Integer valor : lista) {
            int posicion = 0;
            while (posicion < ordenada.size() && ordenada.get(posicion) <= valor) {
                posicion++;
            }
            ordenada.add(posicion, valor);
        }
        return ordenada;
    }
}