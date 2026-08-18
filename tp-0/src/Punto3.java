import java.util.Scanner;
import java.util.Locale.Category;

public class Punto3 {
  public static void main(String[] args) {
    Scanner entrada = new Scanner(System.in);
    int totalPreguntas = leerEnteroPositivo(entrada, "Ingrese la cantidad total de preguntas",
      1, Integer.MAX_VALUE);
    int correctas = leerEnteroPositivo(entrada,"Ingrese la cantidad de respuestas correctas",
      0, totalPreguntas);
        entrada.close();

    double porcentaje = calcularPorcentaje(correctas, totalPreguntas);
    String categoria = clasificarRendimiento(porcentaje);
    
    System.out.printf("%n--- Resultado ---%n");
    System.out.printf("Porcentaje: %.2f%% | Categoria: %s%n",porcentaje, categoria);
    
  }


/**
* Lee y valida enteros desde teclado garantizando que se encuentren en el rango permitido.
*/
private static int leerEnteroPositivo(Scanner entrada, String mensaje, int min, int max){
  int valor;
  while (true) {
    System.out.println(mensaje);
    if (entrada.hasNextInt()) {
      valor = entrada.nextInt();
      if(valor >= min && valor <= max){
        return valor;
      }

      System.out.printf("[Error] El valor debe estar entre %d y %d. %n",min, max);
    }else {
      System.out.println("[Error] Debe ingresar un número entero válido.");
      entrada.next();
    }
    
  }
}


/**
* Calcula el porcentaje de rendimiento evitando la división entera.
*/
public static double calcularPorcentaje(int correctas, int total){
  return ((double)correctas/total)*100.0;
}

    /**
    * Clasifica el rendiento segun las especificaciones.
    * @param porcentaje
    * @return categoria
    **/
  public  static String clasificarRendimiento(double porcentaje){
     if (porcentaje >= 90){
       return "Excelente";
     }else if (porcentaje >=70){
       return "Muy Bueno";
     }else if (porcentaje>=50){
       return "Aprobado";
     }else {
       return "Desaprobado";
     }
  }
}
