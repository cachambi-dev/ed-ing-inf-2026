package ed2026.TP5;

import ed2026.Helper.Helper;

class TP5_01 {

    public static void main(String[] args) {
        SimpleLinkedList<Product> products = new SimpleLinkedList<>();
        loadProducts(products);
        int indx;
        int option;
        do {
            System.out.println("\n--- MENU PRODUCTOS ---");
            System.out.println("1. Agregar producto en una posicion");
            System.out.println("2. Eliminar producto de una posicion");
            System.out.println("0. Salir");
            option = Helper.nextInteger("Ingrese opcion: ", "Opcion invalida");

            switch (option) {
                case 1:
                    System.out.println("\nLista antes de agregar:");
                    System.out.println(products);
                    indx = Helper.nextInteger("Ingrese Posicion: ", "Valor invalido");
                    try {
                        addProducts(products, indx);
                    } catch (IndexOutOfBoundsException exception) {
                        System.out.println("Posicion invalida: debe estar entre 0 y " + products.size());
                    }
                    System.out.println("Lista despues de agregar:");
                    System.out.println(products);
                    break;
                case 2:
                    System.out.println("\nLista antes de eliminar:");
                    System.out.println(products);
                    indx = Helper.nextInteger("Ingrese Posicion: ", "Valor invalido");
                    try {
                        removeProducts(products, indx);
                    } catch (IndexOutOfBoundsException exception) {
                        System.out.println("Posicion invalida: debe estar entre 0 y " + (products.size() - 1));
                    }
                    System.out.println("Lista despues de eliminar:");
                    System.out.println(products);
                    break;
                case 0:
                    System.out.println("Programa finalizado.");
                    break;
                default:
                    System.out.println("Opcion invalida.");
            }
        } while (option != 0);

    }

    static void loadProducts(SimpleLinkedList<Product> products) {
        products.addLast(new Product(101, "Teclado", 12500.0, 12));
        products.addLast(new Product(102, "Mouse", 7500.0, 25));
        products.addLast(new Product(103, "Monitor", 95000.0, 8));
    }

    static void addProducts(SimpleLinkedList<Product> ltsProducto, int index){
        Integer code = Helper.nextInteger("Ingrese codigo: ", "Codigo no valido");
        String name = Helper.nextString("Ingrese nombre: ");
        Double price = Helper.nextDouble("Ingrese precio: ");
        Integer stock = Helper.nextInteger("Ingrese stock: ", "Stock no valido");
        Product product = new Product(code, name, price, stock);
        ltsProducto.add(index, product);
    }

    static void removeProducts(SimpleLinkedList<Product> ltsProduct, int index){
        System.out.println("Producto extraido: "+ltsProduct.remove(index));
    }
}
