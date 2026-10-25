#import "../../template.typ": *

== 🔹 Ejercicio 6: Procesamiento de números enteros

Crear una lista de `N` enteros aleatorios. Construir otra con negativos al principio y positivos, incluido el cero, al final; sumar los elementos dentro del rango inclusivo `[A, B]`; y generar una tercera lista ordenada ascendentemente.

#caja_indicaciones[
  Validar `N` y los límites del rango. Si `A > B`, intercambiarlos o solicitar nuevamente los valores, dejando explícito el criterio elegido.
]

#caja_preguntas[
  + ¿Se conserva el orden original de cada grupo al separar negativos y no negativos?
  + ¿Qué ocurre si el usuario ingresa `A > B`?
  + Compare ordenar mediante un arreglo con la inserción ordenada en una lista.
  + ¿Cómo se eliminan duplicados de una lista ya ordenada en una sola pasada?
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    Sí. Al recorrer la lista original de izquierda a derecha y agregar primero todos los negativos y luego todos los no negativos, se conserva el orden relativo dentro de cada grupo. Es una partición estable.
  ]
  #respuesta("b")[
    El programa normaliza el intervalo usando `min(A, B)` y `max(A, B)`, por lo que acepta ambos órdenes y suma sobre el rango equivalente. Otra solución válida sería solicitar nuevamente los límites.
  ]
  #respuesta("c")[
    La inserción ordenada demuestra mejor el dominio de estructuras dinámicas porque no necesita copiar a un arreglo. Su costo es $O(n^2)$ en el peor caso, al igual que ordenar por inserciones; copiar a un arreglo agrega memoria y luego exige reconstruir la lista.
  ]
  #respuesta("d")[
    Como la lista está ordenada, se compara cada elemento con el último conservado y se omite si es igual. Así se eliminan duplicados en una sola pasada, con complejidad $O(n)$.
  ]

  El programa permite usar el mockup `{7, -3, 0, -8, 12, 4, -1, 9}` o generar valores aleatorios.
  #raw(read("../TP5_06.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))