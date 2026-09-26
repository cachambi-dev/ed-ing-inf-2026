package ed2026.TP4;

public class TP4_08 {
    public static void main(String[] args) {
        Queue<Cliente> cola = new Queue<>(6);
        cola.offer(new Cliente("Ana", 17));
        cola.offer(new Cliente("Luis", 24));
        cola.offer(new Cliente("Marta", 19));
        cola.offer(new Cliente("Tom", 15));
        cola.offer(new Cliente("Nora", 21));
        cola.offer(new Cliente("Pedro", 18));

        System.out.println("Cola original: " + cola);
        eliminarMenores(cola);
        System.out.println("Cola después de eliminar menores: " + cola);
    }

    public static void eliminarMenores(Queue<Cliente> cola) {
        Queue<Cliente> auxiliar = new Queue<>(cola.size());

        while (!cola.isEmpty()) {
            Cliente cliente = cola.poll();
            if (cliente.getEdad() >= 18) {
                auxiliar.offer(cliente);
            }
        }

        while (!auxiliar.isEmpty()) {
            cola.offer(auxiliar.poll());
        }
    }

    public static class Cliente {
        private String nombre;
        private int edad;

        public Cliente(String nombre, int edad) {
            this.nombre = nombre;
            this.edad = edad;
        }

        public String getNombre() {
            return nombre;
        }

        public int getEdad() {
            return edad;
        }

        @Override
        public String toString() {
            return "Cliente{" +
                    "nombre='" + nombre + '\'' +
                    ", edad=" + edad +
                    '}';
        }
    }
}
