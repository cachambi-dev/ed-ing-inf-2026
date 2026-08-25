package TP2.p2;

import java.util.Scanner;

public class Tp2_02 {
    static void main() {
        Scanner entrada = new Scanner(System.in);
        int cantidadVuelos = ingresarValorEntero(entrada, "Ingrese cantidad de vuelos", 0, Integer.MAX_VALUE);
        
        int[] arregloNumeroVuelo = new int[cantidadVuelos];
        String[] arregloEstadoVuelo = new String[cantidadVuelos];
        cargarArreglo(arregloEstadoVuelo, arregloNumeroVuelo);
        mostrarElementos2arreglos(arregloEstadoVuelo, arregloNumeroVuelo);

        int vuelo = ingresarValorEntero(entrada, "Ingrese numero de vuelo a buscar", 0, Integer.MAX_VALUE);
        buscarNumeroVuelo(arregloNumeroVuelo, arregloEstadoVuelo, vuelo);

        System.out.println("\nMostrando cantidad de vuelos por estado");
        String estado = seleccionarEstado(entrada);
        mostrarCantidadVueloPorEstado(arregloEstadoVuelo, estado);

        estado = seleccionarEstado(entrada);
        int[] arregloVuelosPorEstado = obtenerArregloNumeroVueloPorEstado(arregloEstadoVuelo, arregloNumeroVuelo, estado);
        mostrarArregloNumeroVuelo(arregloVuelosPorEstado);

        entrada.close();

    }

    /***
     * Metodo que valida el ingreso de valores enteros positivos
     */
    public static int ingresarValorEntero(Scanner ent, String mensaje, int min, int max) {
        int valor;
        while (true) {
            System.out.println(mensaje);
            if (ent.hasNextInt()) {
                valor = ent.nextInt();
                if (valor > min && valor <=max) {
                    return valor;
                }
                System.out.println("[Error] Valor invalido, debe ingresar valor positivo");
            } else {
                System.out.println("[Error] Valor invalido, debe ser un numero entero");
            }
        }
    }

    /**
     * Metodo que permite seleccionar el estado de vuelo
     * 
     * @param ingreso representa un objeto Scanner para la entrada de datos
     * @return estado representa el estado seleccionado
     */
    public static String seleccionarEstado(Scanner ingreso){
        String estado="";
        System.out.println("\nSeleccion de estado de vuelo");
        System.out.println("1) Programado");
        System.out.println("2) En Vuelo");
        System.out.println("3) Cancelado");
        System.out.println("4) Aterrizado");
        System.out.println();
        int opcion = ingresarValorEntero(ingreso, "Seleccione opcion", 0,4);
        switch (opcion) {
            case 1:
                estado = "Programado";
                break;
            case 2:
                estado="En Vuelo";
                break;
            case 3:
                estado="Cancelado";
                break;
            case 4:
                estado="Aterrizado";
            default:
                break;
        }
        return estado;
    }

    /**
     * Metodo que carga al arreglo de valores
     * 
     * @param arregloEstado representa un arreglo de estados
     * @param arregloNumeroVuelo representa un arreglo de numeros de vuelo
     */
    public static void cargarArreglo(String[] arregloEstado, int[] arregloNumeroVuelo){
        System.out.println("\nCargando arreglo");
        for (int i = 0; i < arregloNumeroVuelo.length; i++) {
              arregloEstado[i] = seleccionarEstado(new Scanner(System.in));
              arregloNumeroVuelo[i] = ingresarValorEntero(new Scanner(System.in), "Ingrese numero de vuelo", 0, Integer.MAX_VALUE);
        }
    }

    /**
     * Metodo que muestra los elementos del arreglo
     * 
     * @param arregloEstado representa un arreglo de estados
     * @param arregloNumeroVuelo representa un arreglo de numeros de vuelo
     */
    public static void mostrarElementos2arreglos(String[] arregloEstado, int[] arregloNumeroVuelo){
        System.out.println("\nMostrando elementos del arreglo");
        for (int i = 0; i < arregloNumeroVuelo.length; i++) {
            System.out.println("Vuelo: " + arregloNumeroVuelo[i] + " Estado: " + arregloEstado[i]);
        }   
    }

    /**
     * Metodo que muestra los elementos del arreglo
     * @param arregloNumeroVuelo representa un arreglo de numeros de vuelo
     */
     public static void mostrarArregloNumeroVuelo(int[] arregloNumeroVuelo){
        System.out.println("\nMostrando elementos del arreglo");
        for (int i = 0; i < arregloNumeroVuelo.length; i++) {
            System.out.println("Vuelo: " + arregloNumeroVuelo[i]);
        }   
    }

    /**
     * Metodo que busca un numero de vuelo en el arreglo y muestra su estado
     * 
     * @param arregloNumeroVuelo representa un arreglo de numeros de vuelo
     * @param arregloEstadoVuelo representa un arreglo de estados
     * @param vuelo representa el numero de vuelo a buscar
     */
    public static void buscarNumeroVuelo(int[] arregloNumeroVuelo,String[] arregloEstadoVuelo,int vuelo){
        for (int i = 0; i < arregloNumeroVuelo.length; i++) {
            if(arregloNumeroVuelo[i] == vuelo ){
                System.out.println("Estado Actual: "+arregloEstadoVuelo[i]);
                System.out.println("Posicion en el arreglo: "+i);
                break;
            }
        }
    }

    /**
     * Metodo que muestra la cantidad de vuelos por estado
     * 
     * @param arregloEstadoVuelo representa un arreglo de estados
     */
    public static void mostrarCantidadVueloPorEstado(String[] arregloEstadoVuelo,String estado){
        int cantidad = 0;
        for (String arregloEstadoVuelo1 : arregloEstadoVuelo) {
            if (arregloEstadoVuelo1.equals(estado)) {
                cantidad++;
            }
        }
        System.out.println("\nCantidad de vuelos con estado " + estado + ": " + cantidad);
    }

    /**
     * Metodo que genera un nuevo arreglo con los elementos de numero de vuelo
     * que tienen el estado seleccionado
     * 
     * @param arregloEstado representa un arreglo de estados
     * @param arregloNumeroVuelo representa un arreglo de numeros de vuelo
     * @param estado representa el estado seleccionado
     * @return resultado representa un arreglo con los numeros de vuelo que tienen el estado seleccionado
     */
    public static int[] obtenerArregloNumeroVueloPorEstado(String[] arregloEstado, int[] arregloNumeroVuelo,String estado){
        int[] resultado = new int[arregloEstado.length]; 
        int i=0;
        for (int j=0; j<arregloEstado.length;j++) {
            if(arregloEstado[j].equals(estado)){
                resultado[i]=arregloNumeroVuelo[j];
                i++;
            }
        }
        return resultado;
    }
}
