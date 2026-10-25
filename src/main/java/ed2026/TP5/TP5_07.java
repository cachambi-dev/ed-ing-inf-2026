package ed2026.TP5;

import java.util.Random;
import ed2026.Helper.Helper;

public class TP5_07 {
    public static void main(String[] args) {
        int opcion = Helper.nextInteger("1. Usar mockup  2. Generar aleatorios: ", "Opcion invalida");
        Queue<Integer> pedidos = opcion == 1 ? mockup() : generarPedidos(Helper.nextInteger("Ingrese N: ", "Cantidad invalida"));

        System.out.println("Cola original: " + pedidos);
        procesarCancelaciones(pedidos);
        System.out.println("Cola de pedidos validos: " + pedidos);
        System.out.println("Promedio: " + promedio(pedidos));
    }

    public static Queue<Integer> mockup() {
        return new Queue<>(5, 0, 8, 0, 9, 12);
    }

    public static Queue<Integer> generarPedidos(int cantidad) {
        Queue<Integer> pedidos = new Queue<>();
        Random random = new Random();
        for (int i = 0; i < cantidad; i++) {
            pedidos.add(random.nextInt(51));
        }
        return pedidos;
    }

    public static void procesarCancelaciones(Queue<Integer> pedidos) {
        Queue<Integer> validos = new Queue<>();
        while (!pedidos.isEmpty()) {
            Integer pedido = pedidos.remove();
            if (pedido != 0) {
                validos.add(pedido);
            }
        }
        while (!validos.isEmpty()) {
            pedidos.add(validos.remove());
        }
    }

    public static double promedio(Queue<Integer> pedidos) {
        if (pedidos.isEmpty()) {
            return 0.0;
        }
        int suma = 0;
        int cantidad = 0;
        for (Integer pedido : pedidos) {
            suma += pedido;
            cantidad++;
        }
        return (double) suma / cantidad;
    }
}