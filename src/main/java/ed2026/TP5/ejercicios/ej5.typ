#import "../../template.typ": *

== 🔹 Ejercicio 5: Aspirantes

Crear `Aspirante` con DNI, nombre, apellido y tres notas. Calcular el promedio de cada aspirante, devolver el de mayor promedio y crear una nueva lista con quienes obtengan promedio mayor o igual a `7`.

#caja_preguntas[
  + ¿La lista de aprobados comparte referencias con la lista original?
  + ¿Qué devuelve el máximo cuando la lista está vacía?
  + Para promedios `8, 6, 9 y 7`, ¿cuál es el máximo y cuántos aprueban?
  + ¿Dónde debe vivir el cálculo del promedio: en `Aspirante` o en el recorrido?
]

#resolucion(titulo: "Implementación")[
  El programa correspondiente se encuentra en `TP5_05.java`.
  #raw(read("../TP5_05.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))