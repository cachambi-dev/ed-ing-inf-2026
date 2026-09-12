#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 7
// -------------------------------------------------------------
== 🔹 Ejercicio 7: Depuración de Código — Descuento en Pila de Productos

Leer atentamente el enunciado presentado a continuación y, luego, analizar la solución propuesta.
*¡Cuidado! La solución contiene errores.*

=== Enunciado:
Desarrollar un método que reciba una pila de objetos `Producto` (atributos: `id` y `precio`) y un `String` que representa un `id` buscado. El método debe buscar el producto con el ID indicado por parámetro y aplicarle un descuento del $10\%$ a su precio. La pila debe conservar el mismo orden tras la operación. Si el producto no existe, no hace nada.

=== Solución propuesta por un alumno (¡Contiene errores!):

```java
class Producto {
    String id;
    double precio;
    // Constructor y getters
}

public class Gestion {
    public static void aplicarDescuento(Stack<Producto> pila, String idBuscado) {
        Stack<Producto> aux = new Stack<>();
        while (!pila.isEmpty()) {
            Producto p = pila.pop();
            if (p.id == idBuscado) {
                p.precio = p.precio * 0.90;
            }
            aux.push(p);
        }
        // Devolver a la pila original
        pila.push(aux.pop());
    }
}
```

#caja_preguntas[
  + *1)* Analizar el código e identificar los errores conceptuales y lógicos.
  + *2)* Argumentar por qué constituyen errores. _(Ayuda: Hay un error al comparar Strings, un error de falta de encapsulamiento, y un error en el bucle de restauración de la pila)._
  + *3)* ¿La solución responde completamente a lo solicitado por la consigna? ¿Qué le pasa a la pila original después de ejecutar este método?
  + *4)* Reescribir el método `aplicarDescuento` para que la solución sea correcta, garantizando que se revise toda la pila, se aplique el descuento y se restaure el orden original.
]

#resolucion(titulo: "Resolución del Ejercicio 7")[
  #respuesta("1")[
    // Escribir aquí la respuesta 1)
  ]
  #respuesta("2")[
    // Escribir aquí la respuesta 2)
  ]
  #respuesta("3")[
    // Escribir aquí la respuesta 3)
  ]
  #respuesta("4")[
    // Escribir aquí la respuesta 4)
  ]

  *Código Fuente Corregido:*
  ```java
  // Inserte aquí el código corregido
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
