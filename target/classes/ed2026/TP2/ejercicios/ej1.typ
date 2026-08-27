#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 1
// -------------------------------------------------------------
== 🔹 Ejercicio 1: Operaciones Básicas sobre Arreglos de Enteros

Desarrollar un programa que solicite al usuario un valor entero $N$. Generar $N$ números aleatorios (entre $-50$ y $50$) y cargarlos en un arreglo. Luego el programa debe implementar:

=== Consigna:
- *a)* Un método que reciba el arreglo inicial y devuelva otro arreglo que contenga los elementos desplazados una posición hacia la izquierda (el primer elemento debe pasar a la última posición).
- *b)* Un método que calcule y muestre la suma de los números positivos y la suma de los números negativos por separado.
- *c)* Un método que invierta el orden de los elementos del arreglo original modificándolo directamente (sin crear un arreglo nuevo) y luego lo muestre.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio. También necesita del objeto `Random` para generar valores de manera aleatoria.
]

#caja_preguntas[
  + *a)* En el punto a), el método debe devolver un nuevo arreglo, mientras que en el punto c) se debe modificar el arreglo original. ¿Qué diferencia existe en la firma del método entre ambos puntos? ¿Por qué el punto c) no necesita devolver un valor?
  + *b)* ¿Qué ocurre si el usuario ingresa $N=0$? ¿Cómo se comporta el método de desplazamiento y el de inversión? ¿El programa soporta esta situación sin lanzar excepciones?
  + *c)* Si el arreglo generado contiene `10`, `-5`, `3` y `0`, sin ejecutar el programa: ¿Cuál será el contenido del arreglo después de ejecutar el punto a)? ¿Y después de ejecutar el punto c) sobre el arreglo original?
  + *d)* En el punto c), se pide modificar el arreglo original. ¿Qué ventajas y desventajas tiene modificar el arreglo original frente a crear y devolver un arreglo nuevo?
]

#resolucion(titulo: "Resolución del Ejercicio 1")[
  #respuesta("a")[
    // Escribir aquí la respuesta a)
  ]
  #respuesta("b")[
    // Escribir aquí la respuesta b)
  ]
  #respuesta("c")[
    // Escribir aquí la respuesta c)
  ]
  #respuesta("d")[
    // Escribir aquí la respuesta d)
  ]

  *Código Fuente:*
  ```java
  // Inserte o importe aquí su solución en Java
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
