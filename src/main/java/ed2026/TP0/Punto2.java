package ed2026.TP0;

import java.util.Random;
import java.util.Scanner;

public class Punto2 {

    private static final Random RANDOM = new Random();

    public static void main(String[] args) {
        int cantidadMediciones;

        try (Scanner entrada = new Scanner(System.in)) {
            System.out.print("Ingrese la cantidad de mediciones a simular: ");
            cantidadMediciones = entrada.nextInt();
        }

        // Validación de cantidad positiva
        if (cantidadMediciones <= 0) {
            System.out.println("Error: Debe ingresar al menos una medición (> 0).");
            return;
        }

        int heladas = 0;
        int calidas = 0;
        int sumaTemperatura = 0;

        System.out.println("\n--- Registro de Mediciones ---");
        for (int i = 1; i <= cantidadMediciones; i++) {
            int temperatura = generarNumeroAleatorio(-10, 40);
            System.out.println("Medición #" + i + ": " + temperatura + " °C");

            sumaTemperatura += temperatura;

            if (temperatura < 0) {
                heladas++;
            } else if (temperatura >= 30) {
                calidas++;
            }
        }

        // Cálculo con decimales precisos
        float temperaturaPromedio = (float) sumaTemperatura / cantidadMediciones;

        System.out.println("\n==========================================");
        System.out.printf("Temperatura promedio del día: %.2f °C%n", temperaturaPromedio);
        System.out.println("Cantidad de mediciones Heladas (< 0 °C): " + heladas);
        System.out.println("Cantidad de mediciones Cálidas (>= 30 °C): " + calidas);
        System.out.println("==========================================");
    }

    /**
     * Genera un número entero aleatorio en el rango [min, max] inclusive.
     */
    public static int generarNumeroAleatorio(int min, int max) {
        return RANDOM.nextInt(max - min + 1) + min;
    }
}
