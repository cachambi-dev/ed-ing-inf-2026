package main.java.ed2026.TP1.p3;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Reserva {

    private String codigoReserva;
    private String nombreHuesped;
    private LocalDate fechaCheckIn;
    private LocalDate fechaCheckOut;

    public Reserva() {
        this.codigoReserva = "000";
        this.nombreHuesped = "Por confirmar";
        this.fechaCheckIn = LocalDate.now();
        this.fechaCheckOut = LocalDate.now().plusDays(1);
    }

    private void validarFechas() {
        if (this.fechaCheckIn == null || this.fechaCheckOut == null || !this.fechaCheckIn.isBefore(this.fechaCheckOut)) {
            this.fechaCheckIn = LocalDate.now();
            this.fechaCheckOut = LocalDate.now().plusDays(1);
        }
    }

    public Reserva(String codigoReserva, String nombreHuesped, LocalDate fechaCheckIn, LocalDate fechaCheckOut) {
        this.codigoReserva = codigoReserva;
        this.nombreHuesped = nombreHuesped;
        this.fechaCheckIn = fechaCheckIn;
        this.fechaCheckOut = fechaCheckOut;
        validarFechas();
    }

    public String getCodigoReserva() {
        return codigoReserva;
    }

    public LocalDate getFechaCheckIn() {
        return fechaCheckIn;
    }

    public LocalDate getFechaCheckOut() {
        return fechaCheckOut;
    }

    public String getNombreHuesped() {
        return nombreHuesped;
    }

    public void setCodigoReserva(String codigoReserva) {
        this.codigoReserva = codigoReserva;
    }

    public void setFechaCheckIn(LocalDate fechaCheckIn) {
        this.fechaCheckIn = fechaCheckIn;
    }

    public void setFechaCheckOut(LocalDate fechaCheckOut) {
        this.fechaCheckOut = fechaCheckOut;
    }

    public void setNombreHuesped(String nombreHuesped) {
        this.nombreHuesped = nombreHuesped;
    }

    public boolean estaActiva(LocalDate fechaConsulta) {
        if ((fechaConsulta.isAfter(fechaCheckIn) || fechaCheckIn.isEqual(fechaConsulta)) && fechaConsulta.isBefore(fechaCheckOut)) {
            return true;
        }
        return false;
    }

    public int calcularDiasRestantesOTrasncurrido(LocalDate FechaConsulta) {
        if (FechaConsulta.isBefore(this.fechaCheckIn)) {
            return (int) ChronoUnit.DAYS.between(FechaConsulta, this.fechaCheckIn);
        } else if (estaActiva(FechaConsulta)) {
            return 0;
        } else {
            int diasPasados = (int) ChronoUnit.DAYS.between(this.fechaCheckOut, FechaConsulta);
            return -diasPasados;
        }

    }

    public LocalDate simularProrroga(int cantidadDias) {
        return this.fechaCheckOut.plusDays(cantidadDias);
    }

    @Override
    public String toString() {
        return "Reserva{"
                + "codigoReserva='" + codigoReserva + '\''
                + ", nombreHuesped='" + nombreHuesped + '\''
                + ", fechaCheckIn=" + fechaCheckIn
                + ", fechaCheckOut=" + fechaCheckOut
                + '}';
    }
}
