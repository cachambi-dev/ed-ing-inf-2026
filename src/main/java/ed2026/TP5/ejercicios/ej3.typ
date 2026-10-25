#import "../../template.typ": *

== 🔹 Ejercicio 3: Intersección y unión de suscripciones

Crear dos listas simples de `Suscripcion`. Construir la intersección por usuario, contar las suscripciones de un usuario en ambas listas y generar una unión ordenada por `fechaInicio`, sin destruir las listas originales.

#caja_indicaciones[
  Cargar datos de prueba con al menos un usuario repetido. Una unión de listas vacías debe producir una lista vacía.
]

#caja_preguntas[
  + ¿Cómo se optimizaría la intersección si ambas listas estuvieran ordenadas por usuario?
  + ¿Qué resultado se espera si un usuario aparece tres veces en una lista y dos en la otra?
  + ¿Se reutilizan las referencias a los objetos o se crean copias? Indique la consecuencia.
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    No es necesario recorrer completamente la segunda lista si ambas están ordenadas por usuario. Se pueden usar dos recorridos simultáneos: avanzar el puntero del usuario menor y agregar cuando ambos usuarios coinciden. Esto reduce el recorrido a tiempo lineal, $O(n + m)$.
  ]
  #respuesta("b")[
    Si ambas listas están vacías, la unión devuelve una nueva `SimpleLinkedList` vacía. Las listas originales permanecen sin cambios.
  ]
  #respuesta("c")[
    El conteo esperado es `5`, porque se suman las tres suscripciones de la primera lista y las dos de la segunda. La intersección contiene las suscripciones de la primera lista cuyos usuarios también aparecen en la segunda; en el mockup, aparecen `Usuario 2` y `Usuario 4`.
  ]
  #respuesta("d")[
    Se pueden reutilizar las referencias a los objetos y crear nodos nuevos en la lista resultante. Así se evita duplicar objetos, pero una modificación posterior del objeto se verá desde todas las listas que compartan esa referencia.
  ]

  El mockup carga dos listas con usuarios repetidos y fechas consecutivas. La unión copia las referencias a una lista auxiliar y ordena esa lista, sin vaciar ni reordenar las originales.
  #raw(read("../TP5_03.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))