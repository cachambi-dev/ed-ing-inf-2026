package ed2026.TP5;

public class EstadisticaArtista {
    private String artista;
    private int totalReproducciones;


    public EstadisticaArtista() {
        this.artista = "";
        this.totalReproducciones = 0;
    }

    public EstadisticaArtista(String artista, int totalReproducciones) {
        this.artista = artista;
        this.totalReproducciones = totalReproducciones;
    }

    public String getArtista() {
        return artista;
    }

    public int getTotalReproducciones() {
        return totalReproducciones;
    }

    @Override
    public String toString() {
        return "EstadisticaArtista{" +
                "artista='" + artista + '\'' +
                ", totalReproducciones=" + totalReproducciones +
                '}';
    }

}
