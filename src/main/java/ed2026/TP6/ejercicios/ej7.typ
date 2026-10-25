#import "../../template.typ": *

== 🔹 Ejercicio 7: Inserción AVL II

Insertar manualmente en un AVL inicialmente vacío: `50, 25, 10, 5, 2, 1, 75, 100, 125, 60, 80, 90, 85, 30, 35, 32`. Indicar tipo y cantidad de rotaciones, verificar con una aplicación, mostrar la representación parentizada y realizar el recorrido in order.

#caja_indicaciones[
  Registrar cada desbalance desde el nodo donde se detecta y distinguir rotaciones LL, LR, RR y RL.
]

#resolucion(titulo: "Resultado y código")[
  Se realizan 8 rotaciones: `LL` en las inserciones `10`, `2` y `1`; `RR` en `100` y `125`; y `RL` en `60`, `85` y `32`.

  Representación parentizada final: `25(5(2(1),10),75(50(32(30,35),60),100(85(80,90),125)))`.

  Recorrido in order: `1, 2, 5, 10, 25, 30, 32, 35, 50, 60, 75, 80, 85, 90, 100, 125`.

  #raw(read("../TP6_07.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))