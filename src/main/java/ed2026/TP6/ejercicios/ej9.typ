#import "../../template.typ": *

== 🔹 Ejercicio 9: Inserción AVL IV

Insertar manualmente en un AVL inicialmente vacío: `50, 10, 20, 60, 70, 5, 2, 1, 80, 90, 100, 15, 12, 75, 65, 85`. Indicar tipo y cantidad de rotaciones, verificar con una aplicación, mostrar la representación parentizada y realizar el recorrido descendente.

#caja_preguntas[
  Registrar qué subárbol cambia después de cada rotación y comprobar que el recorrido descendente queda ordenado de mayor a menor.
]

#resolucion(titulo: "Resultado y código")[
  Se realizan 6 rotaciones: `LR` en `20`; `LL` en `2`; `RR` en `70`, `90` y `100`; y `RL` en `12`.

  Representación parentizada final: `20(5(2(1),12(10,15)),80(60(50,70(65,75)),90(85,100)))`.

  Recorrido descendente: `100, 90, 85, 80, 75, 70, 65, 60, 50, 20, 15, 12, 10, 5, 2, 1`.

  #raw(read("../TP6_09.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))