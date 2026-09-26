package ed2026.TP4;

public class TP4_07 {
    public static void main(String[] args) {
        Queue<Integer> cola = new Queue<>(6);
        cola.offer(2);
        cola.offer(3);
        cola.offer(5);
        cola.offer(8);
        cola.offer(10);
        cola.offer(13);

        System.out.println("Cola original: " + cola);
        System.out.println("Cantidad de pares A: " + contarParesA(cola));
        System.out.println("Cola después de A: " + cola);

        Queue<Integer> otraCola = new Queue<>(6);
        otraCola.offer(2);
        otraCola.offer(3);
        otraCola.offer(5);
        otraCola.offer(8);
        otraCola.offer(10);
        otraCola.offer(13);

        System.out.println("Cantidad de pares B: " + contarParesB(otraCola));
        System.out.println("Cola después de B: " + otraCola);
    }

    public static int contarParesA(Queue<Integer> cola) {
        int contador = 0;
        int tamanioOriginal = cola.size();
        int[] arregloAuxiliar = new int[tamanioOriginal];
        int i = 0;

        while (!cola.isEmpty()) {
            int numero = cola.poll();
            if (numero % 2 == 0) {
                contador++;
            }
            arregloAuxiliar[i] = numero;
            i++;
        }

        for (int j = 0; j < tamanioOriginal; j++) {
            cola.offer(arregloAuxiliar[j]);
        }

        return contador;
    }

    public static int contarParesB(Queue<Integer> cola) {
        int contador = 0;
        int tamanioOriginal = cola.size();
        Queue<Integer> colaAuxiliar = new Queue<>(tamanioOriginal);

        while (!cola.isEmpty()) {
            int numero = cola.poll();
            if (numero % 2 == 0) {
                contador++;
            }
            colaAuxiliar.offer(numero);
        }

        while (!colaAuxiliar.isEmpty()) {
            cola.offer(colaAuxiliar.poll());
        }

        return contador;
    }
}
