#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 6
// -------------------------------------------------------------
== 🔹 Ejercicio 6: Análisis de Soluciones — Conversión de Pila a Arreglo

Leer atentamente el enunciado presentado a continuación y luego, analizar las soluciones propuestas.

=== Enunciado:
Desarrollar un método que reciba una pila de enteros y devuelva un arreglo con los elementos de la pila en el mismo orden en que van a salir de la pila (el elemento de la cima debe ser el primer elemento del arreglo y el de la base el último). La pila original debe quedar sin modificaciones.

A continuación, se presentan dos soluciones propuestas por distintos estudiantes. La clase `Stack` a la que se hace referencia es la implementada por Java. Esa clase hereda el método `toArray` de la clase `Vector`.

=== Comparativa de Soluciones:

#grid(
  columns: (1fr),
  gutter: 10pt,
  [
    *🔹 Solución A:*
    ```java
    public static int[] pilaAArregloA(Stack<Integer> pila) {
        Object[] auxiliar = pila.toArray(); // Investigar qué hace el método toArray
        int[] arreglo = new int[auxiliar.length];
        for (int i = 0; i < auxiliar.length; i++) {
            arreglo[i] = (Integer) auxiliar[i];
        }
        return arreglo;
    }
    ```
  ],
  [
    *🔹 Solución B:*
    ```java
    public static int[] pilaAArregloB(Stack<Integer> pila) {
        int[] arreglo = new int[pila.size()];
        Stack<Integer> auxiliar = new Stack<>();
        int i = 0;
        while (!pila.isEmpty()) {
            int valor = pila.pop();
            arreglo[i] = valor;
            i++;
            auxiliar.push(valor);
        }
        while (!auxiliar.isEmpty()) {
            pila.push(auxiliar.pop());
        }
        return arreglo;
    }
    ```
  ]
)

#caja_preguntas[
  + *1)* ¿Cuál de las dos soluciones respeta mejor las restricciones del ejercicio? Tener en cuenta la restricción de que "la pila original debe quedar sin modificaciones" y el orden de los elementos.
  + *2)* ¿Cuál solución es más fácil de explicar a un compañero? Argumentar sobre la claridad del uso de pilas auxiliares (Solución B) frente a los métodos nativos de Java (Solución A).
  + *3)* ¿Qué ventajas y desventajas tiene cada una?
]

#resolucion(titulo: "Resolución del Ejercicio 6")[
  #respuesta("1")[
    // Escribir aquí la respuesta 1)
  ]
  #respuesta("2")[
    // Escribir aquí la respuesta 2)
  ]
  #respuesta("3")[
    // Escribir aquí la respuesta 3)
  ]
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
