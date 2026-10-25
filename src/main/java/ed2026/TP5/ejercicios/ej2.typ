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

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    La lista doble permite recorrer en ambos sentidos mediante `next` y `prev`. En este ejercicio el recorrido hacia adelante es suficiente, pero la estructura facilita volver hacia atrás y eliminar nodos intermedios actualizando los enlaces de ambos vecinos.
  ]
  #respuesta("b")[
    El filtro devuelve una lista doble vacía. No se retorna `null`, porque una colección vacía representa correctamente que no hubo coincidencias y permite recorrerla sin agregar una validación especial.
  ]
  #respuesta("c")[
    Agregar al final y ordenar después es simple, pero requiere una etapa adicional de ordenamiento y puede costar más tiempo. La inserción ordenada mantiene el orden en todo momento y evita ordenar la lista completa, aunque necesita buscar la posición correcta y actualizar más punteros.
  ]
  #respuesta("d")[
    En el caso general se actualizan cuatro referencias: `prev.next`, `next.prev` y, al desconectar el nodo eliminado, sus referencias `prev` y `next`. Si se habla solo de los vecinos, son dos enlaces principales.
  ]

  El mockup contiene diez canciones, con Soda Stereo y Charly García repetidos, para probar tanto el filtro como las estadísticas por artista.
  #raw(read("../TP5_02.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))