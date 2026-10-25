package ed2026.TP6;

import ed2026.Helper.Helper;

public class TP6_05 {
    public static void main(String[] args) {
        BinarySearchTree<Vuelo> tree = new BinarySearchTree<>();
        int option = Helper.nextInteger("1. Usar mockup  2. Cargar por consola: ", "Opcion invalida");
        SimpleFlightList flights = option == 1 ? mockup() : cargarPorConsola(5);
        for (Vuelo flight : flights) {
            tree.add(flight);
        }

        System.out.println("Recorrido post order:");
        tree.PostOrder();

        String destination = Helper.nextString("\nIngrese destino a modificar: ");
        Vuelo flight = tree.buscar(new Vuelo(0, "", destination, 0));
        if (flight != null) {
            flight.setCantidadPasajeros(Helper.nextInteger("Nueva cantidad de pasajeros: ", "Cantidad invalida"));
            System.out.println("Vuelo actualizado: " + flight);
        } else {
            System.out.println("No existe un vuelo con ese destino.");
        }

        int number = Helper.nextInteger("Ingrese numero de vuelo a cancelar: ", "Numero invalido");
        Vuelo toRemove = flights.findByNumber(number);
        if (toRemove != null) {
            tree.remove(toRemove);
            flights.remove(toRemove);
            System.out.println("Vuelo cancelado.");
        } else {
            System.out.println("No existe ese numero de vuelo.");
        }
        System.out.println("Arbol resultante: " + tree);
    }

    public static SimpleFlightList mockup() {
        SimpleFlightList flights = new SimpleFlightList();
        flights.add(new Vuelo(101, "Andes", "Cordoba", 90));
        flights.add(new Vuelo(102, "Norte", "Jujuy", 70));
        flights.add(new Vuelo(103, "Sur", "Mendoza", 120));
        flights.add(new Vuelo(104, "Andes", "Salta", 80));
        flights.add(new Vuelo(105, "Norte", "Ushuaia", 140));
        return flights;
    }

    public static SimpleFlightList cargarPorConsola(int cantidad) {
        SimpleFlightList flights = new SimpleFlightList();
        for (int i = 0; i < cantidad; i++) {
            int number = Helper.nextInteger("Numero de vuelo: ", "Numero invalido");
            String airline = Helper.nextString("Aerolinea: ");
            String destination = Helper.nextString("Destino: ");
            int passengers = Helper.nextInteger("Cantidad de pasajeros: ", "Cantidad invalida");
            flights.add(new Vuelo(number, airline, destination, passengers));
        }
        return flights;
    }

    public static class SimpleFlightList implements Iterable<Vuelo> {
        private final java.util.ArrayList<Vuelo> values = new java.util.ArrayList<>();

        public void add(Vuelo flight) { values.add(flight); }
        public void remove(Vuelo flight) { values.remove(flight); }
        public Vuelo findByNumber(int number) {
            for (Vuelo flight : values) {
                if (flight.getNumeroVuelo() == number) return flight;
            }
            return null;
        }
        @Override public java.util.Iterator<Vuelo> iterator() { return values.iterator(); }
    }
}