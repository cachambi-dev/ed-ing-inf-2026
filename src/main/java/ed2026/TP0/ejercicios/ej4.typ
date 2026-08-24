#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 4
// -------------------------------------------------------------
== 🔹 Ejercicio 4: Calculadora de Figuras Geométricas (`Punto4.java`)

Desarrollar una calculadora interactiva de áreas geométricas con menú de opciones.

=== Consigna:
- Mostrar un menú interactivo con las siguientes opciones:
  + Área de Cuadrado
  + Área de Triángulo
  + Área de Círculo
  + Salir
- Según la opción elegida, solicitar los datos requeridos (lado; base y altura; o radio).
- Calcular y mostrar el resultado del área.
- El menú debe repetirse tras cada operación hasta que el usuario elija la opción `4. Salir`.
- Si se ingresan dimensiones negativas, mostrar un mensaje de error sin realizar el cálculo.

#caja_indicaciones[
  - Utilizar `Scanner`, validar entradas no válidas o negativas y separar la lógica del menú de la lógica de los cálculos.
]

#caja_preguntas[
  + *a)* Un compañero propone usar una estructura anidada `if-else if` para ejecutar las opciones del menú. Otro propone usar un `switch`. ¿Cuál solución es más fácil de explicar y mantener para este problema? ¿Qué ventajas y desventajas tiene cada una?
  + *b)* ¿Qué sucede si el usuario ingresa una opción inexistente en el menú (ej. opción 9)? ¿Cómo debe manejarlo el programa?
  + *c)* Si quisiéramos agregar la opción "5. Perímetro de Cuadrado", ¿el diseño modular actual facilita esta extensión? ¿Qué cambios serían necesarios?
]

#resolucion(titulo: "Resolución del Ejercicio 4")[
  #respuesta("a")[
    // Escribir aquí la respuesta a)
  ]
  #respuesta("b")[
    // Escribir aquí la respuesta b)
  ]
  #respuesta("c")[
    // Escribir aquí la respuesta c)
  ]

  *Código Fuente (`Punto4.java`):*
  ```java
  // Inserte o importe aquí su solución en Java
  // Tip: podés usar `#raw(read("../Punto4.java"), lang: "java")` para cargarlo automáticamente
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
