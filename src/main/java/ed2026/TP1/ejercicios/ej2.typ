#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 2
// -------------------------------------------------------------
== 🔹 Ejercicio 2: Gestión de Cuenta Bancaria — Clase `CuentaBancaria`

Crear una clase llamada `CuentaBancaria` que modele una cuenta bancaria.

=== Consigna:
- *Atributos:* `titular` (String), `saldo` (double) y `tipoCuenta` (String, "ahorro" o "corriente").
- *Métodos a implementar:*
  + *a)* Constructor predeterminado: inicializa `titular` en `"Invitado"`, `saldo` en `0` y `tipoCuenta` en `"ahorro"`.
  + *b)* Constructor parametrizado: establece `titular`, `saldoInicial` y `tipoCuenta`.
  + *c)* `depositar(double monto)`: simula adición de fondos. Debe validar que el monto sea estrictamente positivo ($> 0$).
  + *d)* `retirar(double monto)`: simula extracción de dinero. Disminuye el saldo y retorna `true` si es exitosa. Si el monto excede el saldo disponible, no realiza la extracción, muestra un mensaje de error por consola y retorna `false`.
  + *e)* `toString()`: imprime en consola el titular, tipo de cuenta y saldo actual formateado.
- *Programa principal (`main`):*
  + *f)* Crear una instancia de `CuentaBancaria`.
  + *g)* Inicializar la cuenta con datos iniciales (ej. `"Juan Perez"`, `50000.0`, `"corriente"`).
  + *h)* Permitir al usuario, mediante un menú interactivo, realizar operaciones de depósito o retiro, mostrando los detalles actualizados tras cada operación hasta que elija salir.

#caja_indicaciones[
  - Validar ingresos de usuario y mantener clara separación entre la consola (E/S) y la lógica de la cuenta.
]

#caja_preguntas[
  + *a)* ¿Por qué es conveniente que el atributo `saldo` sea privado y no se pueda modificar directamente desde el método `main` (ej. `cuenta.saldo = 1000000;`)? ¿Qué garantiza el uso de los métodos `depositar` y `retirar`?
  + *b)* Un compañero propone que el método `retirar` sea de tipo `void` (sin retorno) y que solo muestre un mensaje de error si falla. Otro propone que retorne un `boolean` como pide el enunciado. ¿Qué ventajas y desventajas presenta cada alternativa? ¿Cuál solución permite que se tomen mejores decisiones?
  + *c)* ¿Qué sucede si el usuario intenta retirar exactamente el mismo monto que tiene de saldo disponible? ¿Y si intenta depositar un monto negativo?
  + *d)* El banco ahora pide agregar un límite de descubierto para las cuentas "corriente". Es decir, si es de tipo corriente, el saldo puede llegar a ser negativo hasta un límite (ej. $-50.000$). ¿Qué método de la clase debería modificar y qué nueva validación debería agregar?
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

  *Código Fuente (`CuentaBancaria.java`):*
  ```java
  // Inserte o importe aquí su solución en Java
  // Tip: podés usar `#raw(read("../p2/CuentaBancaria.java"), lang: "java")` para cargarlo automáticamente
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
