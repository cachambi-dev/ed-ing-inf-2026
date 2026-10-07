package ed2026.TP5;

import ed2026.Helper.Helper;

/**
 * Clase que representa una canción con su título, artista, año de lanzamiento y
 * duración en segundos.
 */
public class TP5_02 {
    public static void main(String[] args) {
        DoubleLinkedList<Cancion> listaCanciones = new DoubleLinkedList<>();
        loadSongs(listaCanciones);

        System.out.println("Lista de canciones:");
        System.out.println(listaCanciones);
        System.out.println("\nLa cancion mas antigua de la lista es: " + getOldSong(listaCanciones));

        String artista = Helper.nextString("\nIngrese Artista a buscar: ");
        DoubleLinkedList<Cancion> listSongForArtist = new DoubleLinkedList<>();
        listSongForArtist = getListForArtist(listaCanciones, artista);
        System.out.println("\nLista de musica del artista " + artista);
        System.out.println(listSongForArtist);
        System.out.println("\nLista de estadisticas de artistas:");
        DoubleLinkedList<EstadisticaArtista> listaEstadisticas = new DoubleLinkedList<>();
        listaEstadisticas = getArtistStatisticsList(listaCanciones);
        System.out.println(listaEstadisticas);
    }

    static void loadSongs(DoubleLinkedList<Cancion> listaCanciones) {
        listaCanciones.addLast(new Cancion("De Música Ligera", "Soda Stereo", 1990, 215));
        listaCanciones.addLast(new Cancion("Persiana Americana", "Soda Stereo", 1986, 274));
        listaCanciones.addLast(new Cancion("Seminare", "Serú Girán", 1978, 247));
        listaCanciones.addLast(new Cancion("No Voy en Tren", "Charly García", 1987, 211));
        listaCanciones.addLast(new Cancion("Demoliendo Hoteles", "Charly García", 1984, 182));
        listaCanciones.addLast(new Cancion("Muchacha (Ojos de Papel)", "Almendra", 1969, 221));
        listaCanciones.addLast(new Cancion("Jijiji", "Patricio Rey y sus Redonditos de Ricota", 1986, 309));
        listaCanciones.addLast(new Cancion("La Rubia Tarada", "Sumo", 1985, 188));
        listaCanciones.addLast(new Cancion("El Revelde", "La Renga", 1998, 286));
        listaCanciones.addLast(new Cancion("Mujer Amante", "Rata Blanca", 1990, 302));
    }

    static Cancion getOldSong(DoubleLinkedList<Cancion> listaCanciones) {
        Cancion oldSong = null;
        for (Cancion c : listaCanciones) {

            if (oldSong == null || oldSong.getAnioLanzamiento() > c.getAnioLanzamiento()) {
                oldSong = c;
            }

        }
        return oldSong;
    }

    static DoubleLinkedList<Cancion> getListForArtist(DoubleLinkedList<Cancion> listaCanciones, String artist) {
        DoubleLinkedList<Cancion> listArtist = new DoubleLinkedList<>();
        for (Cancion c : listaCanciones) {
            if (c.getArtista().equals(artist))
                listArtist.addLast(c);
        }
        return listArtist;
    }

    static DoubleLinkedList<EstadisticaArtista> getArtistStatisticsList(DoubleLinkedList<Cancion> listaCanciones) {
        DoubleLinkedList<EstadisticaArtista> listaEstadisticas = new DoubleLinkedList<>();
        for (Cancion c : listaCanciones) {
            if (!isArtistInList(listaEstadisticas, c.getArtista())) {
                int totalReproducciones = 0;
                for (Cancion c2 : listaCanciones) {
                    if (c2.getArtista().equals(c.getArtista())) {
                        totalReproducciones += c2.getDuracionSegundos();
                    }
                }
                listaEstadisticas.addLast(new EstadisticaArtista(c.getArtista(), totalReproducciones));
            }
        }
        orderListByLargetsToSmallest(listaEstadisticas);
        return listaEstadisticas;
    }

    static boolean isArtistInList(DoubleLinkedList<EstadisticaArtista> listaEstadisticas, String artista) {
        for (EstadisticaArtista ea : listaEstadisticas) {
            if (ea.getArtista().equals(artista)) {
                return true;
            }
        }
        return false;
    }

    static void orderListByLargetsToSmallest(DoubleLinkedList<EstadisticaArtista> listaEstadisticas) {
        DoubleLinkedList<EstadisticaArtista> listaOrdenada = new DoubleLinkedList<>();

        while (listaEstadisticas.size() > 0) {
            EstadisticaArtista mayor = null;
            for (EstadisticaArtista estadistica : listaEstadisticas) {
                if (mayor == null || estadistica.getTotalReproducciones() > mayor.getTotalReproducciones()) {
                    mayor = estadistica;
                }
            }

            int cantidadElementos = listaEstadisticas.size();
            for (int i = 0; i < cantidadElementos; i++) {
                EstadisticaArtista estadistica = listaEstadisticas.removeFirst();
                if (estadistica == mayor) {
                    listaOrdenada.addLast(estadistica);
                    break;
                }
                listaEstadisticas.addLast(estadistica);
            }
        }

        while (listaOrdenada.size() > 0) {
            listaEstadisticas.addLast(listaOrdenada.removeFirst());
        }
    }

}
