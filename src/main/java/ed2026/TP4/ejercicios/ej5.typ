#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 5
// -------------------------------------------------------------
== 🔹 Ejercicio 5: Cola de Envíos de Logística — Clase Envio

Se desea procesar una cola de envíos de una empresa de logística. Cada registro tiene: `codigoSeguimiento`, `peso` (en kg), `destino` (`"Local"`, `"Nacional"`, `"Internacional"`) y `estado` (`"En Camino"`, `"Entregado"`, `"Devuelto"`).

El programa debe permitir:

=== Consigna:
- *a)* Consultar el peso total de los envíos para un destino específico elegido por el usuario.
- *b)* Identificar cuál fue el envío con mayor peso de toda la cola.
- *c)* Contar cuántos envíos tienen el estado `"Devuelto"`.
- Al finalizar el proceso, la cola original debe permanecer sin alteraciones.

*En el programa principal (`main`) se debe:*
- *a)* Cargar una cola con al menos 5 objetos `Envio`.
- *b)* Mostrar el estado inicial de la cola, ejecutar las consultas solicitadas y volver a mostrar la cola para demostrar que no fue modificada.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* Si se procesan los envíos por orden de llegada (FIFO), ¿por qué la cola es la estructura ideal para modelar este problema en lugar de una Pila?
  + *b)* Si la cola tiene 3 envíos a `"Nacional"` con pesos `[10.5, 20.0, 15.2]` y 2 a `"Local"`. Sin ejecutar: ¿Qué valor retorna el inciso (a) si se consulta `"Nacional"`? ¿Qué objeto devuelve el inciso (b)?
  + *c)* El enunciado exige que la cola original permanezca sin alteraciones. Si un alumno hace `cola.poll()` en un bucle `while(!cola.isEmpty())`, ¿qué le ocurre a la cola? ¿Cómo se soluciona esto?
  + *d)* Un compañero escribe el siguiente código para hallar el mayor peso:
    ```java
    Envio mayor = cola.peek();
    while (!cola.isEmpty()) {
        Envio actual = cola.poll();
        if (actual.getPeso() > mayor.getPeso()) {
            mayor = actual;
        }
    }
    ```
    ¿Qué hace y qué le falta al código?
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
