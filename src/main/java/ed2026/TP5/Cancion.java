package ed2026.TP5;

/**
 * Clase que representa una canción con su título, artista, año de lanzamiento y duración en segundos.
 */
public class Cancion {
    private String titulo;
    private String artista;
    private int anioLanzamiento;
    private int duracionSegundos;

    public Cancion() {
        this.titulo = "";
        this.artista = "";
        this.anioLanzamiento = 0;
        this.duracionSegundos = 0;
    }

    public Cancion(String titulo, String artista, int anioLanzamiento, int duracionSegundos) {
        this.titulo = titulo;
        this.artista = artista;
        this.anioLanzamiento = anioLanzamiento;
        this.duracionSegundos = duracionSegundos;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }

    public int getAnioLanzamiento() {
        return anioLanzamiento;
    }

    public void setAnioLanzamiento(int anioLanzamiento) {
        this.anioLanzamiento = anioLanzamiento;
    }

    public int getDuracionSegundos() {
        return duracionSegundos;
    }

    public void setDuracionSegundos(int duracionSegundos) {
        this.duracionSegundos = duracionSegundos;
    }

    @Override
    public String toString() {
        return "Cancion{" +
                "titulo='" + titulo + '\'' +
                ", artista='" + artista + '\'' +
                ", anioLanzamiento=" + anioLanzamiento +
                ", duracionSegundos=" + duracionSegundos +
                '}';
    }
}
