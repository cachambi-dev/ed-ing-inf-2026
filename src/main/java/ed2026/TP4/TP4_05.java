package ed2026.TP4;

public class TP4_05 {
    public static void main(String[] args) {
        Queue<Envio> cola = new Queue<>(5);
        cola.offer(new Envio("E-001", 12.5, "Local", "En Camino"));
        cola.offer(new Envio("E-002", 24.0, "Nacional", "Entregado"));
        cola.offer(new Envio("E-003", 8.0, "Local", "Devuelto"));
        cola.offer(new Envio("E-004", 30.0, "Internacional", "En Camino"));
        cola.offer(new Envio("E-005", 19.5, "Nacional", "Devuelto"));

        System.out.println("Cola original: " + cola);
        System.out.println("Peso total Nacional: " + getPesoTotalPorDestino(cola, "Nacional"));
        System.out.println("Mayor envío: " + getMayorPeso(cola));
        System.out.println("Cantidad de envíos devueltos: " + contarDevueltos(cola));
        System.out.println("Cola final: " + cola);
    }

    public static double getPesoTotalPorDestino(Queue<Envio> cola, String destino) {
        Queue<Envio> auxiliar = new Queue<>(cola.size());
        double total = 0;

        while (!cola.isEmpty()) {
            Envio envio = cola.poll();
            if (envio.getDestino().equalsIgnoreCase(destino)) {
                total += envio.getPeso();
            }
            auxiliar.offer(envio);
        }

        while (!auxiliar.isEmpty()) {
            cola.offer(auxiliar.poll());
        }

        return total;
    }

    public static Envio getMayorPeso(Queue<Envio> cola) {
        Queue<Envio> auxiliar = new Queue<>(cola.size());
        Envio mayor = null;

        while (!cola.isEmpty()) {
            Envio envio = cola.poll();
            if (mayor == null || envio.getPeso() > mayor.getPeso()) {
                mayor = envio;
            }
            auxiliar.offer(envio);
        }

        while (!auxiliar.isEmpty()) {
            cola.offer(auxiliar.poll());
        }

        return mayor;
    }

    public static int contarDevueltos(Queue<Envio> cola) {
        Queue<Envio> auxiliar = new Queue<>(cola.size());
        int contador = 0;

        while (!cola.isEmpty()) {
            Envio envio = cola.poll();
            if (envio.getEstado().equalsIgnoreCase("Devuelto")) {
                contador++;
            }
            auxiliar.offer(envio);
        }

        while (!auxiliar.isEmpty()) {
            cola.offer(auxiliar.poll());
        }

        return contador;
    }

    public static class Envio {
        private String codigoSeguimiento;
        private double peso;
        private String destino;
        private String estado;

        public Envio(String codigoSeguimiento, double peso, String destino, String estado) {
            this.codigoSeguimiento = codigoSeguimiento;
            this.peso = peso;
            this.destino = destino;
            this.estado = estado;
        }

        public String getCodigoSeguimiento() {
            return codigoSeguimiento;
        }

        public double getPeso() {
            return peso;
        }

        public String getDestino() {
            return destino;
        }

        public String getEstado() {
            return estado;
        }

        @Override
        public String toString() {
            return "Envio{" +
                    "codigoSeguimiento='" + codigoSeguimiento + '\'' +
                    ", peso=" + peso +
                    ", destino='" + destino + '\'' +
                    ", estado='" + estado + '\'' +
                    '}';
        }
    }
}
