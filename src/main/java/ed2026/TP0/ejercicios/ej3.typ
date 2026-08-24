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
    Las validaciones indispensables para garantizar la consistencia de los datos son:
    1. *Tipo de dato:* Verificar que las entradas sean números enteros válidos (controlando excepciones o usando `hasNextInt()`).
    2. *Total de preguntas:* Debe ser estrictamente positivo ($"total" >= 1$), ya que un examen no puede tener cero ni preguntas negativas, y evita además la división por cero.
    3. *Respuestas correctas:* Deben ser mayores o iguales a cero ($"correctas" >= 0$).
    4. *Relación lógica:* Las respuestas correctas no pueden exceder la cantidad total de preguntas ($"correctas" <= "totalPreguntas"$). Por lo tanto, el rango permitido para las correctas es $[0, "totalPreguntas"]$.
  ]

  #respuesta("b")[
    - *Categoría correspondiente:* Dado que $89.995\% < 90\%$, según las reglas del enunciado le corresponde la categoría *"Muy Bueno"* (rango de 70% a 89.99%).
    - *Acción para obtener 89.99%:* Si se utiliza un redondeo aritmético estándar a 2 decimales, $89.995\%$ se elevaría a $90.00\%$, generando una discordancia con la categoría asignada. Para obtener exactamente $89.99\%$ se debe aplicar un *truncamiento* (descarte de decimales sin redondear), por ejemplo:
      $ "porcentajeTruncado" = (floor("porcentaje" times 100)) / 100.0 $
    - *Importancia de probar valores límite:* En los límites de los tramos (valores frontera como $49.99\%$, $50.0\%$, $69.99\%$, $70.0\%$, $89.99\%$, $90.0\%$) es donde más habitualmente se cometen errores de codificación (confusión entre operadores $<$ y $<=$, efectos de redondeo o conversiones de tipos). Probarlos garantiza que cada caso sea clasificado exactamente en la categoría prevista.
  ]

  #respuesta("c")[
    - *Resultado devuelto:* Devuelve *`0`*.
    - *¿Constituye un error?* *Sí, es un error grave de división entera.*
    - *Justificación:* En Java, al operar dos enteros (`int / int`), se ejecuta una división entera truncando los decimales. Al evaluar `(4 / 5)`, el resultado es `0` (en lugar de `0.8`), y al multiplicarlo luego por `100`, el resultado final es `0`. Para solucionarlo se debe forzar la aritmética de punto flotante convirtiendo al menos un operando a `double`:
      ```java
      double porcentaje = ((double) correctas / total) * 100.0;
      ```
  ]

  *Código Fuente (`Punto3.java`):*
  #raw(read("../Punto3.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
