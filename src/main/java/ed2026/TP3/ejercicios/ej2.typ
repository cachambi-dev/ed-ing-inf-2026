#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 2
// -------------------------------------------------------------
== 🔹 Ejercicio 2: Inversión de Múltiplos de 3 en un Arreglo usando Pilas

Dado un arreglo de números enteros, se desea invertir únicamente los números que son múltiplos de 3. Para la inversión se debe utilizar una pila y se debe mantener el resto del arreglo sin modificaciones.

*Ejemplo:*
- Arreglo original contiene: `4, 3, 7, 9, 12, 2, 15`
- Múltiplos de 3 en el arreglo: `3, 9, 12, 15`. Se invierten usando una pila: `15, 12, 9, 3`.
- Resultado final: `4, 15, 7, 12, 9, 2, 3`

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* ¿Por qué la estructura pila es la ideal para invertir el orden de una secuencia de elementos, en lugar de usar un arreglo o un `ArrayList`?
  + *b)* En la pila ¿Es suficiente almacenar el valor del número múltiplo de 3, o es necesario almacenar otro dato para luego poder reconstruir el arreglo?
  + *c)* Un compañero propone guardar en la pila el valor del número múltiplo de 3 y la posición donde se encuentra este número, ¿Funciona esta alternativa?
  + *d)* Si el arreglo no contiene ningún múltiplo de 3. ¿Qué le ocurrirá a la pila en ese escenario?
]

#resolucion(titulo: "Resolución del Ejercicio 2")[
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

  *Código Fuente (`Tp3_02.java`):*
  #raw(read("../Tp3_02.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
