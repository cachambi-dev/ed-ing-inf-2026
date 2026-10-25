#import "../../template.typ": *

== 🔹 Ejercicio 1: Propiedades de un árbol binario

Utilizar `BinaryTree<T>` para construir el árbol de la figura del enunciado, cuya raíz es `527`. Calcular cantidad de nodos, hojas, nodos internos, máximo nivel y altura; realizar el recorrido descendente e imprimir la representación parentizada.

#caja_preguntas[
  + ¿Cuál es la diferencia entre el nivel de un nodo y la altura del árbol?
  + ¿Qué devuelven los métodos de cálculo si el árbol está vacío?
  + Compare contar hojas recursivamente con copiarlas a una lista y usar `size()`.
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    El nivel identifica la distancia de un nodo respecto de la raíz; la altura es la longitud del camino más largo desde la raíz hasta una hoja. Con la convención usada aquí, la raíz está en nivel `0` y un árbol de un solo nodo tiene altura `1` porque `Height()` devuelve `MaxLevel() + 1`.
  ]
  #respuesta("b")[
    Para un árbol vacío, `NodeCount()`, `LeafCount()` e `InternalCount()` devuelven `0`; `MaxLevel()` devuelve `-1` y `Height()` devuelve `0`.
  ]
  #respuesta("c")[
    El método recursivo usa memoria proporcional a la profundidad de la recursión y no crea otra colección. Copiar hojas a una lista necesita memoria adicional proporcional a la cantidad de hojas, aunque puede ser útil si luego se deben procesar o mostrar esas hojas.
  ]

  Para el árbol del enunciado se obtienen `15` nodos, `8` hojas, `7` nodos internos, máximo nivel `4` y altura `5`. El mockup ya está construido en el programa ejecutable.
  #raw(read("../TP6_01.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))