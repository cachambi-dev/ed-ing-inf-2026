#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 3
// -------------------------------------------------------------
== 🔹 Ejercicio 3: Sistema de Gestión de Reservas de Hotel — Clase `Reserva`

Desarrollar un programa que simule la gestión de una reserva de hotel con fechas de check-in y check-out.

=== Consigna:
- *Atributos:* `codigoReserva` (String único), `nombreHuesped` (String), `fechaCheckIn` (`LocalDate`), `fechaCheckOut` (`LocalDate`).
- *Métodos a implementar:*
  + *a)* Definir la clase con los atributos anteriores.
  + *b)* Constructor predeterminado: `codigoReserva = "000"`, `nombreHuesped = "Por confirmar"`, `fechaCheckIn = LocalDate.now()`, `fechaCheckOut = LocalDate.now().plusDays(1)`.
  + *c)* Constructor parametrizado que establece todos los atributos mediante argumentos.
  + *d)* `toString()`: retorna una representación textual completa y legible del objeto `Reserva`.
  + *e)* Método auxiliar de validación de fechas: comprueba si la fecha de check-in es estrictamente anterior a la de check-out. Si no son válidas, ajusta automáticamente asignando la fecha actual al check-in y el día siguiente al check-out.
  + *f)* `estaActiva(LocalDate fechaConsulta)`: determina si la reserva está vigente en una fecha dada. Retorna `true` si `fechaConsulta` $>= "fechaCheckIn"$ y $< "fechaCheckOut"$.
  + *g)* `calcularDiasRestantesOTranscurridos(LocalDate fechaConsulta)`:
    - Si `fechaConsulta` es anterior al check-in: retorna un valor positivo (días faltantes para el check-in).
    - Si `fechaConsulta` está dentro de la estadía: retorna `0`.
    - Si `fechaConsulta` es posterior al check-out: retorna un valor negativo (días transcurridos desde el check-out hasta la fecha de consulta).
  + *h)* `simularProrroga(int cantidadDias)`: calcula y retorna la nueva fecha de check-out si la estadía se extendiera por una cantidad específica de días a partir de la fecha de check-out actual.
- *Programa principal (`main`):*
  + *i)* Solicitar datos para crear al menos dos objetos `Reserva` diferentes (una reserva futura y una reserva ya finalizada).
  + *j)* Solicitar al usuario una "fecha de consulta" (día, mes, año) validada.
  + *k)* Mostrar detalles con `toString()`.
  + *l)* Consultar vigencia con `estaActiva()`.
  + *m)* Consultar días faltantes o transcurridos con `calcularDiasRestantesOTranscurridos()`.
  + *n)* Solicitar una cantidad de días para simular una prórroga y mostrar la nueva fecha de check-out calculada.

#caja_preguntas[
  + *a)* ¿Por qué se pide que la validación de fechas sea un "método auxiliar" dentro de la clase `Reserva`? ¿Qué ocurriría si esa validación se hiciera en el método `main` antes de llamar al constructor?
  + *b)* ¿Qué sucede si el usuario ingresa la misma fecha para check-in y check-out? Según la regla del inciso (e), ¿qué debería ocurrir con el objeto?
  + *c)* Si una reserva tiene `fechaCheckIn = 2025-05-01` y `fechaCheckOut = 2025-05-05`, y el usuario ingresa `fechaConsulta = 2025-05-03`. Sin ejecutar el programa: ¿El método `estaActiva` retorna `true` o `false`? ¿Qué valor exacto retorna `calcularDiasRestantesOTranscurridos`?
  + *d)* Un compañero escribe el método `simularProrroga` de la siguiente manera:
    ```java
    return this.fechaCheckOut.plusDays(cantidadDias);
    ```
    ¿Esta línea constituye un error de lógica respecto al principio de encapsulamiento o inmutabilidad? ¿Modifica el estado real del objeto o solo devuelve un cálculo? Argumente si esto cumple con lo solicitado en el inciso (h).
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
  #respuesta("d")[
    // Escribir aquí la respuesta d)
  ]

  *Código Fuente (`Reserva.java`):*
  ```java
  // Inserte o importe aquí su solución en Java
  // Tip: podés usar `#raw(read("../p3/Reserva.java"), lang: "java")` para cargarlo automáticamente
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
