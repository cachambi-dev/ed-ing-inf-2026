package ed2026.TP2;

import ed2026.Helper.Helper;

public class Tp2_05 {
    public static void main(String[] args) {
        int cantidad = Helper.nextInteger("Ingrese cantidad de libros", 0);
        Libro[] biblioteca = new Libro[cantidad];

        for (int i = 0; i < cantidad; i++) {
            System.out.println("Libro " + (i + 1));
            String isbn = Helper.nextString("Ingrese ISBN");
            String titulo = Helper.nextString("Ingrese título");
            String autor = Helper.nextString("Ingrese autor");
            int anio = Helper.nextInteger("Ingrese año de publicación", 0);
            biblioteca[i] = new Libro(isbn, titulo, autor, anio);
        }

        String isbnBuscar = Helper.nextString("Ingrese ISBN para buscar");
        Libro buscado = buscarPorIsbn(biblioteca, isbnBuscar);
        System.out.println("Libro encontrado: " + buscado);

        String isbnModificar = Helper.nextString("Ingrese ISBN para modificar");
        actualizarLibro(biblioteca, isbnModificar, "Nuevo autor", 2000);
        System.out.println("Biblioteca actualizada: ");
        for (Libro libro : biblioteca) {
            if (libro != null) {
                System.out.println(libro);
            }
        }
    }

    public static Libro buscarPorIsbn(Libro[] biblioteca, String isbn) {
        for (Libro libro : biblioteca) {
            if (libro != null && libro.getIsbn().equals(isbn)) {
                return libro;
            }
        }
        return null;
    }

    public static void actualizarLibro(Libro[] biblioteca, String isbn, String nuevoAutor, int nuevoAnio) {
        for (Libro libro : biblioteca) {
            if (libro != null && libro.getIsbn().equals(isbn)) {
                libro.setAutor(nuevoAutor);
                libro.setAnioPublicacion(nuevoAnio);
                return;
            }
        }
        System.out.println("No existe el libro con ISBN " + isbn);
    }

    public static class Libro {
        private String isbn;
        private String titulo;
        private String autor;
        private int anioPublicacion;

        public Libro(String isbn, String titulo, String autor, int anioPublicacion) {
            this.isbn = isbn;
            this.titulo = titulo;
            this.autor = autor;
            this.anioPublicacion = anioPublicacion;
        }

        public String getIsbn() {
            return isbn;
        }

        public String getTitulo() {
            return titulo;
        }

        public String getAutor() {
            return autor;
        }

        public void setAutor(String autor) {
            this.autor = autor;
        }

        public int getAnioPublicacion() {
            return anioPublicacion;
        }

        public void setAnioPublicacion(int anioPublicacion) {
            this.anioPublicacion = anioPublicacion;
        }

        @Override
        public String toString() {
            return "Libro{" +
                    "isbn='" + isbn + '\'' +
                    ", titulo='" + titulo + '\'' +
                    ", autor='" + autor + '\'' +
                    ", anioPublicacion=" + anioPublicacion +
                    '}';
        }
    }
}
