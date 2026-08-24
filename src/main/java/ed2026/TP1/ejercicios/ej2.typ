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
    - *Encapsulamiento y Protección de Invariantes:* Declarar `saldo` como `private` impide que agentes externos modifiquen el estado financiero sin control (por ejemplo, asignando saldos negativos o modificando fondos sin respaldo).
    - *Garantía de los métodos `depositar` y `retirar`:* Aseguran que toda modificación del saldo respete las reglas de negocio (montos mayores a cero, suficiencia de fondos y consistencia interna).
  ]

  #respuesta("b")[
    - *Alternativa `void`:* Acopla la clase del dominio con la consola. El código que invoca a `retirar()` desconoce si la operación tuvo éxito o no, impidiendo disparar acciones posteriores (como imprimir recibos, emitir alertas o registrar transacciones).
    - *Alternativa `boolean` (Recomendada):* Retorna `true` o `false` informando el resultado a la capa superior. Permite tomar mejores decisiones de control de flujo (`if (cuenta.retirar(monto)) { ... }`) y mantiene la clase desacoplada y reutilizable en entornos gráficos o web.
  ]

  #respuesta("c")[
    - *Retiro del saldo exacto ($"monto" = "saldo"$):* La operación es *exitosa*. Al cumplirse $"monto" <= "saldo"$, se realiza la extracción, el nuevo saldo queda en `$0.0` y el método retorna `true`.
    - *Depósito de monto negativo ($"monto" < 0$):* La operación es *rechazada*. El método comprueba que el monto no cumple con la precondición ($"monto" > 0$), emite el mensaje de advertencia y retorna `false` sin alterar el saldo.
  ]

  #respuesta("d")[
    - *Método a modificar:* El método *`retirar(double monto)`*.
    - *Nueva validación:* Evaluar el tipo de cuenta para permitir saldo negativo hasta el límite fijado:
      ```java
      double saldoMinimo = this.tipoCuenta.equals("corriente") ? -50000.0 : 0.0;
      if (this.saldo - monto < saldoMinimo) {
          System.out.println("Error: Fondos insuficientes considerando el descubierto.");
          return false;
      }
      this.saldo -= monto;
      return true;
      ```
  ]

  *Código Fuente (`CuentaBancaria.java`):*
  #raw(read("../p2/CuentaBancaria.java"), lang: "java")

  *Código Fuente Principal (`Tp1_02.java`):*
  #raw(read("../p2/Tp1_02.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
