package ed2026.TP6;

public class Vuelo implements Comparable<Vuelo> {
    private final int numeroVuelo;
    private final String aerolinea;
    private final String destino;
    private int cantidadPasajeros;

    public Vuelo(int numeroVuelo, String aerolinea, String destino, int cantidadPasajeros) {
        this.numeroVuelo = numeroVuelo;
        this.aerolinea = aerolinea;
        this.destino = destino;
        this.cantidadPasajeros = cantidadPasajeros;
    }

    public int getNumeroVuelo() {
        return numeroVuelo;
    }

    public String getDestino() {
        return destino;
    }

    public int getCantidadPasajeros() {
        return cantidadPasajeros;
    }

    public void setCantidadPasajeros(int cantidadPasajeros) {
        this.cantidadPasajeros = cantidadPasajeros;
    }

    @Override
    public int compareTo(Vuelo other) {
        return this.destino.compareToIgnoreCase(other.destino);
    }

    @Override
    public String toString() {
        return "Vuelo{" + "numeroVuelo=" + numeroVuelo + ", aerolinea='" + aerolinea + '\''
                + ", destino='" + destino + '\'' + ", cantidadPasajeros=" + cantidadPasajeros + '}';
    }
}