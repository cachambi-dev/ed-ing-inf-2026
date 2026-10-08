package ed2026.TP5;

public class TP5_05 {
    public static void main(String[] args) {
        Curso curso = new Curso(mockup());
        curso.mostrarNotaPromedio();
        System.out.println("\nEl Aspirante con el promedio mas altos es: "+ curso.devolverAspiranteNotaPromedioAlto());
        System.out.println("\nAspirantes aprobados con nota promedio mayor o igual a 7");
        System.out.println(curso.obtenerAspirantesPromocionados());
    }

    public static SimpleLinkedList<Aspirante> mockup() {
        SimpleLinkedList<Aspirante> aspirantes = new SimpleLinkedList<>();

        aspirantes.addLast(new Aspirante("40111222", "Ana", "Gomez", 0.0, 0.5, 1.0));
        aspirantes.addLast(new Aspirante("40222333", "Bruno", "Fernandez", 1.0, 1.5, 2.0));
        aspirantes.addLast(new Aspirante("40333444", "Carla", "Lopez", 2.0, 2.5, 3.0));
        aspirantes.addLast(new Aspirante("40444555", "Diego", "Martinez", 3.0, 3.5, 4.0));
        aspirantes.addLast(new Aspirante("40555666", "Elena", "Sosa", 4.0, 4.5, 5.0));
        aspirantes.addLast(new Aspirante("40666777", "Facundo", "Rios", 5.0, 5.5, 6.0));
        aspirantes.addLast(new Aspirante("40777888", "Gabriela", "Torres", 6.0, 6.5, 7.0));
        aspirantes.addLast(new Aspirante("40888999", "Hugo", "Perez", 7.0, 7.5, 8.0));
        aspirantes.addLast(new Aspirante("40999000", "Irene", "Diaz", 8.0, 8.5, 9.0));
        aspirantes.addLast(new Aspirante("40000111", "Julian", "Acosta", 9.0, 10.0, 10.0));

        return aspirantes;
    }
}
