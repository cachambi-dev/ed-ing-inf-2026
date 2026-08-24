#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 4
// -------------------------------------------------------------
== 🔹 Ejercicio 4: Ficha de Salud e IMC — Clase `Paciente`

Desarrollar una clase llamada `Paciente` para gestionar información de salud básica.

=== Consigna:
- *Atributos:* `nombre` (String), `dni` (String), `peso` (en kg, `double`), `altura` (en metros, `double`).
- *Métodos a implementar:*
  + *a)* Getters y setters para todos los atributos.
  + *b)* `calcularIMC()`: calcula y devuelve el Índice de Masa Corporal:
    $ "IMC" = "peso" / "altura"^2 $
  + *c)* `obtenerEstadoNutricional()`: devuelve un `String` según el IMC calculado:
    - $"IMC" < 18.5$: `"Bajo peso"`
    - $18.5 <= "IMC" <= 24.9$: `"Normal"`
    - $25.0 <= "IMC" <= 29.9$: `"Sobrepeso"`
    - $"IMC" >= 30.0$: `"Obesidad"`
- *Programa principal (`main`):*
  + *d)* Crear una instancia de `Paciente`.
  + *e)* Solicitar al usuario ingresar nombre, DNI, peso y altura, validando que peso y altura sean valores numéricos positivos ($> 0$).
  + *f)* Utilizar los setters de la clase `Paciente` para asignar los valores.
  + *g)* Mostrar el nombre del paciente, DNI, IMC formateado a dos decimales y su estado nutricional.

#caja_preguntas[
  + *a)* Al diseñar la clase, ¿el IMC debería ser un atributo (ej. `double imc;`) o solo el resultado de un método de cálculo (ej. `calcularIMC()`)? Tenga en cuenta que inicialmente el peso puede recibir un valor, pero luego se puede invocar al setter para cambiarlo.
  + *b)* Encontrar valores de peso y altura tales que los cálculos de IMC correspondientes sean iguales a $24.9$ y a $25.0$. ¿Qué estado nutricional se obtiene en cada caso? ¿Por qué es crucial probar estos límites en las estructuras condicionales?
  + *c)* Un compañero escribe la validación de la altura de una persona en el método `main` de esta manera:
    ```java
    if (altura > 0) {
        paciente.setAltura(altura);
    }
    ```
    Sin embargo, más tarde descubre que usando los setters de forma directa alguien pudo asignarle una altura de `-2` al objeto. ¿Qué falta en el diseño de la clase `Paciente` para garantizar que sus atributos NUNCA tengan valores negativos sin importar quién use la clase? Argumente sobre cómo deberían ser los métodos setter.
]

#resolucion(titulo: "Resolución del Ejercicio 4")[
  #respuesta("a")[
    // Escribir aquí la respuesta a)
  ]
  #respuesta("b")[
    // Escribir aquí la respuesta b)
  ]
  #respuesta("c")[
    // Escribir aquí la respuesta c)
  ]

  *Código Fuente (`Paciente.java`):*
  ```java
  // Inserte o importe aquí su solución en Java
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
