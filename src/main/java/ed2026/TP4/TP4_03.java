
    package ed2026.TP4;

/**
 * Clase TP4_03 que contiene el método main para ejecutar el programa.
 * 
 * @author Julio Tentor
 * @version 1.0.0
 *
 *          Un centro de atención telefónica está procesando una secuencia de llamadas recibidas.
 *          Cada llamada se representa con el nombre del cliente y se almacena en una cola de tipo
 *          String. Se desea realizar un procesamiento de las llamadas en función de la longitud del
 *          nombre del cliente.
 * 
 *          A través de un programa se debe:
 *          Procesar la cola de entrada para dividir las llamadas en tres nuevas colas:
 *          ● Una cola de clientes con nombres cortos (de uno a cuatro letras).
 *          ● Una cola de clientes con nombres medianos (de cinco a ocho letras).
 *          ● Una cola de clientes con nombres largos (nueve o más letras).
 * 
 *          Para cada una de estas colas, se debe: Luego realizar lo siguiente
 *          a) Calcular la cantidad de llamadas (clientes) que contiene cada cola.
 *          b) Buscar y mostrar el nombre más largo de cada cola.
 *          c) Unir las tres colas en una sola, primero la cola de nombres cortos, luego la de
 *          nombres medianos y al final la cola de nombres largos. Mostrar la cola resultante. d)
 *
 *          Cuando se recorran los elementos de la cola esta debe mantenerse sin modificaciones.
 *          En el programa principal (main) se debe:
 *          a) Solicitar al usuario que ingrese una serie de nombres de clientes (hasta que ingrese
 *          una palabra clave como "FIN").
 *          b) Encolar las llamadas y ejecutar los métodos solicitados, mostrando por consola los
 *          resultados de cada una de las tres colas.
 * 
 */
public class TP4_03 {

    static final int SHORT_NAME_LENGTH = 8;
    static final int MEDIUM_NAME_LENGTH = 12;

    public static void main(String[] args) {

        Queue<String> originalQueue = getOriginalQueue();
        System.out.println("Cola original: " + originalQueue.toString());

        Queue<String> shortNamesQueue = new Queue<>(originalQueue.size());
        Queue<String> mediumNamesQueue = new Queue<>(originalQueue.size());
        Queue<String> longNamesQueue = new Queue<>(originalQueue.size());

        while (!originalQueue.isEmpty()) {
            String name = originalQueue.poll();
            if (name.length() <= SHORT_NAME_LENGTH) {
                shortNamesQueue.offer(name);
            } else if (name.length() <= MEDIUM_NAME_LENGTH) {
                mediumNamesQueue.offer(name);
            } else {
                longNamesQueue.offer(name);
            }
        }
        System.out.println("--------------------------------------------------");
        System.out.println("Cola de nombres cortos                       : " + shortNamesQueue.toString());
        System.out.println("Cantidad de nombres cortos                   : " + shortNamesQueue.size());
        System.out.println("Nombre más largo de la cola de nombres cortos: " + getLongestName(shortNamesQueue));

        System.out.println("--------------------------------------------------");
        System.out.println("Cola de nombres medianos                       : " + mediumNamesQueue.toString());
        System.out.println("Cantidad de nombres medianos                   : " + mediumNamesQueue.size());
        System.out.println("Nombre más largo de la cola de nombres medianos: " + getLongestName(mediumNamesQueue));

        System.out.println("--------------------------------------------------");
        System.out.println("Cola de nombres largos                       : " + longNamesQueue.toString());
        System.out.println("Cantidad de nombres largos                   : " + longNamesQueue.size());
        System.out.println("Nombre más largo de la cola de nombres largos: " + getLongestName(longNamesQueue));

        Queue<String> combinedQueue = new Queue<>(
                shortNamesQueue.size() + mediumNamesQueue.size() + longNamesQueue.size());
        for (String name : shortNamesQueue) {
            combinedQueue.offer(name);
        }
        for (String name : mediumNamesQueue) {
            combinedQueue.offer(name);
        }
        for (String name : longNamesQueue) {
            combinedQueue.offer(name);
        }
        System.out.println("--------------------------------------------------");
        System.out.println("Cola combinada: " + combinedQueue.toString());
    }

    /**
     * Generate a queue of random names from the predefined names array.
     * 
     * I change the original requirement of user input to generate a random queue of names for testing
     * purposes.
     * 
     * @return A queue containing random names.
     */
    private static Queue<String> getOriginalQueue() {
        int count = (int) (Math.random() * 20 + 1);
        Queue<String> originalQueue = new Queue<>(count);
        while (count-- > 0) {
            int index = (int) (Math.random() * names.length);
            originalQueue.offer(names[index]);
        }
        return originalQueue;
    }

    /**
     * Get the longest name from the given queue.
     * 
     * @param queue The queue from which to find the longest name.
     * @return The longest name in the queue, or an empty string if the queue is null or empty.
     */
    private static String getLongestName(Queue<String> queue) {
        if (queue == null || queue.isEmpty()) {
            return "";
        }
        String longestName = "";
        for (String name : queue) {
            if (name.length() > longestName.length()) {
                longestName = name;
            }
        }
        return longestName;
    }

    private static String[] names = {
            "Agustín Juan Emanuel",
            "ALAN JULIAN",
            "Aldo Daniel",
            "Angel Gabriel",
            "ANTONELLA SARA",
            "Ariana Nicole",
            "AYLEN CANDELA",
            "CAMILA JAZMIN",
            "CARLOS EZEQUIEL",
            "CECILIA ALEJANDRA",
            "Daiana Del Milagro",
            "DAIANA GABRIELA",
            "Diego Fernando",
            "Enzo Iván Ezequiel",
            "Facundo Maximiliano",
            "FACUNDO NAHUEL",
            "Fernando de Jesús",
            "FRANCO DANIEL",
            "Gabriel Alejandro Martin",
            "Gustavo Ezequiel",
            "Ignacio Alberto",
            "Ivone Guadalupe",
            "Joaquín Hernán",
            "Johana Antonella Marisol",
            "Jonatan Agustin",
            "José Matías",
            "JUAN GONZALO",
            "JUAN IGNACIO",
            "Juliana",
            "KEVIN DAVID",
            "Lautaro Eduardo",
            "LEANDRO ELÍAS",
            "LUANA VALENTINA",
            "LUCAS EZEQUIEL",
            "Lucas Samuel",
            "Luciana Abril",
            "Luciano Javier",
            "Luis Eliseo",
            "LUNA MELINA ARACELI",
            "MARCOS ELIAS",
            "MARTÍN ALEJANDRO",
            "Martín Eduardo",
            "MATEO IGNACIO",
            "MATIAS ALAN",
            "MATIAS SEBASTIAN",
            "Mauricio Javier",
            "Nahuel Alberto",
            "Natalia Anahi",
            "NICOLÁS DAVID",
            "Pablo",
            "RAFAELA LUDMILA",
            "Salvador Manuel",
            "SANTIAGO EZEQUIEL",
            "Santiago Lionel",
            "TOMAS BAUTISTA",
            "Tomás Valentino",
            "YESICA BELEN",
            "Zoe Agustina Abril"
    };

}

