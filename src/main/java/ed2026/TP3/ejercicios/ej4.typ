#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 4
// -------------------------------------------------------------
== 🔹 Ejercicio 4: Gestión de Tareas de un Equipo — Clase Tarea

Implementar la clase `Tarea` que posea los siguientes atributos: `idTarea` (`String`), `prioridad` (`"Alta"`, `"Media"`, `"Baja"`) y `descripcion`. Utilizar una pila para almacenar las tareas pendientes de un equipo de trabajo. El programa debe implementar los siguientes métodos:

=== Consigna:
- *a)* `agregarTarea`: recibe como parámetro la pila y un objeto `Tarea`, debe agregarlo a la pila.
- *b)* `eliminarTareasPorPrioridad`: recibe como parámetro la pila y una prioridad, elimina todos los eventos con esa prioridad. El resto de los elementos de la pila no debe alterar su orden.
- *c)* `buscarTareaPorId`: recibe como parámetro la pila y un `idTarea`, devuelve el objeto `Tarea` que coincida (sin modificar la pila original).
- *d)* `contarTareasAlta`: recibe como parámetro la pila y devuelve cuántas tareas tienen prioridad `"Alta"`.

*En el programa principal (`main`) se debe:*
- *e)* Crear una pila de objetos `Tarea` y cargarla con al menos 5 tareas de diferentes prioridades.
- *f)* Mostrar el estado inicial de la pila.
- *g)* Ejecutar cada uno de los métodos implementados (buscar una tarea por su ID, contar las de prioridad Alta, eliminar las de prioridad "Baja", etc.) mostrando por consola los resultados obtenidos y el estado de la pila después de las modificaciones, para verificar que el orden de los elementos no se alteró.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* En el punto (c), al buscar una tarea por `idTarea`, se debe retornar el objeto sin modificar la pila. Si se usa una pila auxiliar para vaciar la original, buscar el elemento y devolverlo, ¿se garantiza que el orden de la pila original quede exactamente igual que antes?
  + *b)* Un compañero propone pasar todos los elementos de la pila a un `ArrayList`, hacer la búsqueda con `.get()` y luego volver a pasarlos a la pila. ¿Qué ventajas y desventajas tiene esta solución frente al uso estricto de pilas auxiliares?
  + *c)* ¿Qué sucede si en el punto (b) se solicita eliminar una prioridad que no existe en la pila? ¿El programa da un error o simplemente la pila queda igual? ¿Qué sucede al eliminar tareas de una determinada prioridad en el caso en el que la pila solo contiene tareas de esa prioridad?
  + *d)* Un compañero escribe la siguiente línea dentro del método `eliminarTareasPorPrioridad`:
    ```java
    if (pila.pop().getPrioridad().equals(prioridad)) {
        pila.pop();
    }
    ```
    ¿Constituye un error? Explicar.
]

#resolucion(titulo: "Resolución del Ejercicio 4")[
  #respuesta("a")[
    Sí, siempre que se use una pila auxiliar para vaciar la original, buscar la tarea y luego devolver todos los elementos a la pila original en el mismo orden. La clave es no perder elementos ni alterar el orden relativo. Si se hace bien, la pila original queda exactamente igual a como estaba antes de la búsqueda.
  ]
  #respuesta("b")[
    Un `ArrayList` facilita la búsqueda por índice y la manipulación más directa, pero rompe la lógica de una pila y obliga a reconstruir la estructura manualmente. La solución con pilas auxiliares es más coherente con la consigna porque preserva la naturaleza LIFO y no altera el orden de la pila original.
  ]
  #respuesta("c")[
    Si la prioridad no existe, el programa no debe lanzar error y la pila debe quedar igual. Si la pila contiene únicamente tareas de esa prioridad, entonces al eliminarlas la pila queda vacía, lo cual es un resultado válido porque ya no quedan tareas con esa prioridad.
  ]
  #respuesta("d")[
    Sí, es un error. La línea hace dos `pop()` seguidos: el primero elimina la cima y el segundo elimina el siguiente elemento, que no se quería sacar. Además, no se restaura la estructura original ni se conserva el orden de la pila. Por eso, esa implementación es incorrecta.
  ]

  *Código Fuente:*
  ```java
  public static void eliminarTareasPorPrioridad(Stack<Tarea> pila, String prioridad) {
      Stack<Tarea> aux = new Stack<>();

      while (!pila.isEmpty()) {
          Tarea t = pila.pop();
          if (!t.getPrioridad().equals(prioridad)) {
              aux.push(t);
          }
      }

      while (!aux.isEmpty()) {
          pila.push(aux.pop());
      }
  }
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
