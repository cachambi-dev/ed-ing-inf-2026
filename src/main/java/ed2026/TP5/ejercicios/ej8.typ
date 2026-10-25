#import "../../template.typ": *

== 🔹 Ejercicio 8: Duplicación en una pila

Implementar una `Stack<T>` usando una lista genérica. Cargar enteros aleatorios o ingresados por teclado y duplicar los valores múltiplos de `3`, conservando el orden relativo de los demás elementos.

#caja_preguntas[
  + ¿Conviene insertar y eliminar al inicio o al final de una lista simple para implementar LIFO?
  + ¿Qué ocurre si la pila está vacía?
  + Si la pila, de cima a base, es `3, 4, 9`, ¿qué debe quedar después de duplicar?
  + ¿Por qué una pila auxiliar evita perder elementos o alterar el orden?
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    Conviene insertar y eliminar al inicio de la lista simple. Ambas operaciones son $O(1)$ y el inicio de la lista representa la cima de la pila, respetando LIFO.
  ]
  #respuesta("b")[
    Si la pila está vacía, no se realizan operaciones y permanece vacía. El método debe controlar `isEmpty()` antes de hacer `pop()` o `peek()`.
  ]
  #respuesta("c")[
    Si la pila original, de cima a base, es `3, 4, 9`, la pila resultante debe ser `3, 3, 4, 9, 9`. Los múltiplos de 3 aparecen duplicados y los demás conservan su posición relativa.
  ]
  #respuesta("d")[
    Modificar directamente la pila mientras se la vacía puede perder elementos y altera el orden original. La pila auxiliar permite recorrerla completa y reconstruirla con el orden correcto.
  ]

  La clase `Stack` usa `SimpleLinkedList` y el programa incluye un mockup, además de generación aleatoria.
  #raw(read("../Stack.java"), lang: "java")
  #raw(read("../TP5_08.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))