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
    Los errores principales son: se compara `String` con `==`, se accede directamente a atributos internos y se restaura la pila incompleta. Además, el método no recorre la pila completa ni garantiza que el orden original se mantenga.
  ]
  #respuesta("2")[
    Es un error comparar `String` con `==` porque compara referencias, no el contenido. También hay un problema de encapsulamiento porque se accede a `p.id` y `p.precio` directamente, y el bucle final solo hace un `push(aux.pop())`, que devuelve un único elemento y no restaura la pila completa.
  ]
  #respuesta("3")[
    No, la solución no responde completamente a la consigna. Al hacer `pop()` sobre la pila y devolver solo un elemento al final, la estructura original queda alterada y no se conserva el orden. Además, el método no revisa todos los elementos de la pila ni restaura la misma cantidad de elementos.
  ]
  #respuesta("4")[
    La solución correcta debe recorrer toda la pila, comparar IDs con `.equals()`, aplicar el descuento y restaurar la pila completa:

    ```java
    class Producto {
        private String id;
        private double precio;

        public Producto(String id, double precio) {
            this.id = id;
            this.precio = precio;
        }

        public String getId() {
            return id;
        }

        public double getPrecio() {
            return precio;
        }

        public void setPrecio(double precio) {
            this.precio = precio;
        }
    }

    public class Gestion {
        public static void aplicarDescuento(Stack<Producto> pila, String idBuscado) {
            Stack<Producto> aux = new Stack<>();

            while (!pila.isEmpty()) {
                Producto p = pila.pop();

                if (p.getId().equals(idBuscado)) {
                    p.setPrecio(p.getPrecio() * 0.90);
                }

                aux.push(p);
            }

            while (!aux.isEmpty()) {
                pila.push(aux.pop());
            }
        }
    }
    ```
  ]
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
