#import "../../template.typ": *

== 🔹 Ejercicio 8: Inserción AVL III

Insertar manualmente en un AVL inicialmente vacío: `10, 20, 30, 40, 50, 60, 5, 2, 1, 25, 35, 15, 12, 55, 65, 62`. Indicar tipo y cantidad de rotaciones, verificar con una aplicación, mostrar la representación parentizada y realizar el recorrido post order.

#resolucion(titulo: "Verificación")[
  Se realizan 9 rotaciones: `RR` en `30`, `50` y `60`; `LL` en `2` y `1`; `LR` en `25`; y `RL` en `12`, `55` y `62`.

  Representación parentizada final: `20(5(2(1),12(10,15)),40(30(25,35),55(50,62(60,65))))`.

  Recorrido post order: `1, 2, 10, 15, 12, 5, 25, 35, 30, 50, 60, 65, 62, 55, 40, 20`.

  #raw(read("../TP6_08.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))