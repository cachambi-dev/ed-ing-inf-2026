import java.util.Scanner;

public class Punto4 {

  public static void main(String[] args) {
      try (Scanner entrada = new Scanner(System.in)) {
          boolean band = true;
          double lado, radio, altura, base, area;
          while (band) {
              int opcion = ingresarOpcion(entrada);
              switch (opcion) {
                  case 1 -> {
                      lado = leerEntradaValor(entrada, "Ingrese lado del cuadrado", 0.0);
                      area = calcularAreaCuadrado(lado);
                      mostrarResusltado("Cuadrado", area);
                  }
                  case 2 -> {
                      base = leerEntradaValor(entrada, "Ingrese base del triangulo", 0.0);
                      altura = leerEntradaValor(entrada, "Ingrese altura del triangulo", 0.0);
                      area = calcularAreaTriangulo(base, altura);
                      mostrarResusltado("Triangulo", area);
                  }
                  case 3 -> {
                      radio = leerEntradaValor(entrada, "Ingrese radio del circulo", 0.0);
                      area = calcularAreaCirculo(radio);
                      mostrarResusltado("Circulo", area);
                  }
                  case 4 -> {
                      band = false;
                      System.out.println("Fin del programa");
                  }
                      
                  default -> System.out.println("Ingrese una opcion valida del menu");
              }
              
          } }
  }

  /**
   * Muestra el resultado
   */
  private static void mostrarResusltado(String tipo, double area) {
    System.out.printf("El area del %s es: %.2f%n", tipo, area);
  }

  /**
   * Muestra el menu principal
   */
  private static int ingresarOpcion(Scanner entrada) {
    while (true) {
      System.out.printf("%n--- Menu ---%n");
      System.out.println("1) Área de Cuadrado");
      System.out.println("2) Área de Triángulo");
      System.out.println("3) Área de Círculo");
      System.out.println("4) Salir");
      System.out.println("Ingrese opcion:");
      if (entrada.hasNextInt()) {
        return entrada.nextInt();
      } else {
        System.out.println("[Error] Debe ingresar un número entero.");
        entrada.next();
      }

    }
  }

  /**
   * Calcula area del cuadrado
   */
  private static double calcularAreaCuadrado(double lado) {
    return lado * lado;
  }

  /**
   * Calcula area del triangulo
   */
  private static double calcularAreaTriangulo(double base, double altura) {
    return base * altura / 2.0;
  }

  /**
   * Calcula area del circulo
   */
  private static double calcularAreaCirculo(double radio) {
    double pi = 3.14;
    return pi * (radio * radio);
  }

  /**
   * Lee valor validos y positivos
   */
  private static double leerEntradaValor(Scanner entrada, String mensaje, double min) {
    double valor;
    while (true) {
      System.out.println(mensaje);
      if (entrada.hasNextDouble()) {
        valor = entrada.nextDouble();
        if (valor >= min) {
          return valor;
        }
        System.out.println("[Error] El valor debe ser positivo");
      } else {
        System.out.println("[Error] Debe ingresar un núnero decimal valido.");
        entrada.next();
      }

    }
  }

}
