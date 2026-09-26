package ed2026.TP4;

public class TP4_06 {
    public static void main(String[] args) {
        Queue<Turno> cola = new Queue<>(5);
        cola.offer(new Turno("12345678", "PAMI", true));
        cola.offer(new Turno("23456789", "ISJ", false));
        cola.offer(new Turno("34567890", "Particular", true));
        cola.offer(new Turno("45678901", "PAMI", false));
        cola.offer(new Turno("56789012", "ISJ", false));

        System.out.println("Cola original: " + cola);

        Queue<Turno> pendientes = getPendientes(cola);
        System.out.println("Turnos pendientes: " + pendientes);
        System.out.println("Cantidad de turnos PAMI: " + contarPorObraSocial(cola, "PAMI"));
        System.out.println("¿Fue atendido el DNI 34567890? " + fueAtendidoPorDni(cola, "34567890"));
        System.out.println("¿Fue atendido el DNI 99999999? " + fueAtendidoPorDni(cola, "99999999"));
        System.out.println("Cola original restaurada: " + cola);
    }

    public static Queue<Turno> getPendientes(Queue<Turno> cola) {
        Queue<Turno> auxiliar = new Queue<>(cola.size());
        Queue<Turno> pendientes = new Queue<>(cola.size());

        while (!cola.isEmpty()) {
            Turno turno = cola.poll();
            if (!turno.isFueAtendido()) {
                pendientes.offer(turno);
            }
            auxiliar.offer(turno);
        }

        while (!auxiliar.isEmpty()) {
            cola.offer(auxiliar.poll());
        }

        return pendientes;
    }

    public static int contarPorObraSocial(Queue<Turno> cola, String obraSocial) {
        Queue<Turno> auxiliar = new Queue<>(cola.size());
        int contador = 0;

        while (!cola.isEmpty()) {
            Turno turno = cola.poll();
            if (turno.getObraSocial().equalsIgnoreCase(obraSocial)) {
                contador++;
            }
            auxiliar.offer(turno);
        }

        while (!auxiliar.isEmpty()) {
            cola.offer(auxiliar.poll());
        }

        return contador;
    }

    public static boolean fueAtendidoPorDni(Queue<Turno> cola, String dni) {
        Queue<Turno> auxiliar = new Queue<>(cola.size());
        boolean encontrado = false;
        boolean atendido = false;

        while (!cola.isEmpty()) {
            Turno turno = cola.poll();
            if (turno.getDniCliente().equals(dni)) {
                atendido = turno.isFueAtendido();
                encontrado = true;
            }
            auxiliar.offer(turno);
        }

        while (!auxiliar.isEmpty()) {
            cola.offer(auxiliar.poll());
        }

        return encontrado && atendido;
    }

    public static class Turno {
        private String dniCliente;
        private String obraSocial;
        private boolean fueAtendido;

        public Turno(String dniCliente, String obraSocial, boolean fueAtendido) {
            this.dniCliente = dniCliente;
            this.obraSocial = obraSocial;
            this.fueAtendido = fueAtendido;
        }

        public String getDniCliente() {
            return dniCliente;
        }

        public String getObraSocial() {
            return obraSocial;
        }

        public boolean isFueAtendido() {
            return fueAtendido;
        }

        @Override
        public String toString() {
            return "Turno{" +
                    "dniCliente='" + dniCliente + '\'' +
                    ", obraSocial='" + obraSocial + '\'' +
                    ", fueAtendido=" + fueAtendido +
                    '}';
        }
    }
}
