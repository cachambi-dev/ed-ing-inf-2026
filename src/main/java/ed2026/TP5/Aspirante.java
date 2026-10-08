package ed2026.TP5;

public class Aspirante {
    private String dni;
    private String nombre;
    private String apellido;
    private double notaEscrito;
    private double notaOral;
    private double notaPractico;

    public Aspirante() {
        this.dni = "";
        this.nombre = "";
        this.apellido = "";
        this.notaEscrito = 0.0;
        this.notaOral = 0.0;
        this.notaPractico = 0.0;
    }

    public Aspirante(String dni, String nombre, String apellido, double notaEscrito, double notaOral,
            double notaPractico) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellido = apellido;
        this.notaEscrito = notaEscrito;
        this.notaOral = notaOral;
        this.notaPractico = notaPractico;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setNotaEscrito(double notaEscrito) {
        this.notaEscrito = notaEscrito;
    }

    public void setNotaOral(double notaOral) {
        this.notaOral = notaOral;
    }

    public void setNotaPractico(double notaPractico) {
        this.notaPractico = notaPractico;
    }

    public String getApellido() {
        return apellido;
    }

    public String getDni() {
        return dni;
    }

    public String getNombre() {
        return nombre;
    }

    public double getNotaEscrito() {
        return notaEscrito;
    }

    public double getNotaOral() {
        return notaOral;
    }

    public double getNotaPractico() {
        return notaPractico;
    }

    @Override
    public String toString() {
        return "Aspirante{" +
                "dni='" + dni + '\'' +
                ", nombre='" + nombre + '\'' +
                ", apellido='" + apellido + '\'' +
                ", notaEscrito=" + notaEscrito +
                ", notaOral=" + notaOral +
                ", notaPractico=" + notaPractico +
                '}';
    }

}
