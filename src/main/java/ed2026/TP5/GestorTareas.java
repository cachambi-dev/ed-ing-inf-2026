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
        for (Tarea t : this.tareas) {
            if (!t.getCompletada()) {
                System.out.println(t);

            }
        }
    }

    public void eliminarTarea(int idTarea){
        SimpleLinkedList<Tarea> aux = new SimpleLinkedList<>();

        for(Tarea t: this.tareas){
            if (t.getId() != idTarea) {
                aux.addFirst(t);
            }
        }
        while (this.tareas.size() > 0) {
            this.tareas.removeFirst();
        }

        while (aux.size()>0) {
            this.tareas.addFirst(aux.removeFirst());
        }
    }

    public SimpleLinkedList<Tarea> devolverTareasProximas(String responsable){
        SimpleLinkedList<Tarea> aux = new SimpleLinkedList<>();
        Date fechaActual = new Date();
        for (Tarea t : this.tareas) {
            if (t.getResponsable().equals(responsable) && !t.getCompletada() && t.getFechaLimite().after(fechaActual)) {
                aux.addLast(t);
            }
        }
        return aux;
    }

}
