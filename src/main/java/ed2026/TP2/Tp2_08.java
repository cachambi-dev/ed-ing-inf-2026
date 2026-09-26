package ed2026.TP2;

public class Tp2_08 {
    public static void main(String[] args) {
        Empleado[] empleados = {
            new Empleado(101, "Ana", 500.0),
            new Empleado(102, "Beto", 700.0),
            new Empleado(103, "Carla", 600.0)
        };

        int legajoBuscado = 102;
        boolean encontrado = false;
        for (Empleado empleado : empleados) {
            if (empleado != null && empleado.getLegajo() == legajoBuscado) {
                System.out.println("Encontrado: " + empleado.getNombre());
                encontrado = true;
                break;
            }
        }
        if (!encontrado) {
            System.out.println("Legajo no encontrado.");
        }

        Empleado mayorSueldo = null;
        for (Empleado empleado : empleados) {
            if (empleado != null && (mayorSueldo == null || empleado.getSueldo() > mayorSueldo.getSueldo())) {
                mayorSueldo = empleado;
            }
        }
        if (mayorSueldo != null) {
            System.out.println("Mayor sueldo: " + mayorSueldo.getNombre());
        }
    }

    public static class Empleado {
        private int legajo;
        private String nombre;
        private double sueldo;

        public Empleado(int legajo, String nombre, double sueldo) {
            this.legajo = legajo;
            this.nombre = nombre;
            this.sueldo = sueldo;
        }

        public int getLegajo() {
            return legajo;
        }

        public String getNombre() {
            return nombre;
        }

        public double getSueldo() {
            return sueldo;
        }
    }
}
