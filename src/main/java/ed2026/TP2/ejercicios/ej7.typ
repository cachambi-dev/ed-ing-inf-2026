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
    La Solución B respeta mejor la consigna porque crea el arreglo con el tamaño exacto de los números pares. La Solución A crea un arreglo de tamaño completo y, si hay muchos elementos no pares, quedan posiciones sin usar. Eso deja valores por defecto (`0`) en esas posiciones y puede producir resultados incorrectos.
  ]
  #respuesta("2")[
    La Solución B es más fácil de explicar porque primero cuenta cuántos pares hay, luego crea el arreglo de ese tamaño y por último llena el arreglo resultante. La lógica es clara y evita valores vacíos.
  ]
  #respuesta("3")[
    La Solución A es más corta, pero desperdicia memoria y produce un arreglo con espacios sin usar. La Solución B usa un poco más de memoria en el conteo, pero garantiza que el tamaño del arreglo resultante sea exacto y que no hayan posiciones sin sentido.
  ]
  #respuesta("4")[
    Si se permitiera usar `ArrayList`, el problema de tamaños dinámicos desaparece automáticamente porque la lista puede crecer según la cantidad de elementos que se agregan. Luego, se puede convertir a arreglo con `.toArray()` si se necesita.
  ]
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
