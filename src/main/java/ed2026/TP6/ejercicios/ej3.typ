#import "../../template.typ": *

== 🔹 Ejercicio 3: Búsqueda y modificación en un ABB

Incorporar en `BinarySearchTree` los métodos genéricos `buscar(ELEMENT item)` y `modificar(ELEMENT item, ELEMENT nuevo)`. El primero devuelve el elemento coincidente o `null`; el segundo reemplaza el elemento y devuelve `true`, o devuelve `false` si no existe.

#caja_preguntas[
  + ¿Qué ocurre si el nuevo valor rompe la propiedad del ABB?
  + ¿Qué sucede si `nuevo` es igual a `item`?
  + Probar modificación de la raíz, de una hoja y de un nodo inexistente.
]

 #resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    Sí. Si `nuevo` no conserva la relación de orden con los subárboles, el ABB queda inconsistente: una búsqueda posterior puede dirigirse por la rama equivocada y no encontrar un elemento que sí está almacenado.
  ]
  #respuesta("b")[
    El nodo conserva el mismo valor y el método devuelve `true`. No cambia la estructura ni la propiedad del árbol.
  ]
  #respuesta("c")[
    El mockup modifica la raíz y una hoja correctamente, y devuelve `false` para el elemento inexistente. La prueba también muestra por qué modificar una clave por otra que no respeta el orden debe evitarse o implementarse como eliminar y volver a insertar.
  ]

  Se agregaron `buscar` y `modificar` al ABB. El programa separado usa un mockup con raíz, hojas y un elemento inexistente.
  #raw(read("../BinarySearchTree.java"), lang: "java")
  #raw(read("../TP6_03.java"), lang: "java")
]

#resolucion(titulo: "Nota sobre la precondición")[
  `modificar` cumple literalmente la consigna, pero el llamador debe proporcionar un nuevo valor compatible con el orden del ABB. La implementación no puede validar en tiempo constante todos los límites de los subárboles sin recorrerlos.
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))