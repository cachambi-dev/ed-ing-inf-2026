package ed2026.TP2;

import java.util.Random;

public class Tp2_01 {

    public static void main(String[] args) {
          int cantidad = Helper.nextInteger("Ingrese valor", 0);
        
        int arregloInicial[] = new int[cantidad];
        cargarArreglo(arregloInicial);
        System.out.println("Mostrar elementos del arreglo cargado");
        mostrarElementos(arregloInicial);
        
        System.out.println("\ndesplazar Arreglo izquierda");
        mostrarElementos(desplazarIzquierda(arregloInicial));
        mostrarCantidadPositivoNegativo(arregloInicial);
        
        System.out.println("\nArreglo invertido");
        invertirArreglo(arregloInicial);
        mostrarElementos(arregloInicial);

    }

   

    /***
     * Metodo que genera un numero aleatorio en el rango [min,max]
     * 
     * @return valor_aleatorio
     */
    public static int generarAleatorio(int max, int min) {
        Random r = new Random();
        return r.nextInt(max - min + 1) + min;
    }

    /***
     * Metodo que carga al arreglo de valores
     * 
     * @param arrInicial representa un arreglo
     */
    public static void cargarArreglo(int[] arrInicial) {
        for (int i = 0; i < arrInicial.length; i++) {
            arrInicial[i] = generarAleatorio(50, -50);
        }
    }

    /**
     * Metodo que cuenta la cantidad de elementos negativo y positivo
     * del arreglo
     * 
     * @param arrInicial
     */
    public static void mostrarCantidadPositivoNegativo(int[] arrInicial) {
        int cantidadPositivo = 0, cantidadNegativo = 0;
        for (int i = 0; i < arrInicial.length; i++) {
            if (arrInicial[i] > 0) {
                cantidadPositivo++;
            } else if (arrInicial[i] < 0) {
                cantidadNegativo++;
            }
        }
        System.out.printf("%nCantidad de valores positivo %d%n", cantidadPositivo);
        System.out.printf("Cantidad de valores negativo %d", cantidadNegativo);
    }

    /**
     * Muestra los elementos del arreglo
     * 
     * @param arreglo
     */
    public static void mostrarElementos(int[] arreglo) {
        for (int i = 0; i < arreglo.length; i++) {
            System.out.print("[" + arreglo[i] + "] ");
        }
    }

    /**
     * Metodo que genera un nuevo arreglo con los elementos desplazados a la izquierda
     * @param arreglo
     * @return un arreglo con los elementos desplazados a la izquierda
     */
    public static int[] desplazarIzquierda(int[] arreglo) {
        int[] resultado = new int[arreglo.length];
        for (int i = 0; i < arreglo.length; i++) {
            resultado[i] = arreglo[(i + 1) % arreglo.length];
        }
        return resultado;
    }

    public static void invertirArreglo(int[] arreglo){
        int inicio=0, fin=arreglo.length-1;
        while (inicio<fin) {
            int aux = arreglo[inicio];
            arreglo[inicio] = arreglo[fin];
            arreglo[fin]=aux;
            inicio++;
            fin--;
        }
    }

}