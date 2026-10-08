package ed2026.TP5;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;

import ed2026.Helper.Helper;

public class TP5_04 {
    public static void main(String[] args) {
        GestorTareas gestor = mockupTareas();

        int opcion;
        do {
            mostrarMenu();
            opcion = Helper.nextInteger("Seleccione una opcion: ", -1);

            switch (opcion) {
                case 1 -> System.out.println("\nTodas las tareas:\n" + gestor.getTareas());
                case 2 -> {
                    System.out.println("\nTareas pendientes:");
                    gestor.mostrarTareasPendientes();
                }
                case 3 -> {
                    int id = Helper.nextInteger("Ingrese el ID de la tarea a completar: ", 0);
                    gestor.completarTareas(id);
                    System.out.println("Tarea actualizada.");
                }
                case 4 -> {
                    String responsable = Helper.nextString("Ingrese el responsable: ");
                    System.out.println("\nTareas de " + responsable + ":");
                    System.out.println(gestor.devolverTareasPorResponsable(responsable));
                }
                case 5 -> {
                    String responsable = Helper.nextString("Ingrese el responsable: ");
                    System.out.println("\nTareas proximas de " + responsable + ":");
                    System.out.println(gestor.devolverTareasProximas(responsable));
                }
                case 6 -> {
                    int id = Helper.nextInteger("Ingrese el ID de la tarea a eliminar: ", 0);
                    gestor.eliminarTarea(id);
                    System.out.println("Tarea eliminada si existia.");
                }
                case 7 -> agregarTarea(gestor);
                case 0 -> System.out.println("Fin del programa.");
                default -> System.out.println("Opcion invalida.");
            }
        } while (opcion != 0);
    }

    private static void mostrarMenu() {
        System.out.println("\n===== Gestor de tareas =====");
        System.out.println("1. Mostrar todas las tareas");
        System.out.println("2. Mostrar tareas pendientes");
        System.out.println("3. Completar una tarea");
        System.out.println("4. Buscar tareas por responsable");
        System.out.println("5. Buscar tareas proximas por responsable");
        System.out.println("6. Eliminar una tarea");
        System.out.println("7. Agregar una tarea");
        System.out.println("0. Salir");
    }

    private static void agregarTarea(GestorTareas gestor) {
        int id = Helper.nextInteger("Ingrese el ID: ", 0);
        String titulo = Helper.nextString("Ingrese el titulo: ");
        String responsable = Helper.nextString("Ingrese el responsable: ");
        Date fechaLimite = Helper.nextDate("Ingrese la fecha limite");
        String respuesta = Helper.nextString("La tarea esta completada? (s/n): ");
        boolean completada = respuesta.equalsIgnoreCase("s");

        gestor.agregarTarea(new Tarea(id, titulo, responsable, fechaLimite, completada));
        System.out.println("Tarea agregada.");
    }

    static GestorTareas mockupTareas() {
        GestorTareas gestor = new GestorTareas();

        gestor.agregarTarea(new Tarea(1, "Analizar requisitos", "Ana", fechaRelativa(-15), true));
        gestor.agregarTarea(new Tarea(2, "Diseñar modelo", "Bruno", fechaRelativa(-7), false));
        gestor.agregarTarea(new Tarea(3, "Implementar lista", "Carla", fechaRelativa(-2), true));
        gestor.agregarTarea(new Tarea(4, "Escribir pruebas", "Ana", fechaRelativa(1), false));
        gestor.agregarTarea(new Tarea(5, "Revisar documentación", "Bruno", fechaRelativa(3), false));
        gestor.agregarTarea(new Tarea(6, "Corregir errores", "Carla", fechaRelativa(7), false));
        gestor.agregarTarea(new Tarea(7, "Preparar entrega", "Ana", fechaRelativa(14), false));
        gestor.agregarTarea(new Tarea(8, "Actualizar README", "Bruno", fechaRelativa(21), true));
        gestor.agregarTarea(new Tarea(9, "Ejecutar integración", "Carla", fechaRelativa(30), false));
        gestor.agregarTarea(new Tarea(10, "Presentar avance", "Ana", fechaRelativa(45), false));

        return gestor;
    }

    private static Date fechaRelativa(int dias) {
        return Date.from(Instant.now().plus(dias, ChronoUnit.DAYS));
    }
}
