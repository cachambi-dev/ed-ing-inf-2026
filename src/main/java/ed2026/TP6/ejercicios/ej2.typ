#import "../../template.typ": *

== 🔹 Ejercicio 2: Recorridos de árboles binarios

Construir los árboles binarios A y B de las figuras del enunciado. Imprimir su representación parentizada y los recorridos in order, pre order, post order y descending order.

#caja_preguntas[
  + En un ABB, ¿qué recorrido produce los elementos de menor a mayor? ¿Y de mayor a menor?
  + ¿Cuándo se imprimen los paréntesis de apertura y cierre?
  + ¿Cómo se representa un nodo sin hijo izquierdo pero con hijo derecho?
]

#resolucion(titulo: "Implementación")[
  El programa correspondiente se encuentra en `TP6_02.java`.
  #raw(read("../TP6_02.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))