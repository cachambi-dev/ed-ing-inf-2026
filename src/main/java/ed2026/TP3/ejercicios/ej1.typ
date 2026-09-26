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
    Se necesitan dos pilas auxiliares para separar los elementos: una para guardar los positivos y otra para los negativos. Además, para que la pila original quede sin modificaciones, se debe usar una pila temporal para extraer y luego restaurar los elementos originales.
  ]
  #respuesta("b")[
    Si todos los números son negativos, la pila `positivos` queda vacía. En ese caso, no puede calcularse el máximo porque no existe elemento en la cima. El programa debe verificar si la pila está vacía antes de hacer `peek()` o `pop()`, mostrando un mensaje como: “La pila de positivos está vacía”.
  ]
  #respuesta("c")[
    Si la pila original es (de cima a base): `-30, 10, -5, 3`, entonces se recorre la pila y se separan los elementos así:

    - `-30` va a `negativos`
    - `10` va a `positivos`
    - `-5` va a `negativos`
    - `3` va a `positivos`

    Al finalizar, la pila `positivos` queda con `10` y `3` (de cima a base o base a cima según la representación), y la pila `negativos` queda con `-5` y `-30`. La pila original se restaura al final, manteniendo su orden inicial.
  ]
  #respuesta("d")[
    Porque una pila es LIFO: el último en entrar es el primero en salir. Para separar y luego devolver los elementos sin perder su orden original, es necesario usar pilas auxiliares para guardar temporalmente los datos. Un `for` o un `ArrayList` no refleja la semántica de una pila y no garantiza que el comportamiento sea compatible con el tipo de dato abstracto `Stack`.
  ]

  *Código Fuente:*
  ```java
  public static void separarPositivosNegativos(Stack<Integer> original, Stack<Integer> positivos, Stack<Integer> negativos) {
      Stack<Integer> aux = new Stack<>();

      while (!original.isEmpty()) {
          int valor = original.pop();
          aux.push(valor);

          if (valor >= 0) {
              positivos.push(valor);
          } else {
              negativos.push(valor);
          }
      }

      while (!aux.isEmpty()) {
          original.push(aux.pop());
      }
  }
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
