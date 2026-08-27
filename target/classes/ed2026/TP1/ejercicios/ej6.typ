#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 6
// -------------------------------------------------------------
== 🔹 Ejercicio 6: Corrección y Refactorización — Clase `TanqueAgua`

Leer atentamente la propuesta (¡contiene errores!) y realizar el análisis y reescritura.

=== Enunciado:
Diseñar una clase `TanqueAgua` que represente un contenedor de líquido. Atributos: `capacidadMaxima` (en litros) y `cantidadActual` (en litros).
- Constructor predeterminado: `capacidadMaxima = 100`, `cantidadActual = 0`.
- Constructor parametrizado: recibe ambos valores. Si `cantidadActual` excede `capacidadMaxima`, ajusta `cantidadActual` para que sea igual a la capacidad máxima.
- `agregarAgua(double litros)`: suma litros a `cantidadActual`. Si excede la capacidad máxima, el tanque debe quedar lleno y mostrar un mensaje de advertencia.
- `retirarAgua(double litros)`: resta litros. Si se intenta retirar más agua de la disponible, el tanque debe quedar en $0$.
- `mostrarEstado()`: imprime la cantidad actual y la capacidad máxima.

=== Solución Propuesta (¡Contiene Errores!):

```java
class TanqueAgua {
    public double capacidadMaxima;
    public double cantidadActual;

    public TanqueAgua() {
        this.capacidadMaxima = 100;
        this.cantidadActual = 0;
    }

    public TanqueAgua(double capacidadMaxima, double cantidadActual) {
        this.capacidadMaxima = capacidadMaxima;
        this.cantidadActual = cantidadActual; // ❌ No valida si cantidadActual > capacidadMaxima
    }

    public void agregarAgua(double litros) {
        this.cantidadActual = this.cantidadActual + litros;
        if (this.cantidadActual > this.capacidadMaxima) {
            System.out.println("Advertencia: Se excedio la capacidad."); // ❌ No ajusta cantidadActual a capacidadMaxima
        }
    }

    public void retirarAgua(double litros) {
        this.cantidadActual = this.cantidadActual - litros; // ❌ No valida si queda negativo
    }

    public void mostrarEstado() {
        System.out.println("Actual: " + this.cantidadActual + " / Maxima: " + this.capacidadMaxima);
    }
}
```

#caja_preguntas[
  + *1)* Analizar el código línea por línea e identificar los errores conceptuales y lógicos.
  + *2)* Argumentar acerca de por qué constituyen errores (encapsulamiento público, falta de límite superior en `agregarAgua`, falta de límite inferior en `retirarAgua` y constructor sin validación).
  + *3)* ¿La solución responde completamente a lo solicitado por la consigna? ¿Se cumple la regla de que el tanque "debe quedar lleno" o "debe quedar en 0" en los casos límite?
  + *4)* *Reescribir* la clase `TanqueAgua` para que la solución sea correcta, respetando los principios de la Programación Orientada a Objetos (atributos privados, getters/setters, validación en constructores y métodos mutadores).
]

#resolucion(titulo: "Resolución del Ejercicio 6")[
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

  *Código Fuente Corregido (`TanqueAgua.java`):*
  ```java
  // Inserte aquí su clase TanqueAgua corregida y refactorizada
  ```
]
