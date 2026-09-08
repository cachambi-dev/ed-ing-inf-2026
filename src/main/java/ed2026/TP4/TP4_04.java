package ed2026.TP4;

import ed2026.Helper.Helper;
import ed2026.Helper.QueueUtils;

public class TP4_04 {
    public static void main(String[] args) {

        int cantidadTickets = Helper.nextInteger("Ingrese la cantidad de tickets a procesar", 0);
        Queue<Ticket> queueTickets = new Queue<>(cantidadTickets);

        for (int i = 0; i < cantidadTickets; i++) {
            System.out.println("Ingrese los datos del ticket " + (i + 1) + ":");
            Ticket ticket = getTicket();
            queueTickets.add(ticket);
        }

        System.out.println("Mostrar los tickets ingresados:");
        QueueUtils.displayQueue(queueTickets);
        System.out.println("--------------------------------------------------");
        System.out.println("Filtrar tickets por departamento:");
        String department = Helper.nextString("Ingrese el departamento a filtrar");
        Queue<Ticket> filteredQueue = getTicketsByDepartment(queueTickets, department);
        QueueUtils.displayQueue(filteredQueue);
        System.out.println("Promedio del nivel de urgencia: " + String.format("%.2f", getAverageUrgencyLevel(queueTickets)));
        


       
    }

    /**
     * Metodo que solicita al usuario los datos de un ticket y devuelve un objeto Ticket
     * @return Ticket
     */
    public static Ticket getTicket(){
        String idTicket = Helper.nextString("Ingrese el ID del ticket");
        String departament = Helper.nextString("Ingrese el departamento");
        int levelUrgency = Helper.nextInteger("Ingrese el nivel de urgencia (0-5)", 0, 5);
        return new Ticket(idTicket, departament, levelUrgency); 
    }

    /**
     * Metodo que filtra los tickets por departamento y devuelve una nueva cola con los tickets filtrados
     * @param queueTickets Cola de tickets a filtrar
     * @param department Departamento por el cual se filtraran los tickets
     * @return Cola de tickets filtrados
     */
    public static Queue<Ticket> getTicketsByDepartment(Queue<Ticket> queueTickets, String department) {
        Queue<Ticket> filteredQueue = new Queue<>(queueTickets.size());
        for (Ticket ticket : queueTickets) {
            if (ticket.getDepartament().equalsIgnoreCase(department)) {
                filteredQueue.add(ticket);
            }
        }
        return filteredQueue;
    }

    /**
     * Metodo que calcula el promedio del nivel de urgencia de los tickets en la cola
     * @param queueTickets Cola de tickets
     * @return Promedio del nivel de urgencia
     */
    public static double getAverageUrgencyLevel(Queue<Ticket> queueTickets){
        double totalUrgencyLevel = 0;
        if (queueTickets.size() == 0) {
            return 0;
        }
        for (Ticket ticket: queueTickets ){
            totalUrgencyLevel += ticket.getLevelUrgency();
        }

        return  totalUrgencyLevel /  (double) queueTickets.size();
    }

}
