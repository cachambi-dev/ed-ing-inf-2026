package ed2026.TP5;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Suscripcion {
    private int idSuscripcion;
    private String usuario;
    private String plan;
    private Date fechaInicio;

    public Suscripcion(){
        this.idSuscripcion = 0;
        this.usuario = "";
        this.plan = "";
        this.fechaInicio = new Date();
    }

    public Suscripcion(int idSuscripcion, String usuario, String plan, Date fechaInicio) {
        this.idSuscripcion = idSuscripcion;
        this.usuario = usuario;
        this.plan = plan;
        this.fechaInicio = fechaInicio;
    }

    public int getIdSuscripcion() {
        return idSuscripcion;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getPlan() {
        return plan;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public void setIdSuscripcion(int idSuscripcion) {
        this.idSuscripcion = idSuscripcion;
    }

    public void setPlan(String plan) {
        this.plan = plan;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    @Override 
    public String toString() {
        String fechaFormateada = new SimpleDateFormat("dd/MM/yyyy").format(fechaInicio);
        return "Suscripcion [idSuscripcion=" + idSuscripcion + ", usuario=" + usuario + ", plan=" + plan
            + ", fechaInicio=" + fechaFormateada + "]";
    }
}