#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 1
// -------------------------------------------------------------
== 🔹 Ejercicio 1: Separación de Números Positivos y Negativos en Pilas

Escribir un programa que genere 15 números enteros aleatorios (entre $-20$ y $20$) y los guarde en una pila. Luego, quitar los elementos de la pila y guardar los números positivos (incluyendo el $0$) en una nueva pila llamada `positivos` y los negativos en otra llamada `negativos`. Calcular y mostrar el valor máximo y el valor mínimo de cada una de las pilas creadas. Al finalizar el proceso, la pila original debe mantenerse sin modificaciones (con sus elementos en el orden original).

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio. También necesita del objeto `Random` para generar valores de manera aleatoria.
]

#caja_preguntas[
  + *a)* ¿Cuántas pilas auxiliares son necesarias para lograr separar los elementos y además garantizar que la pila original quede sin modificaciones?
  + *b)* ¿Qué ocurre si todos los números generados son negativos? ¿Cómo se comporta el cálculo del máximo y mínimo en la pila `positivos`? ¿Cómo debe manejar el programa una pila vacía para que no lance un error al calcular el máximo?
  + *c)* Si la pila original (de cima a base) queda cargada con los valores $-30$, $10$, $-5$ y $3$, ¿El programa se ejecutó correctamente? ¿Cuál será el contenido de la pila `positivos` y la pila `negativos` una vez terminado el proceso?
  + *d)* ¿Por qué es fundamental utilizar pilas auxiliares y no simplemente un bucle `for` o un `ArrayList` para recuperar los elementos? Justifique.
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

  *Código Fuente:*
  ```java
  // Inserte o importe aquí su solución en Java
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
