#import "../../template.typ": *

== 🔹 Ejercicio 3: Búsqueda y modificación en un ABB

Incorporar en `BinarySearchTree` los métodos genéricos `buscar(ELEMENT item)` y `modificar(ELEMENT item, ELEMENT nuevo)`. El primero devuelve el elemento coincidente o `null`; el segundo reemplaza el elemento y devuelve `true`, o devuelve `false` si no existe.

#caja_preguntas[
  + ¿Qué ocurre si el nuevo valor rompe la propiedad del ABB?
  + ¿Qué sucede si `nuevo` es igual a `item`?
  + Probar modificación de la raíz, de una hoja y de un nodo inexistente.
]

#resolucion(titulo: "Referencia de implementación")[
  La clase base utilizada para este ejercicio es `BinarySearchTree.java`.
  #raw(read("../BinarySearchTree.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))