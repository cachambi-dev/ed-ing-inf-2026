package puntos.p1;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Cilindro {

    private double radio;
    private double altura;

    public Cilindro() {
        this.radio = 1.0;
        this.altura = 1.0;
    }

    public Cilindro(double radio, double altura) {
        this.radio = radio;
        this.altura = altura;
    }

    public double getAltura() {
        return altura;
    }

    public double getRadio() {
        return radio;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }

    public double calcularVolumen() {
        return Math.PI * (this.radio * this.radio) * this.altura;
    }

    public double calcularAreaTotal() {
        return 2 * Math.PI * this.radio * (this.radio + this.altura);
    }

    public void mostrarResultado() {
        System.out.printf(
            "Volumen: %.2f%nArea Total: %.2f",
            calcularVolumen(),
            calcularAreaTotal()
        );
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double radio = leerDecimalPositivo(
            scanner,
            "Ingrese radio del cilindro: ",
            0.0
        );
        double altura = leerDecimalPositivo(
            scanner,
            "Ingrese altura del cilindro: ",
            0.0
        );
        scanner.close();

        Cilindro cilindro = new Cilindro();
        cilindro.setAltura(altura);
        cilindro.setRadio(radio);
        cilindro.mostrarResultado();
    }

    /**
    * Lee y valida decimales desde teclado garantizando que sean valores positivos
    */
      public static double leerDecimalPositivo(Scanner entrada,String mensaje, double min){
        double valor;
        while(true){
          System.out.println(mensaje);
          try{
              valor = entrada.nextDouble();
             if (valor>min) {
                return valor;
             }
             System.out.println("[Error] El valor debe ser positivo");
          }catch(InputMismatchException e){
            System.out.println("[Error] Debe ingresar un numero decimal valido.");
            entrada.next();
          }
        }
      }
}
