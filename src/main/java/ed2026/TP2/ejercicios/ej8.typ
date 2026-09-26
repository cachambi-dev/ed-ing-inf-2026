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
    Los errores principales son: el mensaje “Legajo no encontrado” se imprime en cada iteración aunque el legajo sí exista; además, el algoritmo para buscar el mayor sueldo actualiza el sueldo del empleado en vez de actualizar al empleado completo. Por último, no se controla el caso de arreglo vacío.
  ]
  #respuesta("2")[
    El primer error es lógico porque el mensaje debe mostrarse solo si no se encuentra el legajo. El segundo error es conceptual porque se debe actualizar el objeto `Empleado` que tenga el mayor sueldo, no solo su atributo `sueldo`. Si el arreglo está vacío, se debe manejar la situación sin lanzar excepción.
  ]
  #respuesta("3")[
    La solución no responde completamente a la consigna porque no informa correctamente el empleado buscado y el mayor sueldo se calcula sobre el atributo sueldo en lugar de sobre el empleado completo. Además, no valida arreglos vacíos.
  ]
  #respuesta("4")[
    La solución correcta debe buscar el legajo con una bandera, y en el caso del mayor sueldo mantener la referencia del empleado candidato. Un ejemplo es:

    ```java
    public class GestionRRHH {
        public static void main(String[] args) {
            Empleado[] empleados = {
                new Empleado(101, "Ana", 500.0),
                new Empleado(102, "Beto", 700.0),
                new Empleado(103, "Carla", 600.0)
            };

            int legajoBuscado = 102;
            boolean encontrado = false;
            for (Empleado empleado : empleados) {
                if (empleado != null && empleado.getLegajo() == legajoBuscado) {
                    System.out.println("Encontrado: " + empleado.getNombre());
                    encontrado = true;
                    break;
                }
            }
            if (!encontrado) {
                System.out.println("Legajo no encontrado.");
            }

            Empleado mayorSueldo = null;
            for (Empleado empleado : empleados) {
                if (empleado != null && (mayorSueldo == null || empleado.getSueldo() > mayorSueldo.getSueldo())) {
                    mayorSueldo = empleado;
                }
            }
            if (mayorSueldo != null) {
                System.out.println("Mayor sueldo: " + mayorSueldo.getNombre());
            }
        }
    }
    ```
  ]
]
