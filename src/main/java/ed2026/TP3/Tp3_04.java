package ed2026.TP3;

import ed2026.Helper.Helper;

public class Tp3_04 {
    public static void main(String[] args) {
        Stack<Tarea> pila = new Stack<>();

        agregarTarea(pila, new Tarea("T-101", "Alta", "Diseñar interfaz"));
        agregarTarea(pila, new Tarea("T-102", "Media", "Revisar código"));
        agregarTarea(pila, new Tarea("T-103", "Baja", "Actualizar documentación"));
        agregarTarea(pila, new Tarea("T-104", "Alta", "Corregir errores"));
        agregarTarea(pila, new Tarea("T-105", "Baja", "Pruebas rápidas"));

        System.out.println("Estado inicial: " + pila);

        Tarea buscada = buscarTareaPorId(pila, "T-102");
        System.out.println("Tarea buscada T-102: " + buscada);

        System.out.println("Cantidad de tareas altas: " + contarTareasAlta(pila));

        eliminarTareasPorPrioridad(pila, "Baja");
        System.out.println("Estado después de eliminar tareas bajas: " + pila);

        String id = Helper.nextString("Ingrese un id para buscar: ");
        Tarea resultado = buscarTareaPorId(pila, id);
        System.out.println("Resultado de la búsqueda: " + resultado);
    }

    public static void agregarTarea(Stack<Tarea> pila, Tarea tarea) {
        pila.push(tarea);
    }

    public static void eliminarTareasPorPrioridad(Stack<Tarea> pila, String prioridad) {
        Stack<Tarea> auxiliar = new Stack<>(Math.max(1, pila.size()));

        while (!pila.empty()) {
            Tarea tarea = pila.pop();
            if (!tarea.getPrioridad().equalsIgnoreCase(prioridad)) {
                auxiliar.push(tarea);
            }
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }
    }

    public static Tarea buscarTareaPorId(Stack<Tarea> pila, String idTarea) {
        Stack<Tarea> auxiliar = new Stack<>(Math.max(1, pila.size()));
        Tarea encontrado = null;

        while (!pila.empty()) {
            Tarea tarea = pila.pop();
            if (encontrado == null && tarea.getIdTarea().equals(idTarea)) {
                encontrado = tarea;
            }
            auxiliar.push(tarea);
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }

        return encontrado;
    }

    public static int contarTareasAlta(Stack<Tarea> pila) {
        Stack<Tarea> auxiliar = new Stack<>(Math.max(1, pila.size()));
        int contador = 0;

        while (!pila.empty()) {
            Tarea tarea = pila.pop();
            if (tarea.getPrioridad().equalsIgnoreCase("Alta")) {
                contador++;
            }
            auxiliar.push(tarea);
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }

        return contador;
    }

    public static class Tarea {
        private String idTarea;
        private String prioridad;
        private String descripcion;

        public Tarea(String idTarea, String prioridad, String descripcion) {
            this.idTarea = idTarea;
            this.prioridad = prioridad;
            this.descripcion = descripcion;
        }

        public String getIdTarea() {
            return idTarea;
        }

        public String getPrioridad() {
            return prioridad;
        }

        public String getDescripcion() {
            return descripcion;
        }

        @Override
        public String toString() {
            return "Tarea{" +
                    "idTarea='" + idTarea + '\'' +
                    ", prioridad='" + prioridad + '\'' +
                    ", descripcion='" + descripcion + '\'' +
                    '}';
        }
    }
}
