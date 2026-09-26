#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 5
// -------------------------------------------------------------
== 🔹 Ejercicio 5: Gestión de Pedidos y Deudas — Clase Pedido

Definir la clase `Pedido` con los atributos: `idPedido`, `monto` y `estaPago` (booleano). Cargar una pila con varios objetos de tipo `Pedido`. Además, implementar los siguientes métodos:

=== Consigna:
- *a)* `cargarPedido(Stack<Pedido> pila, Pedido nuevo)`: agrega un nuevo pedido a la pila.
- *b)* `marcarComoPagado(Stack<Pedido> pila, String idPedido)`: cambia el valor de `estaPago` a `true` para el pedido cuyo ID coincide. Si no existe, no hace nada. El orden de la pila no debe alterarse.
- *c)* `obtenerDeudaTotal(Stack<Pedido> pila)`: devuelve la suma de los montos de todos los pedidos que aún no han sido pagados.
- *d)* `vaciarPagados(Stack<Pedido> pila)`: elimina de la pila todos los objetos que ya fueron pagados, manteniendo el orden de los pedidos pendientes de pago.

*En el programa principal (`main`) se debe:*
- *e)* Crear una pila de objetos `Pedido` y cargarla con al menos 5 pedidos (algunos pagados y otros no).
- *f)* Mostrar el estado inicial de la pila y la deuda total calculada.
- *g)* Solicitar al usuario un `idPedido`, ejecutar `marcarComoPagado` y mostrar nuevamente la deuda total para verificar que disminuyó.
- *h)* Ejecutar `vaciarPagados` y mostrar por consola la pila resultante para verificar que solo quedan los pedidos pendientes de pago y que mantienen su orden.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* En el método `marcarComoPagado`, ¿por qué no se puede simplemente buscar el ID en la pila y modificarlo en el lugar, sin tocar el resto de los elementos, como se haría en un arreglo?
  + *b)* ¿Qué ocurre si el usuario intenta marcar como pagado un `idPedido` que ya estaba pagado? y ¿qué ocurre en el caso que el pedido no exista en la pila?
  + *c)* Comprobar el funcionamiento de `vaciarPagados` cuando la pila contiene pedidos pagados intercalados con no pagados ¿se mantiene el orden relativo de los pedidos no pagados?
  + *d)* Un compañero propone la siguiente implementación para `obtenerDeudaTotal`:
    ```java
    double deuda = 0;
    while (!pila.isEmpty()) {
        Pedido p = pila.pop();
        if (!p.isEstaPago()) {
            deuda += p.getMonto();
        }
    }
    return deuda;
    ```
    ¿La solución compila? Sí. ¿Cumple con la consigna? Explicar la consecuencia que esta solución trae para la pila original.
]

#resolucion(titulo: "Resolución del Ejercicio 5")[
  #respuesta("a")[
    En un arreglo se puede acceder por índice directamente, pero la pila no tiene acceso aleatorio. Para modificar un elemento interno sin cambiar el orden, es necesario vaciar la pila, buscar el pedido y luego restaurarla. Esa es la diferencia fundamental entre un arreglo y una estructura LIFO.
  ]
  #respuesta("b")[
    Si el pedido ya estaba pagado, no se debe hacer ninguna modificación. Si el pedido no existe, la operación debe ser un no-op: no se lanza error y la pila queda igual.
  ]
  #respuesta("c")[
    Sí, se mantiene el orden relativo de los pedidos pendientes si se trabaja con una pila auxiliar y al final se devuelve todo a la pila original. El programa debe conservar el orden de los elementos que no se eliminan.
  ]
  #respuesta("d")[
    Esa solución compila, pero no cumple la consigna porque destruye la pila original al hacer `pop()` de todos sus elementos. La estructura queda vacía y eso rompe el requisito de que la pila debe conservarse intacta.
  ]

  *Código Fuente:*
  ```java
  public static double obtenerDeudaTotal(Stack<Pedido> pila) {
      Stack<Pedido> aux = new Stack<>();
      double deuda = 0;

      while (!pila.isEmpty()) {
          Pedido p = pila.pop();
          if (!p.isEstaPago()) {
              deuda += p.getMonto();
          }
          aux.push(p);
      }

      while (!aux.isEmpty()) {
          pila.push(aux.pop());
      }

      return deuda;
  }
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
