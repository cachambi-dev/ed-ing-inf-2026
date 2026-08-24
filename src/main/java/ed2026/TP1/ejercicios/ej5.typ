#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 5
// -------------------------------------------------------------
== 🔹 Ejercicio 5: Análisis de Código y Encapsulamiento — Clase `Bateria`

Leer atentamente el enunciado y analizar las dos soluciones propuestas.

=== Enunciado:
Diseñar una clase llamada `Bateria` que representa la carga de un dispositivo. La clase debe tener un atributo para el porcentaje de carga (entero entre $0$ y $100$). Debe permitir cargar la batería (sumando porcentaje, sin superar $100$) y consumir batería (restando porcentaje, sin bajar de $0$). En el programa principal, se debe crear una batería con 50% de carga, consumir 60 unidades (lo que debería dejarla en 0%) y mostrar el estado final.

=== Comparativa de Soluciones:

#grid(
  columns: (1fr),
  gutter: 10pt,
  [
    *❌ Solución A (Sin encapsulamiento):*
    ```java
    class Bateria {
        public int carga;

        public Bateria(int cargaInicial) {
            if (cargaInicial < 0) cargaInicial = 0;
            if (cargaInicial > 100) cargaInicial = 100;
            this.carga = cargaInicial;
        }

        public void consumir(int cantidad) {
            this.carga = this.carga - cantidad;
        }
    }

    public class Main {
        public static void main(String[] args) {
            Bateria b = new Bateria(50);
            // Consumir 60 validando fuera de la clase
            if (b.carga - 60 < 0) {
                b.carga = 0;
            } else {
                b.carga = b.carga - 60;
            }
            System.out.println("Carga final: " + b.carga + "%");
        }
    }
    ```
  ],
  [
    *✅ Solución B (Con encapsulamiento robusto):*
    ```java
    class Bateria {
        private int carga;

        public Bateria(int cargaInicial) {
            if (cargaInicial < 0) cargaInicial = 0;
            if (cargaInicial > 100) cargaInicial = 100;
            this.carga = cargaInicial;
        }

        public void consumir(int cantidad) {
            this.carga -= cantidad;
            if (this.carga < 0) {
                this.carga = 0;
            }
        }

        public int getCarga() {
            return this.carga;
        }
    }

    public class Main {
        public static void main(String[] args) {
            Bateria b = new Bateria(50);
            b.consumir(60);
            System.out.println("Carga final: " + b.getCarga() + "%");
        }
    }
    ```
  ]
)

#caja_preguntas[
  + *1)* ¿Cuál de las dos soluciones representa mejor los principios de la Programación Orientada a Objetos estudiados? Justifique su respuesta haciendo referencia al concepto de *encapsulamiento*.
  + *2)* Si tuvieras que explicar por qué la *Solución B* es un mejor diseño de software a un compañero que recién empieza a programar, ¿qué argumentos le darías?
  + *3)* El enunciado pide que el valor "no baje de 0". ¿Cuál de las dos soluciones respeta mejor esta restricción de manera robusta? ¿Qué sucede en la *Solución A* si en el futuro otro programador escribe `b.consumir(200)` sin incluir una estructura selectiva `if` en el método `main`? ¿Y qué sucede en la *Solución B* en ese mismo caso?
  + *4)* Identificar al menos una ventaja de la *Solución A* y una ventaja de la *Solución B*. Luego, explicar por qué la *Solución B* puede ser más valiosa en un sistema de software real que puede crecer en el futuro.
]

#resolucion(titulo: "Resolución del Ejercicio 5")[
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
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
