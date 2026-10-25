#import "../../template.typ": *

== 🔹 Ejercicio 2: Recorridos de árboles binarios

Construir los árboles binarios A y B de las figuras del enunciado. Imprimir su representación parentizada y los recorridos in order, pre order, post order y descending order.

#caja_preguntas[
  + En un ABB, ¿qué recorrido produce los elementos de menor a mayor? ¿Y de mayor a menor?
  + ¿Cuándo se imprimen los paréntesis de apertura y cierre?
  + ¿Cómo se representa un nodo sin hijo izquierdo pero con hijo derecho?
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    En un ABB, el recorrido in order muestra los elementos de menor a mayor y descending order los muestra de mayor a menor. Pre order y post order no garantizan orden ascendente.
  ]
  #respuesta("b")[
    La apertura se imprime al entrar al nodo cuando existe al menos un hijo; luego se recorre el subárbol izquierdo y, si existe, se imprime la coma antes del derecho. El paréntesis de cierre se imprime al terminar ambos subárboles.
  ]
  #respuesta("c")[
    Debe imprimirse una representación con espacio vacío para el hijo izquierdo, por ejemplo `nodo(,derecho)`. Así se conserva la información de que el hijo derecho existe y el izquierdo no.
  ]

  El mockup construye las figuras A y B y muestra sus cuatro recorridos.
  #raw(read("../TP6_02.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))