#import "../../template.typ": *

== 🔹 Ejercicio 8: Duplicación en una pila

Implementar una `Stack<T>` usando una lista genérica. Cargar enteros aleatorios o ingresados por teclado y duplicar los valores múltiplos de `3`, conservando el orden relativo de los demás elementos.

#caja_preguntas[
  + ¿Conviene insertar y eliminar al inicio o al final de una lista simple para implementar LIFO?
  + ¿Qué ocurre si la pila está vacía?
  + Si la pila, de cima a base, es `3, 4, 9`, ¿qué debe quedar después de duplicar?
  + ¿Por qué una pila auxiliar evita perder elementos o alterar el orden?
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))