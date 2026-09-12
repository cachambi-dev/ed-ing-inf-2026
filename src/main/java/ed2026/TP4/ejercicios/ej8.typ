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
    // Escribir aquí la respuesta 1)
  ]
  #respuesta("2")[
    // Escribir aquí la respuesta 2)
  ]
  #respuesta("3")[
    // Escribir aquí la respuesta 3)
  ]

  *Código Fuente Corregido:*
  ```java
  // Inserte aquí el código corregido
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
