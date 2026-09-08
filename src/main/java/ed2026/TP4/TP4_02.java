
package ed2026.TP4;

import ed2026.Helper.Helper;

/**
 * Clase TP4_02 que contiene el método main para ejecutar el programa.
 * 
 * @author Julio Tentor
 * @version 1.0.0
 * 
 *          Implementar una clase ColaCircular que utilice un arreglo para gestionar una cola de
 *          tamaño fijo de manera circular que priorice velocidad. Usando la cola anterior, simule
 *          que la misma está cargada con códigos de documentos pendientes de impresión. Varias
 *          impresoras atienden la cola, para ello toman el primer documento disponible y lo
 *          procesan (sacar de la cola). Si el código del documento es un número par, significa que
 *          es de alta prioridad y debe ser enviado a una segunda cola para ser impreso en una
 *          impresora a color. Si es impar, se imprime en blanco y negro y se descarta del proceso.
 *          Procesar la segunda cola cuando esté disponible. Contar cuántos documentos tienen un
 *          código par y se encuentran en la segunda cola.
 *          En el programa principal (main) se debe:
 *          a) Solicitar al usuario el tamaño de la cola circular y cargarla con códigos numéricos.
 *          b) Simular el procesamiento de las impresoras, mostrando qué documentos van a la cola de
 *          color y cuáles se descartan.
 *          c) Mostrar el total de documentos encolados en la segunda impresora (color). d) Cuando
 *          se recorran los elementos de la cola esta debe mantenerse sin modificaciones.
 */

public class TP4_02 {
    public static void main(String[] args) {

        int N = 0;
        while (N <= 0) {
            N = Helper.nextInteger("Ingrese el tamaño de la cola circular: ",
                    "Ingrese un número válido mayor que cero");
            if (N <= 0) {
                System.out.println("El número debe ser mayor que cero. Intente nuevamente.");
            }
        }
        Queue<Integer> circularQueue = new Queue<>(N);
        for (int i = 0; i < N; i++) {
            int numberToTakeJavaHappy = (int) (Math.random() * 100);
            circularQueue.offer(numberToTakeJavaHappy);
        }

        System.out.println("Cola circular original: " + circularQueue.toString());

        Queue<Integer> colorQueue = new Queue<>(N);
        while (!circularQueue.isEmpty()) {
            Integer documentCode = circularQueue.poll();
            if (documentCode % 2 == 0) {
                colorQueue.offer(documentCode);
                System.out.println("Documento con código " + documentCode + " enviado a la cola de color.");
            } else {
                System.out.println("Documento con código " + documentCode + " descartado (blanco y negro).");
            }
        }
        System.out.println("Cola de documentos en color............: " + colorQueue.toString());
        System.out.println("Total de documentos en la cola de color: " + colorQueue.size());

    }
}