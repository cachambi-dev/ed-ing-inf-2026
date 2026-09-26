package ed2026.TP3;

public class Tp3_07 {
    public static void main(String[] args) {
        Stack<Producto> pila = new Stack<>();
        pila.push(new Producto("P-01", 1200.0));
        pila.push(new Producto("P-02", 900.0));
        pila.push(new Producto("P-03", 1500.0));
        pila.push(new Producto("P-04", 700.0));

        System.out.println("Antes del descuento: " + pila);
        aplicarDescuento(pila, "P-03");
        System.out.println("Después del descuento: " + pila);
    }

    public static void aplicarDescuento(Stack<Producto> pila, String idBuscado) {
        Stack<Producto> auxiliar = new Stack<>(Math.max(1, pila.size()));

        while (!pila.empty()) {
            Producto producto = pila.pop();

            if (producto.getId().equals(idBuscado)) {
                producto.setPrecio(producto.getPrecio() * 0.90);
            }

            auxiliar.push(producto);
        }

        while (!auxiliar.empty()) {
            pila.push(auxiliar.pop());
        }
    }

    public static class Producto {
        private String id;
        private double precio;

        public Producto(String id, double precio) {
            this.id = id;
            this.precio = precio;
        }

        public String getId() {
            return id;
        }

        public double getPrecio() {
            return precio;
        }

        public void setPrecio(double precio) {
            this.precio = precio;
        }

        @Override
        public String toString() {
            return "Producto{" +
                    "id='" + id + '\'' +
                    ", precio=" + precio +
                    '}';
        }
    }
}
