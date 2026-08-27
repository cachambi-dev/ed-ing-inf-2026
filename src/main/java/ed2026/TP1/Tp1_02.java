package ed2026.TP1;

import java.util.Scanner;

public class Tp1_02 {

    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            CuentaBancaria cuenta = new CuentaBancaria("Juan Osvaldo", 200000.0, "ahorro");
            
            Boolean salirDelMenu = false;
            // Bucle para mostrar el menú y procesar las opciones del usuario
            while (!salirDelMenu) {
                // Mostrar el menú
                System.out.println("=== Menú de opciones ===");
                System.out.println("1. Mostrar información de la cuenta");
                System.out.println("2. Depositar dinero");
                System.out.println("3. Retirar dinero");
                System.out.println("4. Salir");
                System.out.print("Seleccione una opción: ");
                int opcion = Integer.parseInt(scanner.nextLine());
                switch (opcion) {
                    case 1: {
                        // Mostrar información de la cuenta
                        System.out.println("Titular: " + cuenta.getTitular());
                        System.out.println("Saldo: " + cuenta.getSaldo());
                        System.out.println("Tipo de cuenta: " + cuenta.getTipoCuenta());
                        // cuenta.mostrarInformacion();
                        // System.out.println("\nInformación: " + cuenta.toString() + "\n");
                    }
                    case 2: {
                        // Depositar dinero
                        System.out.print("Ingrese el monto a depositar: ");
                        double montoDeposito = Double.parseDouble(scanner.nextLine());
                        if (montoDeposito <= 0) {
                            System.out.println("El monto a depositar debe ser mayor que cero.");
                        } else {
                            cuenta.depositar(montoDeposito);
                            System.out.println("Depósito realizado. Nuevo saldo: " + cuenta.getSaldo());
                        }
                    }
                    case 3: {
                        // Retirar dinero
                        System.out.print("Ingrese el monto a retirar: ");
                        double montoRetiro = Double.parseDouble(scanner.nextLine());
                        if (montoRetiro <= 0) {
                            System.out.println("El monto a retirar debe ser mayor que cero.");
                        } else if (montoRetiro > cuenta.getSaldo()) {
                            System.out.println("Fondos insuficientes. Saldo actual: " + cuenta.getSaldo());
                        } else {
                            cuenta.retirar(montoRetiro);
                            System.out.println("Retiro realizado. Nuevo saldo: " + cuenta.getSaldo());
                        }
                    }
                    case 4: {
                        salirDelMenu = true;
                    }
                    default: {
                        System.out.println("Opción inválida. Por favor, seleccione una opción válida.");
                    }
                }
            }
        }

    }
}
