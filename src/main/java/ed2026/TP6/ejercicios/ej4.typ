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

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    Un ABB permite buscar por legajo en tiempo promedio $O(log n)$ cuando está equilibrado, mientras que una lista enlazada necesita recorrer elementos hasta encontrarlo, con costo $O(n)$. El ABB también mantiene el recorrido in order ordenado por legajo.
  ]
  #respuesta("b")[
    La implementación actual inserta claves repetidas hacia la derecha. Para empleados, lo más claro es rechazar el duplicado o actualizar el empleado existente; debe definirse una política para no tener legajos ambiguos.
  ]
  #respuesta("c")[
    No. El árbol está ordenado por legajo, por lo que sus recorridos no ordenan por salario. Para listar por salario se necesita otro árbol con esa clave, una lista auxiliar ordenada o recorrer todos y ordenar.
  ]
  #respuesta("d")[
    Se debe sobrescribir `compareTo(Empleado otro)`, comparando los legajos. La comparación debe ser consistente con el criterio de inserción y búsqueda; de lo contrario, el árbol puede dirigir las búsquedas por ramas incorrectas.
  ]

  `Empleado` implementa `Comparable<Empleado>` por legajo. `TP6_04` permite usar cinco empleados mockup o generar empleados, muestra pre order e in order y busca un legajo.
  #raw(read("../Empleado.java"), lang: "java")
  #raw(read("../TP6_04.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))