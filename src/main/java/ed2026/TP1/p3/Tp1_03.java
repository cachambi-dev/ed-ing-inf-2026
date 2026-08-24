package main.java.ed2026.TP1.p3;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.Scanner;

public class Tp1_03 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("==================================================");
        System.out.println("       SISTEMA DE GESTIÓN DE RESERVAS DE HOTEL    ");
        System.out.println("==================================================");

        // 1. Crear Reserva 1 (Reserva Futura)
        System.out.println("\n--- INGRESO DE DATOS: RESERVA 1 (Futura) ---");
        Reserva reserva1 = ingresarReserva(scanner, 1);

        // 2. Crear Reserva 2 (Reserva Pasada / Finalizada)
        System.out.println("\n--- INGRESO DE DATOS: RESERVA 2 (Finalizada o Pasada) ---");
        Reserva reserva2 = ingresarReserva(scanner, 2);

        // 3. Solicitar Fecha de Consulta
        System.out.println("\n--- CONSULTA DE ESTADO ---");
        LocalDate fechaConsulta = leerFecha(scanner, "Ingrese la fecha de consulta (formato YYYY-MM-DD): ");

        // 4. Procesar y mostrar información de ambas reservas
        Reserva[] reservas = {reserva1, reserva2};

        for (int i = 0; i < reservas.length; i++) {
            Reserva res = reservas[i];
            System.out.println("\n--------------------------------------------------");
            System.out.println("INFORMACIÓN DE LA RESERVA #" + (i + 1));
            System.out.println("Detalles: " + res.toString());

            // Consultar si está activa
            boolean activa = res.estaActiva(fechaConsulta);
            System.out.println("¿Está activa en la fecha " + fechaConsulta + "?: " + (activa ? "SÍ (En curso)" : "NO"));

            // Consultar días faltantes o transcurridos
            int dias = res.calcularDiasRestantesOTranscurridos(fechaConsulta);
            if (dias > 0) {
                System.out.println("Estado de días: Faltan " + dias + " días para el Check-In.");
            } else if (dias == 0) {
                System.out.println("Estado de días: La reserva se encuentra en transcurso en esa fecha.");
            } else {
                System.out.println("Estado de días: Han transcurrido " + (-dias) + " días desde el Check-Out.");
            }

            // Simulación de prórroga
            System.out.print("Ingrese cantidad de días para simular una prórroga de estadía: ");
            int diasProrroga = leerEntero(scanner, 1, 365);
            LocalDate nuevaFechaCheckOut = res.simularProrroga(diasProrroga);
            System.out.println("-> Check-Out original: " + res.getFechaCheckOut());
            System.out.println("-> Nueva fecha de Check-Out simulada (+ " + diasProrroga + " días): " + nuevaFechaCheckOut);
            System.out.println("-> (Nota: El estado original de la reserva permanece sin alterar: " + res.getFechaCheckOut() + ")");
        }

        System.out.println("\n==================================================");
        System.out.println("          FIN DEL PROGRAMA DE RESERVAS            ");
        System.out.println("==================================================");
        scanner.close();
    }

    /**
     * Solicita datos por consola para instanciar un objeto Reserva.
     */
    private static Reserva ingresarReserva(Scanner scanner, int numero) {
        System.out.print("Código de reserva #" + numero + ": ");
        String codigo = scanner.nextLine().trim();

        System.out.print("Nombre del huésped: ");
        String huesped = scanner.nextLine().trim();

        LocalDate checkIn = leerFecha(scanner, "Fecha de Check-In (YYYY-MM-DD): ");
        LocalDate checkOut = leerFecha(scanner, "Fecha de Check-Out (YYYY-MM-DD): ");

        return new Reserva(codigo, huesped, checkIn, checkOut);
    }

    /**
     * Lee y valida una fecha ingresada por el usuario con control de formato.
     */
    private static LocalDate leerFecha(Scanner scanner, String mensaje) {
        while (true) {
            System.out.print(mensaje);
            String input = scanner.nextLine().trim();
            try {
                return LocalDate.parse(input);
            } catch (DateTimeParseException e) {
                System.out.println("[Error] Formato de fecha inválido. Ingrese con formato YYYY-MM-DD (ej: 2026-05-15).");
            }
        }
    }

    /**
     * Lee un número entero dentro de un rango permitido.
     */
    private static int leerEntero(Scanner scanner, int min, int max) {
        while (true) {
            try {
                int valor = Integer.parseInt(scanner.nextLine().trim());
                if (valor >= min && valor <= max) {
                    return valor;
                }
                System.out.printf("[Error] El valor debe estar entre %d y %d: ", min, max);
            } catch (NumberFormatException e) {
                System.out.print("[Error] Debe ingresar un número entero válido: ");
            }
        }
    }
}
