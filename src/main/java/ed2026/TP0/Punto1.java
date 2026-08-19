import java.util.Scanner;

public class Punto1 {

  public static void main(String[] args) {
    Scanner entrada = new Scanner(System.in);
    System.out.println("Ingrese nombre del empleado: ");;
    String nombreEmpleado = entrada.next();
    System.out.println("Ingrese horas trabajadas: ");;
    byte horasTrabajadas = entrada.nextByte();
    System.out.println("Ingrese valor de horas trabajadas: ");;
    float valorHorasTrabajadas = entrada.nextFloat();
    float salarioBruto;
    float salarioNeto;

    entrada.close();    
     salarioBruto = calcularSalarioBruto(horasTrabajadas, valorHorasTrabajadas);

    if (salarioBruto<= 1000000){
     salarioNeto = aplicarDescuento(salarioBruto, 9);  
    }else if(salarioBruto > 1000000 && salarioBruto<= 3000000){
     salarioNeto = aplicarDescuento(salarioBruto, 12);  
    }else {
     salarioNeto = aplicarDescuento(salarioBruto, 15);  
    }

    System.out.println("El empleado: "+ nombreEmpleado);
    System.out.println("El salario bruto es: "+ salarioBruto);
    System.out.println("El salario neto es:"+salarioNeto);

    
  }


 /**
   Funcion que calcula el salario bruto
   @return salarioBruto
 */
  public static float calcularSalarioBruto(byte horasTrab, float valorHora){
    if (horasTrab>40){      
    byte  horasExtras = (byte) (horasTrab - 40);
    float pagoExtra = (float) (horasExtras * (valorHora * 1.5)); 
    return horasExtras + pagoExtra;
    }else{
      return horasTrab *valorHora;
    }
  }

  /**
  Funcion que calcula el descuento aplicado al salario bruto
  @return salarioNeto
  */
  public static float aplicarDescuento(float sueldoBruto, float descuento){
    float montoDescuento = sueldoBruto * (descuento/100);
    return  sueldoBruto - montoDescuento;
  } 
}
