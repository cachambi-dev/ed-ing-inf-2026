package puntos.p1;

import java.util.InputMismatchException;
import java.util.Scanner;

class Punto1 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double radio = leerDecimalPositivo(
                scanner,
                "Ingrese radio del cilindro: ",
                0.0);
        double altura = leerDecimalPositivo(
                scanner,
                "Ingrese altura del cilindro: ",
                0.0);
        scanner.close();

        Cilindro cilindro = new Cilindro();
        cilindro.setAltura(altura);
        cilindro.setRadio(radio);
        System.out.printf(
                "Volumen: %.2f%nArea Total: %.2f",
                cilindro.calcularVolumen(),
                cilindro.calcularAreaTotal());
    }

    /**
     * Lee y valida decimales desde teclado garantizando que sean valores positivos
     */
    public static double leerDecimalPositivo(Scanner entrada, String mensaje, double min) {
        double valor;
        while (true) {
            System.out.println(mensaje);
            try {
                valor = entrada.nextDouble();
                return valor;

            } catch (InputMismatchException e) {
                System.out.println("[Error] Debe ingresar un numero decimal valido.");
                entrada.next();
            }
        }
    }

}