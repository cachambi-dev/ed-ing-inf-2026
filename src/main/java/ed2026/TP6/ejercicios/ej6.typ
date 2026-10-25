#import "../../template.typ": *

== 🔹 Ejercicio 6: Inserción AVL I

En un AVL inicialmente vacío, insertar manualmente: `10, 20, 30, 5, 15, 25, 12, 17, 40, 35, 2, 1, 8, 7, 37`. Indicar cuándo se realizan rotaciones y su tipo. Verificar con una aplicación, escribir la representación parentizada final y el recorrido pre order.

#resolucion(titulo: "Herramienta de verificación")[
  La secuencia produce 4 rotaciones: una `RR` al insertar `30`, una `LL` al insertar `1`, una `RL` al insertar `7` y una `LR` al insertar `37`.

  Representación parentizada final: `20(10(2(1,7(5,8)),15(12,17)),30(25,37(35,40)))`.

  Recorrido pre order: `20, 10, 2, 1, 7, 5, 8, 15, 12, 17, 30, 25, 37, 35, 40`.

  #raw(read("../TP6_06.java"), lang: "java")
  #raw(read("../AVLTree.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))