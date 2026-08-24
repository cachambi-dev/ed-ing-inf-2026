#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 3
// -------------------------------------------------------------
== 🔹 Ejercicio 3: Rendimiento Académico de un Estudiante (`Punto3.java`)

Desarrollar un programa que calcule y clasifique el rendimiento de un estudiante en un examen.

=== Consigna:
- Solicitar: cantidad total de preguntas del examen y cantidad de respuestas correctas.
- Calcular el porcentaje de rendimiento:
  $ "Porcentaje" = ("Respuestas correctas" / "Total de preguntas") times 100 $
- Clasificar según las siguientes pautas:
  - $>= 90"%"$: *Excelente*
  - 70% a 89.99%: *Muy Bueno*
  - 50% a 69.99%: *Aprobado*
  - $< 50"%"$: *Desaprobado*
- Mostrar el porcentaje calculado y la categoría obtenida.

#caja_indicaciones[
  - Utilizar `Scanner` con control de excepciones/errores e ingreso modularizado.
]

#caja_preguntas[
  + *a)* ¿Qué validaciones se deben aplicar a las entradas? Considere la relación lógica entre preguntas totales y respuestas correctas.
  + *b)* Si un estudiante obtiene un porcentaje de rendimiento de exactamente 89.995%, ¿qué categoría le corresponde de acuerdo al enunciado? ¿Qué acción se debería hacer para que el porcentaje sea justo 89.99%? ¿Por qué es importante probar valores justo en el límite de los tramos?
  + *c)* Un compañero escribe la siguiente línea para calcular el porcentaje:
    ```java
    int porcentaje = (correctas / total) * 100;
    ```
    Si `correctas = 4` y `total = 5`, ¿qué resultado devuelve esa línea? ¿Constituye un error? Justifique.
]

#resolucion(titulo: "Resolución del Ejercicio 3")[
  #respuesta("a")[
    // Escribir aquí la respuesta a)
  ]
  #respuesta("b")[
    // Escribir aquí la respuesta b)
  ]
  #respuesta("c")[
    // Escribir aquí la respuesta c)
  ]

  *Código Fuente (`Punto3.java`):*
  ```java
  // Inserte o importe aquí su solución en Java
  // Tip: podés usar `#raw(read("../Punto3.java"), lang: "java")` para cargarlo automáticamente
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
