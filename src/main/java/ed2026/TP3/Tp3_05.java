package ed2026.TP3;

public class Tp3_05 {
    public static void main(String[] args) {
        Stack<Pedido> pila = new Stack<>();

        cargarPedido(pila, new Pedido("P-001", 1500.0, false));
        cargarPedido(pila, new Pedido("P-002", 2300.5, true));
        cargarPedido(pila, new Pedido("P-003", 980.0, false));
        cargarPedido(pila, new Pedido("P-004", 1750.0, true));
        cargarPedido(pila, new Pedido("P-005", 3200.0, false));

        System.out.println("Estado inicial: " + pila);
        System.out.println("Deuda total inicial: " + obtenerDeudaTotal(pila));

        marcarComoPagado(pila, "P-003");
        System.out.println("Deuda total después de pagar P-003: " + obtenerDeudaTotal(pila));

        vaciarPagados(pila);
        System.out.println("Pila después de vaciar pagados: " + pila);
    }

    public static void cargarPedido(Stack<Pedido> pila, Pedido nuevo) {
        pila.push(nuevo);
    }

    public static void marcarComoPagado(Stack<Pedido> pila, String idPedido) {
        Stack<Pedido> auxiliar = new Stack<>(Math.max(1, pila.size()));
        boolean encontrado = false;

        while (!pila.empty()) {
            Pedido pedido = pila.pop();
            if (!encontrado && pedido.getIdPedido().equals(idPedido)) {
                pedido.setEstaPago(true);
                encontrado = true;
            }
            auxiliar.push(pedido);
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }
    }

    public static double obtenerDeudaTotal(Stack<Pedido> pila) {
        Stack<Pedido> auxiliar = new Stack<>(Math.max(1, pila.size()));
        double deuda = 0.0;

        while (!pila.empty()) {
            Pedido pedido = pila.pop();
            if (!pedido.isEstaPago()) {
                deuda += pedido.getMonto();
            }
            auxiliar.push(pedido);
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }

        return deuda;
    }

    public static void vaciarPagados(Stack<Pedido> pila) {
        Stack<Pedido> auxiliar = new Stack<>(Math.max(1, pila.size()));

        while (!pila.empty()) {
            Pedido pedido = pila.pop();
            if (!pedido.isEstaPago()) {
                auxiliar.push(pedido);
            }
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }
    }

    public static class Pedido {
        private String idPedido;
        private double monto;
        private boolean estaPago;

        public Pedido(String idPedido, double monto, boolean estaPago) {
            this.idPedido = idPedido;
            this.monto = monto;
            this.estaPago = estaPago;
        }

        public String getIdPedido() {
            return idPedido;
        }

        public double getMonto() {
            return monto;
        }

        public boolean isEstaPago() {
            return estaPago;
        }

        public void setEstaPago(boolean estaPago) {
            this.estaPago = estaPago;
        }

        @Override
        public String toString() {
            return "Pedido{" +
                    "idPedido='" + idPedido + '\'' +
                    ", monto=" + monto +
                    ", estaPago=" + estaPago +
                    '}';
        }
    }
}
