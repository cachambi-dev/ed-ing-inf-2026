#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 1
// -------------------------------------------------------------
== 🔹 Ejercicio 1: Figura Geométrica 3D — Clase `Cilindro` (`./p1/Cilindro.java`)

Diseñar una clase llamada `Cilindro` que representa una figura geométrica tridimensional.

=== Consigna:
- *Atributos:* `radio` (de la base) y `altura` (de tipo `double`).
- *Métodos a incluir:*
  + *a)* Constructor predeterminado que inicialice ambos valores en `1.0`.
  + *b)* Constructor parametrizado para establecer el radio y la altura del cilindro.
  + *c)* Método `getVolumen()`:
    $ "Volumen" = pi times "radio"^2 times "altura" $
  + *d)* Método `getAreaSuperficie()`:
    $ "Área Superficie Total" = 2 times pi times "radio" times ("radio" + "altura") $
- *Programa principal (`main`):*
  + *e)* Crear una única instancia de la clase `Cilindro`.
  + *f)* Solicitar al usuario ingresar radio y altura verificando que los valores sean estrictamente positivos ($> 0$).
  + *g)* Utilizar los métodos de la clase `Cilindro` para establecer estas dimensiones.
  + *h)* Calcular y mostrar el volumen y el área de la superficie del cilindro creado, formateando los decimales a dos cifras.

#caja_indicaciones[
  - Usar `Scanner` para ingresar datos por consola, garantizando el control de excepciones e ingreso de datos.
  - Modularizar correctamente el ingreso y validación respecto a la lógica del dominio.
]

#caja_preguntas[
  + *a)* ¿Cuáles son las entradas y salidas del programa? ¿Qué información debe mantenerse almacenada en el objeto durante toda la ejecución y qué información es sólo temporal?
  + *b)* ¿Qué ocurre si el usuario intenta ingresar un radio o altura igual a cero o a un valor negativo? ¿Cómo garantiza su código que el objeto `Cilindro` nunca contenga dimensiones inválidas?
  + *c)* Compruebe el comportamiento de un objeto cilindro cuando se usan: valores positivos, valores que intenten vulnerar la validación (por ej. valor negativo) y cuando el radio y la altura son iguales.
  + *d)* ¿Qué ventajas tiene implementar los cálculos de volumen y área como métodos en la clase `Cilindro` en lugar de hacer las operaciones matemáticas directamente en el método `main`?
]

#resolucion(titulo: "Resolución del Ejercicio 1")[
  #respuesta("a")[
    // Escribir aquí la respuesta a)
  ]
  #respuesta("b")[
    // Escribir aquí la respuesta b)
  ]
  #respuesta("c")[
    // Escribir aquí la respuesta c)
  ]
  #respuesta("d")[
    // Escribir aquí la respuesta d)
  ]

  *Código Fuente (`Cilindro.java`):*
  ```java
  // Inserte o importe aquí su solución en Java
  // Tip: podés usar `#raw(read("../p1/Cilindro.java"), lang: "java")` para cargarlo automáticamente
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
