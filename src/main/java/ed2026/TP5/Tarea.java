package ed2026.TP5;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Tarea {
    private int id;
    private String titulo;
    private String responsable;
    private Date fechaLimite;
    private boolean completada;

    public Tarea() {
        this.id = 0;
        this.titulo = "";
        this.responsable = "";
        this.fechaLimite = new Date();
        this.completada = false;
    }

    public Tarea(int id, String titulo, String responsable, Date fechaLimite, boolean completada) {
        this.id = id;
        this.titulo = titulo;
        this.responsable = responsable;
        this.fechaLimite = fechaLimite;
        this.completada = completada;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCompletada(boolean completada) {
        this.completada = completada;
    }

    public void setFechaLimite(Date fechaLimite) {
        this.fechaLimite = fechaLimite;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getId() {
        return id;
    }

    public String getResponsable() {
        return responsable;
    }

    public Date getFechaLimite() {
        return fechaLimite;
    }

    public String getTitulo() {
        return titulo;
    }

    public boolean getCompletada() {
        return completada;
    }
    

    @Override
    public String toString() {
        return "Tarea{" +
                "id=" + id +
                ", titulo='" + titulo + '\'' +
                ", responsable='" + responsable + '\'' +
                ", fechaLimite=" + new SimpleDateFormat("dd/MM/yyyy").format(fechaLimite) +
                ", completada=" + completada +
                '}';
    }
}
