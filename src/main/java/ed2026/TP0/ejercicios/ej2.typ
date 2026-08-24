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
    *No alcanzaría con una variable simple.*
    Una variable simple (escalar) solo tiene capacidad para almacenar un único valor a la vez en memoria. Cada vez que se genera una nueva medición, el valor anterior se sobreescribe y se pierde. Para mantener un historial completo accesible al finalizar el programa se requiere una estructura de datos como un *arreglo* (`int[]` o `double[]`) o una colección dinámica (`ArrayList<Integer>`).
  ]

  #respuesta("b")[
    Si `cantidadMediciones = 0`, el bucle no se ejecuta y al intentar calcular el promedio ($"sumaTemperatura" / "cantidadMediciones"$) se produce una división por cero ($0 / 0$).
    - Al ser una división entre enteros (`int`), Java arroja una excepción en tiempo de ejecución: `java.lang.ArithmeticException: / by zero`, provocando que el programa falle.
    - *Reacción esperada del programa:* Se debe validar la entrada del usuario asegurando que `cantidadMediciones > 0`. Si el usuario ingresa $0$ o un valor negativo, debe emitir un mensaje de advertencia y solicitar un valor válido sin proceder al cálculo.
  ]

  #respuesta("c")[
    Dados los valores $-5, 0, 15, 35$ ($N = 4$):
    - *Suma total:* $(-5) + 0 + 15 + 35 = 45$
    - *Promedio:*
      $ "Promedio" = 45 / 4 = 11.25 degree "C" $
    - *Mediciones Heladas ($< 0 degree "C"$):* $1$ medición (`-5`). _(El $0 degree "C"$ no se considera helada porque la condición es estrictamente menor a $0$)._
    - *Mediciones Cálidas ($>= 30 degree "C"$):* $1$ medición (`35`).
  ]

  #respuesta("d")[
    - *Variables a incorporar:* `int tempMaxima` e `int tempMinima`.
    - *Inicialización:* Pueden inicializarse con la primera medición generada ($i = 0$) o asignando `tempMaxima = Integer.MIN_VALUE` y `tempMinima = Integer.MAX_VALUE`.
    - *Impacto en la lógica del ciclo:* En cada iteración, tras generar la temperatura aleatoria (`numeroRandom`), se evalúan dos condiciones:
      - Si `numeroRandom > tempMaxima`, se actualiza `tempMaxima = numeroRandom`.
      - Si `numeroRandom < tempMinima`, se actualiza `tempMinima = numeroRandom`.
  ]

  *Código Fuente (`Punto2.java`):*
  #raw(read("../Punto2.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
