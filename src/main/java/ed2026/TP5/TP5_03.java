package ed2026.TP5;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import ed2026.Helper.Helper;

public class TP5_03 {
    public static void main(String[] args) {
        System.out.println("Ejercicio 3 - Intersección de Suscripciones");
        System.out.println("==========================================");
        System.out.println();
        SimpleLinkedList<Suscripcion> listSuscipcion1 = new SimpleLinkedList<>();
        SimpleLinkedList<Suscripcion> listSuscripcion2 = new SimpleLinkedList<>();
        mockupSuscripciones(listSuscipcion1, listSuscripcion2);
        System.out.println("Lista 1: " + listSuscipcion1);
        System.out.println("Lista 2: " + listSuscripcion2);
        SimpleLinkedList<Suscripcion> intersection = intersectionSuscription(listSuscipcion1, listSuscripcion2);
        System.out.println("\nIntersección: " + intersection);
        String userToCount = Helper.nextString("Ingrese Usuario");
        System.out.println("\nCantidad de suscripciones del usuario '" + userToCount + "': "
                + countSuscripcionesOfUser(listSuscipcion1, listSuscripcion2, userToCount));
        SimpleLinkedList<Suscripcion> mergedList = mergeSuscripcion(listSuscipcion1, listSuscripcion2);
        System.out.println("\nLista fusionada y ordenada por fecha de inicio: " + mergedList);
    }

    static void mockupSuscripciones(SimpleLinkedList<Suscripcion> listSuscipcion1,
            SimpleLinkedList<Suscripcion> listSuscripcion2) {
        listSuscipcion1.addLast(new Suscripcion(1, "Usuario 1", "Plan 1", fecha("01/03/2026")));
        listSuscipcion1.addLast(new Suscripcion(2, "Usuario 2", "Plan 2", fecha("02/03/2026")));
        listSuscipcion1.addLast(new Suscripcion(3, "Usuario 3", "Plan 3", fecha("03/03/2026")));
        listSuscipcion1.addLast(new Suscripcion(4, "Usuario 4", "Plan 4", fecha("04/03/2026")));
        listSuscipcion1.addLast(new Suscripcion(5, "Usuario 5", "Plan 5", fecha("05/03/2026")));

        listSuscripcion2.addLast(new Suscripcion(6, "Usuario 2", "Plan 6", fecha("06/03/2026")));
        listSuscripcion2.addLast(new Suscripcion(7, "Usuario 4", "Plan 7", fecha("07/03/2026")));
        listSuscripcion2.addLast(new Suscripcion(8, "Usuario 8", "Plan 8", fecha("08/03/2026")));
        listSuscripcion2.addLast(new Suscripcion(9, "Usuario 2", "Plan 9", fecha("09/03/2026")));
        listSuscripcion2.addLast(new Suscripcion(10, "Usuario 10", "Plan 10", fecha("10/03/2026")));
    }

    private static Date fecha(String fecha) {
        try {
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            formato.setLenient(false);
            return formato.parse(fecha);
        } catch (ParseException exception) {
            throw new IllegalArgumentException("Fecha invalida: " + fecha, exception);
        }
    }

    static SimpleLinkedList<Suscripcion> intersectionSuscription(
            SimpleLinkedList<Suscripcion> lista1,
            SimpleLinkedList<Suscripcion> lista2) {

        SimpleLinkedList<Suscripcion> interseccion = new SimpleLinkedList<>();

        for (Suscripcion suscripcion1 : lista1) {
            for (Suscripcion suscripcion2 : lista2) {
                if (suscripcion1.getUsuario().equals(suscripcion2.getUsuario())) {
                    interseccion.addLast(suscripcion1);
                    break;
                }
            }
        }

        return interseccion;
    }

    static int countSuscripcionesOfUser(SimpleLinkedList<Suscripcion> lista1,
            SimpleLinkedList<Suscripcion> lista2, String user) {
        int total = 0;
        for (Suscripcion suscripcion : lista1) {
            if (suscripcion.getUsuario().equals(user))
                total++;
        }
        for (Suscripcion suscripcion : lista2) {
            if (suscripcion.getUsuario().equals(user))
                total++;
        }

        return total;
    }

    static SimpleLinkedList<Suscripcion> mergeSuscripcion(SimpleLinkedList<Suscripcion> lista1,
            SimpleLinkedList<Suscripcion> lista2){
                SimpleLinkedList<Suscripcion> aux = new SimpleLinkedList<>();
                for(Suscripcion s: lista1){
                    aux.addLast(s);
                }
                for(Suscripcion s: lista2){
                    aux.addLast(s);
                }

                orderByFechaInicio(aux);

                return aux;
            }

    static void orderByFechaInicio(SimpleLinkedList<Suscripcion> lista) {
        SimpleLinkedList<Suscripcion> listaOrdenada = new SimpleLinkedList<>();
        while (lista.size() > 0) {
            Suscripcion menor = null;
            for(Suscripcion s: lista){
                if (menor == null || s.getFechaInicio().before(menor.getFechaInicio())) {
                    menor = s;
                }
            }
            int cantidadElementos = lista.size();
            for(int i = 0; i< cantidadElementos; i++){
                Suscripcion suscripcion = lista.removeFirst();
                if (suscripcion == menor) {
                    listaOrdenada.addLast(suscripcion);
                    break;
                }
                lista.addLast(suscripcion);
            }
        }
        while (listaOrdenada.size() > 0) {
            lista.addLast(listaOrdenada.removeFirst());
        }
    }
}
