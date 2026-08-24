#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 8
// -------------------------------------------------------------
== 🔹 Ejercicio 8: Corrección y Refactorización — Arreglo de Objetos `Empleado`

Leer atentamente el enunciado presentado a continuación y luego, analizar la solución propuesta. ¡Cuidado! La solución contiene errores.

=== Enunciado:
Diseñar un programa que cargue 3 objetos de la clase `Empleado` (con `legajo`, `nombre` y `sueldo`) en un arreglo. Luego, buscar un empleado por su número de legajo e informar su nombre. Finalmente, encontrar e informar el nombre del empleado con el mayor sueldo.

=== Solución Propuesta (¡Contiene Errores!):

```java
class Empleado {
    int legajo;
    String nombre;
    double sueldo;

    public Empleado(int legajo, String nombre, double sueldo) {
        this.legajo = legajo;
        this.nombre = nombre;
        this.sueldo = sueldo;
    }
}

public class GestionRRHH {
    public static void main(String[] args) {
        Empleado[] empleados = new Empleado[3];
        empleados[0] = new Empleado(101, "Ana", 500.0);
        empleados[1] = new Empleado(102, "Beto", 700.0);
        empleados[2] = new Empleado(103, "Carla", 600.0);

        int legajoBuscado = 102;
        for (int i = 0; i < empleados.length; i++) {
            if (empleados[i].legajo == legajoBuscado) {
                System.out.println("Encontrado: " + empleados[i].nombre);
            } else {
                System.out.println("Legajo no encontrado.");
            }
        }

        Empleado mayorSueldo = empleados[0];
        for (int i = 1; i < empleados.length; i++) {
            if (empleados[i].sueldo > mayorSueldo.sueldo) {
                mayorSueldo.sueldo = empleados[i].sueldo;
            }
        }
        System.out.println("Mayor sueldo: " + mayorSueldo.nombre);
    }
}
```

#caja_preguntas[
  + *1)* Analice el código línea por línea e identifique los errores lógicos y conceptuales.
  + *2)* Argumente por qué constituyen errores. _(Ayuda: Hay un error en el mensaje de "no encontrado", un error al actualizar el empleado de mayor sueldo y un posible error si el arreglo estuviera vacío)._
  + *3)* ¿La solución responde completamente a lo solicitado por la consigna?
  + *4)* Reescriba los bloques de código necesarios para que la solución sea correcta y robusta.
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
  #respuesta("4")[
    // Escribir aquí la respuesta 4)
  ]

  *Código Fuente Corregido (`GestionRRHH.java`):*
  ```java
  // Inserte aquí su solución corregida y refactorizada
  ```
]
