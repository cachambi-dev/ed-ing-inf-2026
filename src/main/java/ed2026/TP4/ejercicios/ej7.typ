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
    La Solución B respeta mejor la consigna porque conserva el orden original de la cola y, además, restaura la estructura al final. La Solución A también restaura los elementos, pero usa un arreglo auxiliar para guardar los valores y luego los vuelve a encolar; eso es válido, pero es menos natural y más costoso en memoria.
  ]
  #respuesta("2")[
    En la Solución B, cada `poll()` avanza `head`, y cada `offer()` mueve `tail`. El recorrido de la cola original vacía la estructura y luego se usa la cola auxiliar para mantener los elementos temporales; cuando se reencolan, `head` y `tail` vuelven a posicionarse para reconstruir la cola original en el mismo orden.
  ]
  #respuesta("3")[
    La Solución A tiene la ventaja de ser más explícita con un arreglo, pero usa más memoria porque debe crear un arreglo del tamaño original. La Solución B usa una cola auxiliar y resulta más clara para la lógica de FIFO, aunque también consume memoria auxiliar. En términos generales, ambas cumplen la consigna si restauran la cola al final.
  ]
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
