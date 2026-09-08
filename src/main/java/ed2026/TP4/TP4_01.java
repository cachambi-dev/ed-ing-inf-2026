package ed2026.TP4;

import ed2026.Helper.Helper;

/**
 * Clase TP4_01 que contiene el método main para ejecutar el programa.
 * 
 * @author Julio Tentor
 * @version 1.0.0
 * 
 *          Realizar el ingreso de N enteros (simulando niveles de señal) en una cola. Además, pedir
 *          al usuario el ingreso de un número que será considerado como umbral máximo. Los
 *          elementos de la cola que excedan el valor umbral deberán ser retirados y reubicados al
 *          final de la misma. Mostrar los elementos de la cola después de realizada la reubicación.
 *          Contar y mostrar la cantidad de números de la cola que no superen al umbral ingresado
 *          por el usuario. Finalmente, crear una nueva cola que solo contenga aquellos números que
 *          no superen dicho umbral.
 *          En el programa principal (main) se debe:
 *          a) Solicitar al usuario la cantidad de elementos N y generar los números aleatoriamente.
 *          b) Solicitar el valor del umbral máximo.
 *          c) Ejecutar las operaciones indicadas y mostrar el estado de la cola original tras la
 *          reubicación, la cantidad de elementos por debajo del umbral, y los elementos de la nueva
 *          cola generada. d) Cuando se recorran los elementos de la cola esta debe mantenerse sin
 *          modificaciones.
 */
public class TP4_01 {
    public static void main(String[] args) {

        int N = 0;
        while (N <= 0) {
            N = Helper.nextInteger("Ingrese la cantidad de elementos N: ", "Ingrese un número válido mayor que cero");
            if (N <= 0) {
                System.out.println("El número debe ser mayor que cero. Intente nuevamente.");
            }
        }

        Queue<Integer> originalQueue = new Queue<>(N);
        for (int i = 0; i < N; i++) {
            int numberToTakeJavaHappy = (int) (Math.random() * 100);
            originalQueue.offer(numberToTakeJavaHappy);
        }

        System.out.println("Cola original: " + originalQueue.toString());

        int threshold = 0;
        while (threshold <= 0) {
            threshold = Helper.nextInteger("Ingrese el valor del umbral máximo: ",
                    "Ingrese un número válido mayor que cero");
            if (threshold <= 0) {
                System.out.println("El número debe ser mayor que cero. Intente nuevamente.");
            }
        }

        Queue<Integer> newQueue = new Queue<>(N);
        Queue<Integer> maxQueue = new Queue<>(N);
        while (!originalQueue.isEmpty()) {
            Integer number = originalQueue.poll();
            if (number <= threshold) {
                newQueue.offer(number);
            } else {
                maxQueue.offer(number);
            }
        }
        // Integer[] newQueueArray = newQueue.toArray(new Integer[0]);
        for (Integer number : newQueue) {
            originalQueue.offer(number);
        }
        // Reubicar los elementos de la cola max al final de la cola original
        while (!maxQueue.isEmpty()) {
            originalQueue.offer(maxQueue.poll());
        }

        System.out.println("Cola original después de la reubicación.....: " + originalQueue.toString());
        System.out.println("Cantidad de elementos por debajo del umbral.: " + newQueue.size());
        System.out.println("Elementos de la nueva cola..................: " + newQueue.toString());
    }
}