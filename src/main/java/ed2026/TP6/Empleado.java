package ed2026.TP6;

public class Empleado implements Comparable<Empleado> {
    private final int legajo;
    private final String nombre;
    private final String departamento;
    private final double salario;

    public Empleado(int legajo, String nombre, String departamento, double salario) {
        this.legajo = legajo;
        this.nombre = nombre;
        this.departamento = departamento;
        this.salario = salario;
    }

    public int getLegajo() {
        return legajo;
    }

    @Override
    public int compareTo(Empleado other) {
        return Integer.compare(this.legajo, other.legajo);
    }

    @Override
    public String toString() {
        return "Empleado{" + "legajo=" + legajo + ", nombre='" + nombre + '\''
                + ", departamento='" + departamento + '\'' + ", salario=" + salario + '}';
    }
}