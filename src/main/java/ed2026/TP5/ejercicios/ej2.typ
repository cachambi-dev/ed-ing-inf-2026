#import "../../template.typ": *

== 🔹 Ejercicio 2: Lista doble de canciones

Usar una lista doblemente enlazada de objetos `Cancion` para obtener la canción más antigua, filtrar por artista y construir una lista de `EstadisticaArtista` ordenada de mayor a menor por la suma de duraciones. Cargar al menos diez canciones con artistas repetidos y solicitar el artista por teclado.

#caja_indicaciones[
  Si el artista no existe, el resultado del filtro debe ser una lista vacía. La solución debe mantener separadas la entrada, el procesamiento y la presentación.
]

#caja_preguntas[
  + ¿Qué ventaja ofrece una lista doble frente a una simple para recorrer y procesar canciones?
  + ¿Qué retorna el filtro cuando el artista buscado no existe?
  + Compare agregar al final y ordenar después con inserción ordenada.
  + Al eliminar un nodo intermedio, ¿qué punteros deben actualizarse?
]

#resolucion(titulo: "Implementación")[
  El programa correspondiente se encuentra en `TP5_02.java`.
  #raw(read("../TP5_02.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))