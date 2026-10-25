#import "../../template.typ": *

== 🔹 Ejercicio 10: Inserción AVL V

Insertar manualmente en un AVL inicialmente vacío: `30, 20, 10, 5, 15, 25, 40, 35, 50, 45, 55, 60, 1, 3, 12, 18`. Indicar tipo y cantidad de rotaciones realizadas y verificar el resultado con una aplicación.

#caja_indicaciones[
  Presentar la secuencia de balances que justifica cada rotación y la estructura final del árbol.
]

#resolucion(titulo: "Resultado y código")[
  Se realizan 4 rotaciones: `LL` en `10`; `RR` en `45` y `60`; y `LR` en `3`.

  Representación parentizada final: `40(20(10(3(1,5),15(12,18)),30(25,35)),50(45,55(,60)))`.

  El programa imprime además un pre order de verificación: `40, 20, 10, 3, 1, 5, 15, 12, 18, 30, 25, 35, 50, 45, 55, 60`.

  #raw(read("../TP6_10.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))