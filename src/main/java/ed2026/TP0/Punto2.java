
import java.util.Random;
import java.util.Scanner;

public class Punto2 {

    public static void main(String[] args) {
        int cantidadMediciones;
        try (Scanner entrada = new Scanner(System.in)) {
            System.out.println("Ingrese catidad de mediciones");
            cantidadMediciones = entrada.nextInt();
        }
        float temperaturaPromedio;
        int heladas = 0, calidas = 0, numeroRandom, sumaTemperatura = 0;

        for (int i = 0; i < cantidadMediciones; i++) {
            numeroRandom = generarNumeroAleatorio();
            System.out.println("Temperatura: " + numeroRandom);
            sumaTemperatura += numeroRandom;
            if (numeroRandom < 0) {
                heladas += 1;
            } else if (numeroRandom >= 30) {
                calidas += 1;
            }
        }

        temperaturaPromedio = sumaTemperatura / cantidadMediciones;

        System.out.println("Promedio de temperatura del dia: " + temperaturaPromedio);
        System.out.println("Cantidad de Heladas: " + heladas);
        System.out.println("Cantidad de Calidas: " + calidas);
    }

    static int generarNumeroAleatorio() {
        int min = -10, max = 40, numeroAleatorio = 0;
        Random random = new Random();
        boolean band = true;
        while (band) {
            numeroAleatorio = random.nextInt(max - min + 1) + min;
            if (numeroAleatorio >= min && numeroAleatorio <= max) {
                band = false;
            }
        }
        return numeroAleatorio;
    }
}
