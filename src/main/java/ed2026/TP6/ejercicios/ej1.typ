#import "../../template.typ": *

== 🔹 Ejercicio 1: Propiedades de un árbol binario

Utilizar `BinaryTree<T>` para construir el árbol de la figura del enunciado, cuya raíz es `527`. Calcular cantidad de nodos, hojas, nodos internos, máximo nivel y altura; realizar el recorrido descendente e imprimir la representación parentizada.

#caja_preguntas[
  + ¿Cuál es la diferencia entre el nivel de un nodo y la altura del árbol?
  + ¿Qué devuelven los métodos de cálculo si el árbol está vacío?
  + Compare contar hojas recursivamente con copiarlas a una lista y usar `size()`.
]

#resolucion(titulo: "Implementación")[
  El programa correspondiente se encuentra en `TP6_01.java`.
  #raw(read("../TP6_01.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))