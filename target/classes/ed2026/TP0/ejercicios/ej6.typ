#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 6
// -------------------------------------------------------------
== 🔹 Ejercicio 6: Procesamiento de Cadenas de Texto

Desarrollar un programa que procese y analice nombres de ciudades y países.

=== Consigna:
- Solicitar al usuario el ingreso de:
  - Nombre de una *ciudad*.
  - Nombre de un *país*.
- Concatenar ambas cadenas separándolas por una coma y un espacio (ej: `"San Salvador de Jujuy, Argentina"`) y mostrar el resultado.
- Mostrar la cantidad de caracteres de ambas cadenas por separado.
- Comparar las longitudes e indicar cuál de las dos es más larga (o si son iguales).
- Verificar si el nombre de la ciudad contiene la letra *"ñ"* (o *"Ñ"*).
- Mostrar la cadena final concatenada completamente en minúsculas.

#caja_indicaciones[
  - Usar métodos de la clase `String` (`length()`, `contains()`, `toLowerCase()`, etc.) y manejar entradas vacías o con espacios adicionales.
]

#caja_preguntas[
  + *a)* Al contar la cantidad de caracteres, ¿los espacios en blanco al principio o al final del texto ingresado por el usuario deberían contarse? ¿Qué método de la clase `String` podría usarse para limpiar esos espacios antes de contar?
  + *b)* Un compañero propone comparar si las cadenas son iguales usando el operador `==` y otro usando el método `.equals()`. ¿Cuál de las dos representa mejor la comparación de textos en Java y por qué?
  + *c)* ¿Qué sucede si el usuario no ingresa nada (presiona Enter directamente) en uno de los campos? ¿Qué longitud tendría la cadena?
  + *d)* Un compañero escribe `if (ciudad.equals(pais))` para saber cuál es más larga. ¿Constituye esto un error de lógica respecto a lo que pide el enunciado? Explique cuál sería el método correcto a utilizar.
]

#resolucion(titulo: "Resolución del Ejercicio 6")[
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
