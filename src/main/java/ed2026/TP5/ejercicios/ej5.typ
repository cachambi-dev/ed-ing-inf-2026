#import "../../template.typ": *

== 🔹 Ejercicio 5: Aspirantes

Crear `Aspirante` con DNI, nombre, apellido y tres notas. Calcular el promedio de cada aspirante, devolver el de mayor promedio y crear una nueva lista con quienes obtengan promedio mayor o igual a `7`.

#caja_preguntas[
  + ¿La lista de aprobados comparte referencias con la lista original?
  + ¿Qué devuelve el máximo cuando la lista está vacía?
  + Para promedios `8, 6, 9 y 7`, ¿cuál es el máximo y cuántos aprueban?
  + ¿Dónde debe vivir el cálculo del promedio: en `Aspirante` o en el recorrido?
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    La lista nueva comparte las referencias a los objetos `Aspirante`; no crea copias profundas. Por eso, si se cambia una nota en un aspirante original, el cambio también se observa desde la lista de aprobados que contiene ese mismo objeto.
  ]
  #respuesta("b")[
    Si todos tienen promedio menor que `7`, la lista de aprobados queda vacía. Si la lista original está vacía, el método que busca el máximo devuelve `null`, porque no existe un aspirante candidato.
  ]
  #respuesta("c")[
    El promedio más alto es `9` y aprueban tres aspirantes: los de promedio `8`, `9` y `7`.
  ]
  #respuesta("d")[
    El promedio debe ser responsabilidad de `Aspirante`, por ejemplo mediante un método `calcularPromedio()`. La clase `Curso` debería encargarse de recorrer y seleccionar, no de conocer cómo se calcula internamente una nota.
  ]

  El mockup contiene diez aspirantes con promedios crecientes, por lo que permite observar rápidamente el máximo y la lista de aprobados.
  #raw(read("../TP5_05.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))