#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 2
// -------------------------------------------------------------
== 🔹 Ejercicio 2: Simulador de Registro de Temperaturas (`Punto2.java`)

Desarrollar un programa que simule el registro de temperaturas de un sensor durante un día.

=== Consigna:
- Solicitar al usuario la cantidad de mediciones que desea simular.
- Por cada medición:
  + Generar y mostrar un número aleatorio entre $-10$ y $40$, simulando la temperatura en grados Celsius (°C).
- Al finalizar todas las mediciones:
  + Calcular y mostrar la *temperatura promedio* del día.
  + Contar y mostrar cuántas mediciones fueron *"Heladas"* ($< 0 degree "C"$) y cuántas *"Cálidas"* ($>= 30 degree "C"$).

#caja_indicaciones[
  - Utilizar `Scanner` para solicitar la cantidad de mediciones y `Random` para simular las temperaturas.
  - Controlar entrada de datos y modularizar adecuadamente.
]

#caja_preguntas[
  + *a)* Si se necesitara guardar el historial de todas las temperaturas para analizarlas nuevamente al final del programa, ¿alcanzaría con usar una única variable simple? Justifique.
  + *b)* ¿Qué ocurriría si la cantidad de mediciones ingresada fuera igual a 0? ¿Cómo se calcula el promedio en ese caso y cómo debería reaccionar el programa?
  + *c)* Si las mediciones aleatorias simuladas fueran: `-5`, `0`, `15` y `35`, sin ejecutar el programa, ¿cuál será el promedio? ¿Cuántas son "Heladas" y cuántas "Cálidas"?
  + *d)* Ahora se desea conocer también la temperatura máxima y mínima registrada. ¿Qué variables necesitarías agregar y cómo afectaría esto a la lógica dentro del ciclo?
]

#resolucion(titulo: "Resolución del Ejercicio 2")[
  #respuesta("a")[
    // Escribir aquí la respuesta a)
  ]
  #respuesta("b")[
    // Escribir aquí la respuesta b)
  ]
  #respuesta("c")[
    // Escribir aquí la respuesta c)
  ]
  #respuesta("d")[
    // Escribir aquí la respuesta d)
  ]

  *Código Fuente (`Punto2.java`):*
  ```java
  // Inserte o importe aquí su solución en Java
  // Tip: podés usar `#raw(read("../Punto2.java"), lang: "java")` para cargarlo automáticamente
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
