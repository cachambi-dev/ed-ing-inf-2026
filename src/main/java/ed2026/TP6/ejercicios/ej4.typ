#import "../../template.typ": *

== 🔹 Ejercicio 4: Empleados ordenados por legajo

Crear un programa que almacene empleados, con legajo, nombre, departamento y salario, en un ABB ordenado por legajo. Solicitar la cantidad de empleados, permitir carga manual o aleatoria, mostrar recorridos pre order e in order y buscar por legajo.

#caja_indicaciones[
  Validar la entrada mediante `Scanner` o los helpers del proyecto y separar ingreso, validación y operaciones del árbol.
]

#caja_preguntas[
  + ¿Por qué elegir un ABB en lugar de una lista enlazada?
  + ¿Cómo manejar empleados con el mismo legajo?
  + ¿El árbol ordenado por legajo permite listar directamente por salario?
  + ¿Qué método debe sobrescribirse al implementar `Comparable`?
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))