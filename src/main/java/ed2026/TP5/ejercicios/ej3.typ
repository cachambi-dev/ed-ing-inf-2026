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

#resolucion(titulo: "Implementación")[
  El programa correspondiente se encuentra en `TP5_03.java`.
  #raw(read("../TP5_03.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))