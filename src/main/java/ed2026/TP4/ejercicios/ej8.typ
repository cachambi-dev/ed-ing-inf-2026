#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 8
// -------------------------------------------------------------
== 🔹 Ejercicio 8: Depuración de Código — Eliminación de Menores de Edad en Cola

Leer atentamente el enunciado presentado a continuación y luego, analizar la solución propuesta.
*¡Cuidado! La solución contiene errores.*

=== Enunciado:
Desarrollar un método estático que reciba una cola de objetos `Cliente` (con atributo `edad`) y elimine de la cola a todos los clientes que sean menores de edad (`edad < 18`). La cola debe conservar el orden de los clientes restantes.

=== Solución propuesta por un alumno (¡Contiene errores!):

```java
class Cliente {
    int edad;
    // Constructor, getters y setters
}

public class Principal {
    public static void eliminarMenores(Queue<Cliente> cola) {
        for (int i = 0; i < cola.size(); i++) {
            Cliente c = cola.poll();
            if (c.edad >= 18) {
                cola.add(c);
            }
        }
    }
}
```

#caja_preguntas[
  + *1)* Analice el código e identifique el error lógico en el bucle.
  + *2)* Argumente por qué constituye un error. _(Pista: ¿Qué le ocurre al tamaño de la cola en cada iteración y cómo afecta esto a la condición del bucle for?)_
  + *3)* Reescriba el método `eliminarMenores` para que la solución sea correcta, garantizando que se evalúen todos los elementos exactamente una vez.
]

#resolucion(titulo: "Resolución del Ejercicio 8")[
  #respuesta("1")[
    El error lógico está en el bucle `for (int i = 0; i < cola.size(); i++)`: como la cola cambia de tamaño durante la iteración, la condición `cola.size()` se evalúa en cada vuelta y puede llegar a disminuir, provocando que el bucle no recorra todos los elementos como se espera o que se omitan elementos.
  ]
  #respuesta("2")[
    La cola original se destruye si se hace `poll()` dentro del `for`, porque cada iteración reduce el tamaño. Si además se reencola los elementos válidos, la condición del `for` puede dejar de reflejar el número real de elementos a procesar y producir resultados incorrectos o incompletos.
  ]
  #respuesta("3")[
    La solución correcta es usar una cola auxiliar para guardar los elementos y mantener el orden, y recorrer la cola original mientras aún no esté vacía. Así se evalúa cada elemento exactamente una vez y luego se restauran los elementos que quedan.

    ```java
    public static void eliminarMenores(Queue<Cliente> cola) {
        Queue<Cliente> aux = new Queue<>(cola.size());

        while (!cola.isEmpty()) {
            Cliente cliente = cola.poll();
            if (cliente.getEdad() >= 18) {
                aux.offer(cliente);
            }
        }

        while (!aux.isEmpty()) {
            cola.offer(aux.poll());
        }
    }
    ```
  ]
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
