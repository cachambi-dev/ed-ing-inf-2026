#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 1
// -------------------------------------------------------------
== 🔹 Ejercicio 1: Reubicación y Filtrado de Niveles de Señal con Colas

Realizar el ingreso de $N$ enteros (simulando niveles de señal) en una cola. Además, pedir al usuario el ingreso de un número que será considerado como umbral máximo. Los elementos de la cola que excedan el valor umbral deberán ser retirados y reubicados al final de la misma. Mostrar los elementos de la cola después de realizada la reubicación. Contar y mostrar la cantidad de números de la cola que no superen al umbral ingresado por el usuario. Finalmente, crear una nueva cola que solo contenga aquellos números que no superen dicho umbral.

=== Consigna:
*En el programa principal (`main`) se debe:*
- *a)* Solicitar al usuario la cantidad de elementos $N$ y generar los números aleatoriamente.
- *b)* Solicitar el valor del umbral máximo.
- *c)* Ejecutar las operaciones indicadas y mostrar el estado de la cola original tras la reubicación, la cantidad de elementos por debajo del umbral, y los elementos de la nueva cola generada.
- *d)* Cuando se recorran los elementos de la cola esta debe mantenerse sin modificaciones.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio. También necesita del objeto `Random` para generar valores de manera aleatoria.
]

#caja_preguntas[
  + *a)* Si la cola original tiene los elementos `[10, 50, 20, 5]` (siendo `10` el primero) y el umbral es `15`. Sin ejecutar el programa: ¿Cuál será el orden exacto de la cola después de la reubicación?
  + *b)* ¿Qué ocurre si todos los elementos de la cola superan el umbral máximo? ¿El programa entra en un bucle infinito o se reordena correctamente? Justifique cómo evitar un bucle infinito basándose en el tamaño de la cola.
  + *c)* Para "reubicar al final", se debe sacar el elemento y volver a meterlo. ¿Por qué es importante usar un bucle controlado por el tamaño original de la cola?
  + *d)* Si ahora se pidiera que los elementos que superan el umbral se reubiquen en una cola nueva en lugar de al final de la misma cola, ¿qué cambios se deberían hacer en la lógica del algoritmo?
]

#resolucion(titulo: "Resolución del Ejercicio 1")[
  #respuesta("a")[
    Si la cola original es `[10, 50, 20, 5]` y el umbral es `15`, los elementos que superan el umbral se reubican al final. Entonces:

    - `10` queda porque no supera el umbral.
    - `50` se reubica al final.
    - `20` se reubica al final.
    - `5` queda porque no supera el umbral.

    Resultado final: `[10, 5, 50, 20]`.
  ]
  #respuesta("b")[
    Si todos los elementos superan el umbral, la cola de elementos válidos queda vacía. El algoritmo no entra en un bucle infinito porque el recorrido se controla con el tamaño original de la cola o con una condición `while (!cola.isEmpty())` sobre una cola auxiliar que se va reduciendo. La clave es que cada elemento se procesa una sola vez y luego se reencola en la estructura adecuada.
  ]
  #respuesta("c")[
    Es importante usar un bucle controlado por el tamaño original porque si se usa el mismo tamaño de la cola mientras se va modificando, puede producir errores o iteraciones extra. El tamaño original representa la cantidad de elementos a procesar; al usar ese límite, se asegura que cada elemento se inspecciona exactamente una vez.
  ]
  #respuesta("d")[
    Si se quisiera poner los elementos que exceden el umbral en una cola nueva, la lógica cambiaría: en lugar de reubicar dentro de la misma cola, se debería crear otra cola auxiliar y encolar allí cada elemento que supera el umbral. La cola original quedaría con solo los elementos que no superan el valor, y la nueva cola contaría los descartados o reubicados.
  ]

  *Código Fuente (`TP4_01.java`):*
  #raw(read("../TP4_01.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
