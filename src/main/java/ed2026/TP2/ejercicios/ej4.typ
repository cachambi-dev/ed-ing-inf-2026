#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 4
// -------------------------------------------------------------
== 🔹 Ejercicio 4: Gestión de Liga de Equipos — Clase `Equipo`

Crear la clase `Equipo` con los atributos: `idEquipo`, `nombre`, `puntajeAcumulado` y `partidosJugados`. El programa debe solicitar al usuario la cantidad de equipos a gestionar. Luego, permitir el ingreso de diferentes equipos hasta llenar un arreglo.

=== Consigna:
- *a)* Actualizar el `puntajeAcumulado` de un equipo dado su `idEquipo` (sumando puntos).
- *b)* Calcular y mostrar el total de partidos jugados entre todos los equipos del arreglo.
- *c)* Calcular y mostrar el promedio general de puntajes de la liga.
- *d)* Identificar y mostrar los datos del equipo con mayor `puntajeAcumulado` (el líder).
- *e)* Listar todos los equipos que tienen un puntaje inferior al promedio general calculado en el punto c, mostrando un mensaje que indique que están en "zona de descenso".

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* ¿Qué validaciones se deben contemplar al buscar un `idEquipo` en el punto a)? ¿Qué ocurre si el equipo no existe en el arreglo?
  + *b)* Compruebe el funcionamiento del programa cuando todos los equipos tengan exactamente el mismo `puntajeAcumulado`. ¿Qué debería mostrar el punto d) y el punto e) en este escenario?
  + *c)* El cálculo del promedio general (punto c) es necesario para resolver el punto e). ¿Por qué es conveniente crear un método `calcularPromedio()` en lugar de repetir el código de cálculo dentro del desarrollo del punto (e)?
  + *d)* Si se quisiera agregar el método `obtenerEquipoConMenosPuntos()`, ¿se necesitaría crear un nuevo arreglo o solo recorrer el existente comparando valores?
]

#resolucion(titulo: "Resolución del Ejercicio 4")[
  #respuesta("a")[
    En el punto a) se debe validar que el `idEquipo` exista en el arreglo. Si no existe, el programa debe informar que no se encontró el equipo y no debe provocar una excepción. La validación se hace recorriendo el arreglo hasta encontrar una coincidencia.
  ]
  #respuesta("b")[
    Si todos tienen el mismo puntaje, el punto d) debe informar que el líder es el primero encontrado o el que aparece en la posición inicial, según la lógica del algoritmo. El punto e) debe mostrar que todos están por encima o por debajo del promedio según el caso, y en igualdad se puede decidir una política explícita.
  ]
  #respuesta("c")[
    Crear un método `calcularPromedio()` centraliza el cálculo y evita repetir lógica en varios puntos. Esto hace que el programa sea más claro, más fácil de mantener y menos propenso a errores de implementación.
  ]
  #respuesta("d")[
    No hace falta crear un arreglo nuevo: basta con recorrer el arreglo existente comparando valores y guardar la referencia del equipo con menor puntaje. Esto es más eficiente porque se trabaja sobre la misma estructura y no se duplican datos.
  ]

  *Código Fuente:*
  ```java
  public static double calcularPromedio(Equipo[] equipos) {
      int total = 0;
      for (Equipo equipo : equipos) {
          total += equipo.getPuntajeAcumulado();
      }
      return equipos.length == 0 ? 0 : total / (double) equipos.length;
  }
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
