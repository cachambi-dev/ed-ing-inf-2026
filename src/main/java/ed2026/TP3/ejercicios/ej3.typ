#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 3
// -------------------------------------------------------------
== 🔹 Ejercicio 3: Operaciones con Pilas de Enteros Aleatorios

Dada una pila cargada con $N$ números enteros generados de manera aleatoria, implementar lo siguiente:

=== Consigna:
- *a)* Un método que reciba como parámetro una pila de enteros y un número $X$. El método debe eliminar todos los elementos que sean divisores exactos de $X$. Los demás elementos deben mantenerse en la pila en el mismo orden original.
- *b)* Un método que reemplace todos los números impares de la pila por el número $0$, manteniendo la posición de los elementos.
- *c)* Un método que cuente la cantidad de elementos que son mayores al elemento que se encuentra en la cima de la pila. La pila original no debe modificarse.
- *d)* Un método que intercambie el elemento que se encuentra en la cima con el elemento que se encuentra justo en la mitad de la pila.

*En el programa principal (`main`) se debe:*
- *e)* Solicitar al usuario la cantidad $N$ de elementos, generarlos en forma aleatoria y cargarlos en la pila.
- *f)* Mostrar la pila original por consola.
- *g)* Ejecutar cada uno de los métodos implementados (solicitando al usuario el número $X$ cuando corresponda). Se debe mostrar el resultado o el estado de la pila antes y después de cada operación para verificar que el orden y los valores se comportan según lo solicitado.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio. También necesita del objeto `Random` para generar valores de manera aleatoria.
]

#caja_preguntas[
  + *a)* En el punto (d), ¿qué sucede si la pila tiene un número par de elementos? ¿Cuál se considera la "mitad"? ¿Qué pasa si la pila tiene 1 elemento o está vacía?
  + *b)* Si la pila (de base a cima) contiene $8, 2, 5$ y $1$; sin ejecutar el programa: ¿Cuál es el resultado de `contarMayoresQueCima`? ¿Cómo queda la pila después de intercambiar la cima con la mitad?
  + *c)* Para el punto (c), se exige que la pila no se modifique. Si un compañero hace un `pop()` de todos los elementos para contarlos y los mete en una pila auxiliar, ¿qué paso le falta para cumplir con la consigna?
  + *d)* Si se quisiera agregar un método `ordenarPilaAscendente()`, que devuelva otra pila con los elementos ordenados ascendentemente y que la pila original no se modifique ¿Se podría hacerlo usando una sola pila auxiliar? Justifique.
]

#resolucion(titulo: "Resolución del Ejercicio 3")[
  #respuesta("a")[
    Si la cantidad de elementos es par, la “mitad” no está definida como un único elemento; se toma la posición central según la cantidad total. Por ejemplo, con 4 elementos, la mitad es el tercer elemento contando desde la base. Si la pila tiene 1 elemento o está vacía, no se puede intercambiar nada: el método debe devolver sin hacer cambios.
  ]
  #respuesta("b")[
    La cima es el valor `1`, por lo que los elementos mayores que la cima son `8`, `2` y `5`. En total, la cantidad es `3`.

    Si se intercambia la cima con el elemento central, la pila pasa de `8, 2, 5, 1` (base a cima) a `8, 2, 1, 5` (base a cima).
  ]
  #respuesta("c")[
    Si un compañero hace `pop()` de todos los elementos para contarlos y no los devuelve a la pila original, entonces la pila queda modificada. Falta la etapa de restauración: guardar los elementos en una pila auxiliar y al final reponerlos en la misma posición y orden original.
  ]
  #respuesta("d")[
    En general, no se puede ordenar una pila ascendentemente usando solo una pila auxiliar sin perder control del orden y sin hacer comparaciones complejas. Para ordenar correctamente normalmente se requieren dos pilas auxiliares o un enfoque más elaborado. Una sola pila no es suficiente para garantizar el orden final sin alterar el conjunto de elementos.
  ]

  *Código Fuente (`Tp3_03.java`):*
  #raw(read("../Tp3_03.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
