package ed2026.TP6;

import java.util.Random;
import ed2026.Helper.Helper;

public class TP6_04 {
    public static void main(String[] args) {
        int option = Helper.nextInteger("1. Usar mockup  2. Generar aleatorios  3. Cargar por consola: ", "Opcion invalida");
        int cantidad = option == 1 ? 5 : Helper.nextInteger("Cantidad: ", "Cantidad invalida");
        BinarySearchTree<Empleado> tree = option == 1 ? mockup()
            : option == 2 ? generar(cantidad) : cargarPorConsola(cantidad);

        System.out.print("Pre order: ");
        tree.PreOrder();
        System.out.print("\nIn order: ");
        tree.InOrder();

        int legajo = Helper.nextInteger("\nIngrese legajo a buscar: ", "Legajo invalido");
        Empleado empleado = tree.buscar(new Empleado(legajo, "", "", 0));
        System.out.println(empleado == null ? "Empleado inexistente" : "Empleado encontrado: " + empleado);
    }

    public static BinarySearchTree<Empleado> mockup() {
        BinarySearchTree<Empleado> tree = new BinarySearchTree<>();
        tree.add(new Empleado(1004, "Ana", "Sistemas", 850000));
        tree.add(new Empleado(1001, "Bruno", "Recursos Humanos", 720000));
        tree.add(new Empleado(1008, "Carla", "Finanzas", 910000));
        tree.add(new Empleado(1003, "Diego", "Sistemas", 810000));
        tree.add(new Empleado(1006, "Elena", "Ventas", 760000));
        return tree;
    }

    public static BinarySearchTree<Empleado> generar(int cantidad) {
        BinarySearchTree<Empleado> tree = new BinarySearchTree<>();
        Random random = new Random();
        for (int i = 0; i < cantidad; i++) {
            int legajo = 2000 + i;
            tree.add(new Empleado(legajo, "Empleado " + legajo, "General", 500000 + random.nextInt(500000)));
        }
        return tree;
    }

    public static BinarySearchTree<Empleado> cargarPorConsola(int cantidad) {
        BinarySearchTree<Empleado> tree = new BinarySearchTree<>();
        for (int i = 0; i < cantidad; i++) {
            int legajo = Helper.nextInteger("Legajo: ", "Legajo invalido");
            String nombre = Helper.nextString("Nombre: ");
            String departamento = Helper.nextString("Departamento: ");
            double salario = Helper.nextDouble("Salario: ");
            tree.add(new Empleado(legajo, nombre, departamento, salario));
        }
        return tree;
    }
}