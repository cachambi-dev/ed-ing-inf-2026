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
    - *Encapsulamiento y Protección de Invariantes:* La consistencia de las fechas es una regla de negocio del modelo. Al encapsular la validación en un método auxiliar privado (`private void validarFechas()`), la clase `Reserva` garantiza que toda instancia que se cree en cualquier parte del sistema nazca en un estado válido.
    - *Problema si se valida solo en el `main`:* Se produciría *fuga de lógica* y acoplamiento. Cualquier otro punto del sistema que instancie una `Reserva` sin pasar por el `main` podría crear objetos con fechas inconsistentes (ej. check-in posterior al check-out).
  ]

  #respuesta("b")[
    El inciso (e) exige que la fecha de check-in sea estrictamente anterior a la de check-out (`fechaCheckIn.isBefore(fechaCheckOut)`). Si el usuario ingresa la misma fecha para ambos eventos, la condición no se cumple.
    En consecuencia, el método auxiliar `validarFechas()` ajusta automáticamente los atributos del objeto asignando la fecha de hoy (`LocalDate.now()`) al check-in y el día de mañana (`LocalDate.now().plusDays(1)`) al check-out.
  ]

  #respuesta("c")[
    Dada la reserva del `2025-05-01` al `2025-05-05` y `fechaConsulta = 2025-05-03`:
    - *`estaActiva(2025-05-03)` retorna `true`:* Porque la fecha de consulta se encuentra dentro del rango de vigencia ($"2025-05-01" <= "2025-05-03" < "2025-05-05"$).
    - *`calcularDiasRestantesOTranscurridos(2025-05-03)` retorna `0`:* Al ser una reserva activa en esa fecha, el método devuelve exactamente `0` indicando que la estadía está en curso.
  ]

  #respuesta("d")[
    *No constituye ningún error; es la implementación óptima y correcta.*
    - *Inmutabilidad en `LocalDate`:* En la API de fechas de Java (`java.time`), los objetos `LocalDate` son *inmutables*. La invocación `.plusDays(cantidadDias)` no modifica `this.fechaCheckOut`, sino que genera y retorna una nueva instancia con el cálculo aplicado.
    - *Cumplimiento de la consigna:* El inciso (h) solicita *simular* una prórroga. Al no alterar el estado real del objeto y solo devolver la fecha tentativa resultante, cumple con exactitud con lo pedido.
  ]

  *Código Fuente (`Reserva.java`):*
  #raw(read("../Reserva.java"), lang: "java")

  *Código Fuente Principal (`Tp1_03.java`):*
  #raw(read("../Tp1_03.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
