#import "../../template.typ": *

== 🔹 Ejercicio 5: Vuelos ordenados por destino

Crear `Vuelo` con `numeroVuelo`, `aerolinea`, `destino` y `cantidadPasajeros`. Guardar al menos cinco vuelos en un ABB ordenado por destino, mostrar el recorrido post order, modificar pasajeros buscando por destino y cancelar un vuelo eliminándolo por número.

#caja_indicaciones[
  El árbol está ordenado por destino, por lo que eliminar por `numeroVuelo` no puede resolverse como una búsqueda binaria directa salvo que ambas claves coincidan.
]

#caja_preguntas[
  + ¿Cómo buscar un número de vuelo si el árbol está ordenado por destino?
  + ¿Qué técnica permite eliminar un nodo con dos hijos sin romper el orden?
  + Probar eliminaciones de una hoja, un nodo con un hijo y un nodo con dos hijos.
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    Como el árbol está ordenado por destino, no se puede hacer una búsqueda binaria por `numeroVuelo`. Se debe recorrer el árbol completo, o mantener además un índice auxiliar por número. El programa conserva una lista auxiliar de vuelos para localizar el objeto y luego lo elimina del ABB usando su destino.
  ]
  #respuesta("b")[
    Para un nodo con dos hijos se puede copiar el sucesor in order, que es el menor elemento del subárbol derecho, y luego eliminar ese sucesor; alternativamente se puede fusionar con el mayor del subárbol izquierdo.
  ]
  #respuesta("c")[
    Se deben probar tres casos: eliminar una hoja, enlazar el único hijo cuando el nodo tiene uno y reemplazar por sucesor o predecesor cuando tiene dos. El método `remove` de `BinarySearchTree` cubre esos casos.
  ]

  `Vuelo` compara por destino. `TP6_05` carga cinco vuelos mockup, modifica pasajeros por destino y cancela por número mediante la lista auxiliar.
  #raw(read("../Vuelo.java"), lang: "java")
  #raw(read("../TP6_05.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))