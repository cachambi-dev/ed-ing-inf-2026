package ed2026.TP5;

import java.util.Date;

public class GestorTareas {
    private SimpleLinkedList<Tarea> tareas;

    public GestorTareas() {
        tareas = new SimpleLinkedList<>();
    }

    public GestorTareas(SimpleLinkedList<Tarea> tareas) {
        this.tareas = tareas;
    }

    public void setTareas(SimpleLinkedList<Tarea> tareas) {
        this.tareas = tareas;
    }

    public SimpleLinkedList<Tarea> getTareas() {
        return tareas;
    }

    public void agregarTarea(Tarea tarea) {
        this.tareas.addLast(tarea);
    }

    public void completarTareas(int idTarea) {
        for (Tarea t : tareas) {
            if (t.getId() == idTarea) {
                t.setCompletada(true);
                break;
            }
        }
    }

    public void completarTarea(int idTarea) {
        completarTareas(idTarea);
    }

    public SimpleLinkedList<Tarea> devolverTareasPorResponsable(String responsable) {
        SimpleLinkedList<Tarea> aux = new SimpleLinkedList<>();
        for (Tarea t : this.tareas) {
            if (t.getResponsable().equals(responsable)) {
                aux.addLast(t);
            }
        }
        return aux;
    }

    public void mostrarTareasPendientes() {
        for (Tarea tarea : tareasPendientes()) {
            System.out.println(tarea);
        }
    }

    public SimpleLinkedList<Tarea> tareasPendientes() {
        SimpleLinkedList<Tarea> pendientes = new SimpleLinkedList<>();
        for (Tarea tarea : tareas) {
            if (!tarea.getCompletada()) {
                pendientes.addLast(tarea);
            }
        }
        return pendientes;
    }

    public void eliminarTarea(int idTarea){
        int index = 0;
        for (Tarea tarea : tareas) {
            if (tarea.getId() == idTarea) {
                tareas.remove(index);
                return;
            }
            index++;
        }
    }

    public SimpleLinkedList<Tarea> devolverTareasProximas(String responsable){
        SimpleLinkedList<Tarea> aux = new SimpleLinkedList<>();
        Date fechaActual = new Date();
        for (Tarea t : this.tareas) {
            if (t.getResponsable().equals(responsable) && t.getFechaLimite().after(fechaActual)) {
                aux.addLast(t);
            }
        }
        return aux;
    }

}
