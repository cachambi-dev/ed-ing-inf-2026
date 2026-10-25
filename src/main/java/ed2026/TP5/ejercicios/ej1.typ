#import "../../template.typ": *

== 🔹 Ejercicio 1: Inserción y eliminación por posición

Agregar a `SimpleLinkedList` métodos genéricos para insertar un elemento en una posición y eliminar el elemento ubicado en una posición. Controlar lista vacía y posiciones fuera de rango. Probarlos con objetos `Product`, mostrando la lista antes y después mediante un menú.

#caja_indicaciones[
  Usar `Scanner` o el helper del proyecto para validar los datos de entrada y separar la lógica de ingreso de la lógica de la lista.
]

#caja_preguntas[
  + ¿Por qué una lista enlazada debe recorrerse nodo por nodo para acceder a una posición?
  + ¿Qué ocurre al insertar en la posición `0` de una lista vacía y al eliminar en una posición igual al tamaño?
  + Si la lista es `[A, B, C]` e insertamos `D` en la posición `1`, ¿cómo quedan los enlaces?
  + ¿Por qué se debe guardar temporalmente el nodo siguiente antes de cambiar `next`?
]

#resolucion(titulo: "Implementación")[
  El programa correspondiente se encuentra en `TP5_01.java`.
  #raw(read("../TP5_01.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))