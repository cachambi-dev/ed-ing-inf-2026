#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 3
// -------------------------------------------------------------
== 🔹 Ejercicio 3: Manipulación de Caracteres en Arreglos

Realizar un programa que permita al usuario ingresar cualquier cantidad de caracteres. Una vez cargado el arreglo, el programa debe:

=== Consigna:
- *a)* Obtener la cantidad de caracteres que aparecen más de una vez (duplicados), sin distinguir entre mayúsculas y minúsculas. Asimismo, mostrar cuáles son esos caracteres.
- *b)* Buscar y mostrar la posición de la primera vocal y la última consonante encontrada en el arreglo.
- *c)* Obtener un nuevo arreglo que contenga únicamente los caracteres que son dígitos numéricos (del `'0'` al `'9'`). Mostrar el arreglo resultante.
- *d)* Intercambiar la posición del primer carácter encontrado que sea una letra mayúscula con el último carácter que sea un símbolo (no letra ni número). Si no hay mayúsculas o no hay símbolos, generar un número aleatorio (entre $0$ y $"longitud"-1$) y usar el carácter de esa posición para el intercambio. Mostrar el arreglo modificado.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* Un compañero propone usar un arreglo estático (`char[]`) para este ejercicio, asumiendo un tamaño máximo de 100. ¿Qué ventajas y desventajas tiene esta alternativa?
  + *b)* ¿Qué sucede si el usuario opera con un arreglo vacío o sin vocales en el punto b)? ¿El programa lanza una excepción o cómo debería manejarlo?
  + *c)* En el punto d) en caso de intercambiar elementos usando un `ArrayList`, ¿se debe usar un método específico o se puede usar una variable auxiliar?
  + *d)* ¿Qué método de la clase `Character` o `String` sería útil para ignorar mayúsculas y minúsculas en el punto a)?
]

#resolucion(titulo: "Resolución del Ejercicio 3")[
  #respuesta("a")[
    Un arreglo estático como `char[]` con tamaño fijo tiene la ventaja de ser simple y de memoria predecible, pero puede ser poco flexible si no se sabe cuántos caracteres va a ingresar el usuario. Un `ArrayList<Character>` permite crecer dinámicamente, pero requiere más manejo de referencias y más overhead de memoria.
  ]
  #respuesta("b")[
    Si el arreglo está vacío o no tiene vocales, el método debe devolver `-1` o un mensaje de “no encontrado”. Eso evita lanzar una excepción por índice fuera de rango y permite que el programa siga ejecutándose de forma segura.
  ]
  #respuesta("c")[
    En un `ArrayList`, el intercambio entre elementos se hace con una variable auxiliar. Por ejemplo:

    ```java
    char aux = caracteres.get(i);
    caracteres.set(i, caracteres.get(j));
    caracteres.set(j, aux);
    ```
  ]
  #respuesta("d")[
    El método útil es `Character.toLowerCase()` o `Character.toUpperCase()` junto con comparaciones de igualdad. Así se ignoran mayúsculas y minúsculas y se puede contar repeticiones sin distinguir entre letras iguales en distintos casos.
  ]

  *Código Fuente:*
  #raw(read("../Tp2_03.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
