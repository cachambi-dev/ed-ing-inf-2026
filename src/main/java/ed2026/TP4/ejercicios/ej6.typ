#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 6
// -------------------------------------------------------------
== 🔹 Ejercicio 6: Turnos en Farmacia — Clase Turno

Se debe implementar un sistema para registrar turnos en una farmacia. Cada turno se representa con un registro que contiene: `dniCliente`, `obraSocial` (ej. `"PAMI"`, `"ISJ"`, `"Particular"`) y `fueAtendido` (booleano).
El programa debe procesar la cola de turnos, y devolver una nueva cola que contenga aquellos turnos que aún no fueron atendidos. Luego, debe mostrar cuántos turnos corresponden a una obra social particular ingresada por el usuario. Finalmente, verificar, ingresando el DNI de un cliente, si esa persona ya fue atendida (devuelve `true` si fue atendida, `false` si sigue en espera o no existe).

=== Consigna:
*En el programa principal (`main`) se debe:*
- *a)* Cargar una cola con varios turnos (algunos atendidos y otros no).
- *b)* Generar la cola de pendientes y mostrarla.
- *c)* Solicitar una obra social, mostrar la cantidad de turnos para la misma.
- *d)* Solicitar un DNI y mostrar si la persona fue atendida o no.
- *e)* Cuando se recorran los elementos de la cola esta debe mantenerse sin modificaciones.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* El último requerimiento pide buscar por DNI si una persona fue atendida. ¿Esta búsqueda requiere recorrer toda la cola o se puede detener antes?
  + *b)* ¿Qué sucede si se busca un DNI que no existe en la cola? ¿Qué valor (booleano) retorna el programa y cómo se evita que se caiga una excepción?
  + *c)* Para generar la nueva cola de "no atendidos", un compañero hace un bucle que desencola, verifica, y si no fue atendido lo mete en una cola nueva. ¿Qué error cometió con la cola original y cómo se soluciona?
  + *d)* Si ahora se quiere cambiar el estado de `fueAtendido` a `true` para el primer turno de la cola que tenga obra social `"PAMI"`, ¿se puede hacer sin desencolar a los que están delante?
]

#resolucion(titulo: "Resolución del Ejercicio 6")[
  #respuesta("a")[
    La búsqueda por DNI puede detenerse cuando se encuentra el turno buscado. En una cola FIFO, no hace falta recorrer toda la estructura si ya se encontró el elemento buscado. Si se quiere evitar que se recorra demasiado, se guarda una bandera o se rompe el bucle cuando se cumple la condición.
  ]
  #respuesta("b")[
    Si el DNI no existe, el programa debe devolver `false` o un valor equivalente y no lanzar una excepción. La validación se hace antes de acceder al atributo, verificando si se encontró el turno o si la cola terminó de recorrerse sin coincidencias.
  ]
  #respuesta("c")[
    Si se desencola la cola original para crear la nueva cola de pendientes, se destruye la estructura original. La solución correcta es usar una cola auxiliar para guardar los elementos mientras se hace la clasificación y, al final, devolverlos a la cola original.
  ]
  #respuesta("d")[
    No, si el turno que se quiere cambiar está detrás de otros elementos, no se puede modificar “el primero que tenga obra social PAMI” sin recorrer la cola. Para cambiar un elemento en una cola, en la práctica hay que desencolarlo y reencolarlo manteniendo el orden o trabajar con una cola auxiliar para preservar la secuencia.
  ]

  *Código Fuente:*
  ```java
  public static boolean fueAtendidoPorDni(Queue<Turno> cola, String dni) {
      Queue<Turno> aux = new Queue<>(cola.size());
      boolean encontrado = false;

      while (!cola.isEmpty()) {
          Turno turno = cola.poll();
          if (turno.getDniCliente().equals(dni)) {
              encontrado = turno.isFueAtendido();
          }
          aux.offer(turno);
      }

      while (!aux.isEmpty()) {
          cola.offer(aux.poll());
      }

      return encontrado;
  }
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
