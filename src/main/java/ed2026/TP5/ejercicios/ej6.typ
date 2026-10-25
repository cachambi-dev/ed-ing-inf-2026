#import "../../template.typ": *

== 🔹 Ejercicio 6: Procesamiento de números enteros

Crear una lista de `N` enteros aleatorios. Construir otra con negativos al principio y positivos, incluido el cero, al final; sumar los elementos dentro del rango inclusivo `[A, B]`; y generar una tercera lista ordenada ascendentemente.

#caja_indicaciones[
  Validar `N` y los límites del rango. Si `A > B`, intercambiarlos o solicitar nuevamente los valores, dejando explícito el criterio elegido.
]

#caja_preguntas[
  + ¿Se conserva el orden original de cada grupo al separar negativos y no negativos?
  + Compare ordenar mediante un arreglo con la inserción ordenada en una lista.
  + ¿Cómo se eliminan duplicados de una lista ya ordenada en una sola pasada?
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))