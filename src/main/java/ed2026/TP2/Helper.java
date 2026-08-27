package ed2026.TP2;

import java.util.Scanner;

/**
 * Clase helper con metodos estaticos para la validacion de entradas
 * Helper
 */
public class Helper {
    /**
     * Scanner estatico para ser usado en toda la aplicacion
     */
    static Scanner scanner = new Scanner(System.in);

    /**
     * Metodo que valida el ingreso de caracteres
     * @param scanner de tipo Scanner
     * @param mensaje de tipo String
     * @return caracter de tipo Character
     */
     public static Character  nextCharacter(Scanner scanner,String mensaje){
        Character caracter;
        while (true) { 
         System.out.println(mensaje);
         if(scanner.hasNext(".")){
            caracter = scanner.next().charAt(0);
            return caracter;
         }
         System.out.println("[Error]: No ingresaste in caracter"); 
        }
    }

     /***
     * Metodo que valida el ingreso de valores enteros positivos
     */
    public static Integer nextInteger(Scanner scanner, String mensaje, int min) {
        int valor;
        while (true) {
            System.out.println(mensaje);
            if (scanner.hasNextInt()) {
                valor = scanner.nextInt();
                if (valor > min) {
                    return valor;
                }
                System.out.println("[Error] Valor invalido, debe ingresar valor positivo");
            } else {
                System.out.println("[Error] Valor invalido, debe ser un numero entero");
            }
        }
    }

    /**
     * Metodo que valida el ingreso de valores enteros positivos
     */
    public static Integer nextInteger(String mensaje, int min ){
        return nextInteger(Helper.scanner,mensaje, min);
    }

    /**
     * Metodo que valida el ingreso de caracteres
     */
    public static Character nexCharacter(String mensaje){
        return nextCharacter(Helper.scanner, mensaje);
    }

}
