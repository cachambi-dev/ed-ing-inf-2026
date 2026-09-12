#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 7
// -------------------------------------------------------------
== 🔹 Ejercicio 7: Análisis de Soluciones — Conteo de Números Pares en una Cola

Desarrollar un método estático que reciba una Cola de enteros y devuelva la cantidad de elementos que son números pares. La cola original debe quedar sin modificaciones al finalizar el método.

A continuación, se presentan dos soluciones propuestas por distintos estudiantes.

=== Comparativa de Soluciones:

#grid(
  columns: (1fr),
  gutter: 10pt,
  [
    *🔹 Solución A:*
    ```java
    public static int contarParesA(Queue<Integer> cola) {
        int contador = 0;
        int tamanioOriginal = cola.tamanio();
        int[] arregloAuxiliar = new int[tamanioOriginal];
        int i = 0;
        while (!cola.isEmpty()) {
            int num = cola.remove();
            if (num % 2 == 0) {
                contador++;
            }
            arregloAuxiliar[i] = num;
            i++;
        }
        int j = 0;
        while (j < tamanioOriginal) {
            cola.add(arregloAuxiliar[j]);
            j++;
        }
        return contador;
    }
    ```
  ],
  [
    *🔹 Solución B:*
    ```java
    public static int contarParesB(Queue<Integer> cola) {
        int contador = 0;
        int tamanioOriginal = cola.tamanio();
        Queue<Integer> colaAuxiliar = new Queue(tamanioOriginal);
        while (!cola.isEmpty()) {
            int num = cola.remove();
            if (num % 2 == 0) {
                contador++;
            }
            colaAuxiliar.add(num);
        }
        while (!colaAuxiliar.isEmpty()) {
            cola.encolar(colaAuxiliar.remove());
        }
        return contador;
    }
    ```
  ]
)

#caja_preguntas[
  + *1)* ¿Cuál de las dos respeta mejor las restricciones del ejercicio? Tenga en cuenta que la cola debe quedar "sin modificaciones". ¿Mantiene la Solución A el orden original de los elementos? ¿Mantiene la Solución B el orden original?
  + *2)* Explique qué ocurre internamente con los índices `head` y `tail` en la Solución B al momento de desencolar de la cola original y encolar en la auxiliar.
  + *3)* ¿Qué ventajas y desventajas tiene cada una? Mencione el consumo de memoria.
]

#resolucion(titulo: "Resolución del Ejercicio 7")[
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
