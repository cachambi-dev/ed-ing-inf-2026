package ed2026.TP2;

import ed2026.Helper.Helper;

public class Tp2_04 {
    public static void main(String[] args) {
        int cantidad = Helper.nextInteger("Ingrese cantidad de equipos", 0);
        Equipo[] equipos = new Equipo[cantidad];

        for (int i = 0; i < cantidad; i++) {
            System.out.println("Equipo " + (i + 1));
            String idEquipo = Helper.nextString("Ingrese id del equipo");
            String nombre = Helper.nextString("Ingrese nombre del equipo");
            int puntaje = Helper.nextInteger("Ingrese puntaje acumulado", 0);
            int partidos = Helper.nextInteger("Ingrese partidos jugados", 0);
            equipos[i] = new Equipo(idEquipo, nombre, puntaje, partidos);
        }

        String id = Helper.nextString("Ingrese id del equipo a actualizar");
        int puntos = Helper.nextInteger("Ingrese puntos a sumar", 0);
        actualizarPuntaje(equipos, id, puntos);

        System.out.println("Total de partidos jugados: " + totalPartidos(equipos));
        System.out.println("Promedio general: " + calcularPromedio(equipos));
        System.out.println("Equipo líder: " + obtenerEquipoMayorPuntaje(equipos));

        Equipo[] zonaDescenso = obtenerZonaDescenso(equipos, calcularPromedio(equipos));
        System.out.println("Equipos en zona de descenso:");
        for (Equipo equipo : zonaDescenso) {
            if (equipo != null) {
                System.out.println(equipo);
            }
        }
    }

    public static void actualizarPuntaje(Equipo[] equipos, String idEquipo, int puntos) {
        for (Equipo equipo : equipos) {
            if (equipo != null && equipo.getIdEquipo().equals(idEquipo)) {
                equipo.setPuntajeAcumulado(equipo.getPuntajeAcumulado() + puntos);
                return;
            }
        }
        System.out.println("No se encontró el equipo con id " + idEquipo);
    }

    public static int totalPartidos(Equipo[] equipos) {
        int total = 0;
        for (Equipo equipo : equipos) {
            if (equipo != null) {
                total += equipo.getPartidosJugados();
            }
        }
        return total;
    }

    public static double calcularPromedio(Equipo[] equipos) {
        int total = 0;
        for (Equipo equipo : equipos) {
            if (equipo != null) {
                total += equipo.getPuntajeAcumulado();
            }
        }
        return equipos.length == 0 ? 0 : total / (double) equipos.length;
    }

    public static Equipo obtenerEquipoMayorPuntaje(Equipo[] equipos) {
        Equipo mayor = null;
        for (Equipo equipo : equipos) {
            if (equipo != null && (mayor == null || equipo.getPuntajeAcumulado() > mayor.getPuntajeAcumulado())) {
                mayor = equipo;
            }
        }
        return mayor;
    }

    public static Equipo[] obtenerZonaDescenso(Equipo[] equipos, double promedio) {
        Equipo[] zona = new Equipo[equipos.length];
        int index = 0;
        for (Equipo equipo : equipos) {
            if (equipo != null && equipo.getPuntajeAcumulado() < promedio) {
                zona[index++] = equipo;
            }
        }
        return zona;
    }

    public static class Equipo {
        private String idEquipo;
        private String nombre;
        private int puntajeAcumulado;
        private int partidosJugados;

        public Equipo(String idEquipo, String nombre, int puntajeAcumulado, int partidosJugados) {
            this.idEquipo = idEquipo;
            this.nombre = nombre;
            this.puntajeAcumulado = puntajeAcumulado;
            this.partidosJugados = partidosJugados;
        }

        public String getIdEquipo() {
            return idEquipo;
        }

        public String getNombre() {
            return nombre;
        }

        public int getPuntajeAcumulado() {
            return puntajeAcumulado;
        }

        public void setPuntajeAcumulado(int puntajeAcumulado) {
            this.puntajeAcumulado = puntajeAcumulado;
        }

        public int getPartidosJugados() {
            return partidosJugados;
        }

        @Override
        public String toString() {
            return "Equipo{" +
                    "idEquipo='" + idEquipo + '\'' +
                    ", nombre='" + nombre + '\'' +
                    ", puntajeAcumulado=" + puntajeAcumulado +
                    ", partidosJugados=" + partidosJugados +
                    '}';
        }
    }
}
