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

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))