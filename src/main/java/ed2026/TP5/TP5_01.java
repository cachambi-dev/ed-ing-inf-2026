package ed2026.TP5;

import java.util.Date;

import ed2026.Helper.Helper;

class TP5_01 {

    public static void main(String[] args) {
        SimpleLinkedList<Product> products = new SimpleLinkedList<>();
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
                    addProducts(products, indx);
                    System.out.println("Lista despues de agregar:");
                    System.out.println(products);
                    break;
                case 2:
                    System.out.println("\nLista antes de eliminar:");
                    System.out.println(products);
                    indx = Helper.nextInteger("Ingrese Posicion: ", "Valor invalido");
                    removeProducts(products, indx);
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

    static void addProducts(SimpleLinkedList<Product> ltsProducto, int index){
        Integer code = Helper.nextInteger("Ingrese codigo: ", "Codigo no valido");
        String description = Helper.nextString("Ingrese descripcion: ");
        Date expirationDate = Helper.nextDate("Ingrese fecha de expiracion: ");
        Double salePrice = Helper.nextDouble("Ingrese precio del producto: ");
        Product product = new Product(code, description, expirationDate, salePrice);
        ltsProducto.add(index, product);
    }

    static void removeProducts(SimpleLinkedList<Product> ltsProduct, int index){
        System.out.println("Producto extraido: "+ltsProduct.remove(index));
    }
}
