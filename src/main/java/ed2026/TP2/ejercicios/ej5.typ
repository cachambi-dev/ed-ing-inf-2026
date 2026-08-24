#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 5
// -------------------------------------------------------------
== 🔹 Ejercicio 5: Sistema de Biblioteca Personal — Clase `Libro`

Crear un programa que simule una biblioteca personal, para lo cual se debe crear la clase `Libro` con atributos como `isbn`, `titulo`, `autor` y `anioPublicacion`. El usuario debe poder guardar cualquier cantidad de libros.

=== Consigna:
- *a)* Agregar nuevos libros. El ISBN ingresado no puede repetirse (validar antes de agregar).
- *b)* Buscar un libro por su título o ISBN y mostrar toda su información.
- *c)* Solicitar el ISBN de un libro y modificar el autor o el año de publicación.
- *d)* Eliminar un libro de la biblioteca buscándolo por su ISBN.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* Para resolver este ejercicio, ¿sería conveniente crear un arreglo de 1000 posiciones? ¿Cuáles serían las ventajas y desventajas de esta implementación?
  + *b)* ¿Qué ocurre si se intenta eliminar un libro cuyo ISBN no existe en la biblioteca? ¿Cómo debe responder el programa?
  + *c)* Si la biblioteca tiene 3 libros y se elimina el libro de la posición 1 (el del medio), sin ejecutar el programa: ¿Qué índice le corresponde al libro que antes estaba en la posición 2?
  + *d)* Un compañero propone que para el punto c), en lugar de modificar el objeto existente, se elimine el libro viejo y se agregue uno nuevo con los datos actualizados. ¿Qué ventajas y desventajas tiene esta alternativa frente a usar los métodos `setAutor()` o `setAnio()`?
]

#resolucion(titulo: "Resolución del Ejercicio 5")[
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

  *Código Fuente:*
  ```java
  // Inserte o importe aquí su solución en Java
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
