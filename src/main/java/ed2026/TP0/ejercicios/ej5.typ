#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 5
// -------------------------------------------------------------
== 🔹 Ejercicio 5: Generación y Filtrado de Números Aleatorios

Desarrollar un programa que genere rangos aleatorios y evalúe divisibilidad.

=== Consigna:
- Generar de manera aleatoria tres números enteros:
  - `limiteInferior`: entre $1$ y $100$
  - `limiteSuperior`: entre $101$ y $200$
  - `divisor`: entre $2$ y $9$
- El programa debe:
  + *a)* Mostrar los tres números generados inicialmente.
  + *b)* Generar y mostrar todos los números desde `limiteInferior` hasta `limiteSuperior` que sean divisibles exactamente por `divisor`.
  + *c)* Calcular y mostrar el *promedio entero* de los números que cumplieron con la condición de divisibilidad.

#caja_indicaciones[
  - Utilizar `Random` para los valores iniciales y `Scanner` si aplica. Modularizar la validación y el procesamiento.
]

#caja_preguntas[
  + *a)* ¿Qué información debe mantenerse almacenada durante toda la ejecución del programa para poder calcular el promedio al final?
  + *b)* Si `limiteInferior = 10`, `limiteSuperior = 20` y `divisor = 3`. Sin ejecutar el programa: ¿Qué números se mostrarán en pantalla? ¿Cuál será el promedio entero?
  + *c)* ¿Qué ocurre si en el rango generado (por ejemplo, `limiteInferior=12`, `limiteSuperior=14`, `divisor=5`) ningún número es divisible? ¿Cómo se debe manejar el cálculo del promedio para evitar un error matemático de división por cero?
  + *d)* En el ejercicio se pide el "promedio entero". Si la suma de los números es $15$ y la cantidad es $2$, ¿qué diferencia hay en Java entre usar tipos `int` o `double` para almacenar y mostrar este resultado?
]

#resolucion(titulo: "Resolución del Ejercicio 5")[
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

  *Código Fuente:*
  ```java
  // Inserte o importe aquí su solución en Java
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
