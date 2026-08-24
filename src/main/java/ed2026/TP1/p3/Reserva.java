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
        validarFechas();
    }

    public void setFechaCheckOut(LocalDate fechaCheckOut) {
        this.fechaCheckOut = fechaCheckOut;
        validarFechas();
    }

    public void setNombreHuesped(String nombreHuesped) {
        this.nombreHuesped = nombreHuesped;
    }

    public boolean estaActiva(LocalDate fechaConsulta) {
        if (fechaConsulta == null) return false;
        return (fechaConsulta.isAfter(fechaCheckIn) || fechaCheckIn.isEqual(fechaConsulta)) && fechaConsulta.isBefore(fechaCheckOut);
    }

    public int calcularDiasRestantesOTranscurridos(LocalDate fechaConsulta) {
        if (fechaConsulta == null) return 0;
        if (fechaConsulta.isBefore(this.fechaCheckIn)) {
            return (int) ChronoUnit.DAYS.between(fechaConsulta, this.fechaCheckIn);
        } else if (estaActiva(fechaConsulta)) {
            return 0;
        } else {
            int diasPasados = (int) ChronoUnit.DAYS.between(this.fechaCheckOut, fechaConsulta);
            return -diasPasados;
        }
    }

    public LocalDate simularProrroga(int cantidadDias) {
        return this.fechaCheckOut.plusDays(cantidadDias);
    }

    @Override
    public String toString() {
        return "Reserva ["
                + "Código: " + codigoReserva
                + ", Huésped: '" + nombreHuesped + '\''
                + ", Check-In: " + fechaCheckIn
                + ", Check-Out: " + fechaCheckOut
                + ']';
    }
}
