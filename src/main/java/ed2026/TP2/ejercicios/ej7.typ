#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 7
// -------------------------------------------------------------
== 🔹 Ejercicio 7: Análisis de Código — Extracción de Números Pares

Leer atentamente el enunciado presentado a continuación y luego, analizar las soluciones propuestas.

=== Enunciado:
Desarrollar un método que reciba un arreglo de números enteros y devuelva un nuevo arreglo que contenga únicamente los números pares del arreglo original, manteniendo su orden. No se debe modificar el arreglo original.

=== Comparativa de Soluciones:

#grid(
  columns: (1fr),
  gutter: 10pt,
  [
    *🔹 Solución A:*
    ```java
    public static int[] obtenerParesA(int[] arr) {
        int[] nuevo = new int[arr.length];
        int j = 0;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] % 2 == 0) {
                nuevo[j] = arr[i];
                j++;
            }
        }
        return nuevo;
    }
    ```
  ],
  [
    *🔹 Solución B:*
    ```java
    public static int[] obtenerParesB(int[] arr) {
        int contador = 0;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] % 2 == 0) {
                contador++;
            }
        }
        int[] nuevo = new int[contador];
        int j = 0;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] % 2 == 0) {
                nuevo[j] = arr[i];
                j++;
            }
        }
        return nuevo;
    }
    ```
  ]
)

#caja_preguntas[
  + *1)* ¿Cuál de las dos soluciones respeta mejor las restricciones del ejercicio? Piense específicamente en la instrucción "devolver un nuevo arreglo". ¿Qué sucede con la *Solución A* si el arreglo original tiene 30 elementos y solo 2 son pares? ¿Qué contiene el arreglo devuelto por A en las posiciones no usadas?
  + *2)* ¿Cuál solución es más fácil de explicar a un compañero? Argumente sobre la claridad del código.
  + *3)* ¿Qué ventajas y desventajas presenta cada solución? Haga referencia al consumo de memoria y la exactitud del tamaño del arreglo resultante.
  + *4)* Si la consigna permitiera usar `ArrayList` en lugar de arreglo estático, ¿cuál de los dos problemas de diseño se resolvería automáticamente? Explique por qué.
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
  #respuesta("4")[
    // Escribir aquí la respuesta 4)
  ]
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
