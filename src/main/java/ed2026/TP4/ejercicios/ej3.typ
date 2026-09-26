#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 3
// -------------------------------------------------------------
== 🔹 Ejercicio 3: Clasificación de Llamadas por Longitud de Nombre

Un centro de atención telefónica está procesando una secuencia de llamadas recibidas. Cada llamada se representa con el nombre del cliente y se almacena en una cola de tipo `String`. Se desea realizar un procesamiento de las llamadas en función de la longitud del nombre del cliente.

A través de un programa se debe procesar la cola de entrada para dividir las llamadas en tres nuevas colas:
- Una cola de clientes con nombres cortos (de una a cuatro letras).
- Una cola de clientes con nombres medianos (de cinco a ocho letras).
- Una cola de clientes con nombres largos (nueve o más letras).

Para cada una de estas colas, se debe luego realizar lo siguiente:

=== Consigna:
- *a)* Calcular la cantidad de llamadas (clientes) que contiene cada cola.
- *b)* Buscar y mostrar el nombre más largo de cada cola.
- *c)* Unir las tres colas en una sola, primero la cola de nombres cortos, luego la de nombres medianos y al final la cola de nombres largos. Mostrar la cola resultante.
- *d)* Cuando se recorran los elementos de la cola esta debe mantenerse sin modificaciones.

*En el programa principal (`main`) se debe:*
- *a)* Solicitar al usuario que ingrese una serie de nombres de clientes (hasta que ingrese una palabra clave como `"FIN"`).
- *b)* Encolar las llamadas y ejecutar los métodos solicitados, mostrando por consola los resultados de cada una de las tres colas.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* Al dividir en tres colas, la cola original ¿debería quedar vacía al final del proceso o mantener sus elementos? Justifique basándose en el comportamiento estándar de desencolado.
  + *b)* ¿Qué sucede si no hay clientes con nombres cortos (1-4 letras)? ¿Cómo maneja el programa el cálculo del "nombre más largo" si la cola resultante está vacía para evitar una excepción?
  + *c)* Según lo planteado en el punto c) ¿Cómo quedan las tres colas? ¿Hace falta usar colas auxiliares?
]

#resolucion(titulo: "Resolución del Ejercicio 3")[
  #respuesta("a")[
    La cola original puede quedar vacía si se la procesa con un `poll()` para clasificar los elementos. Sin embargo, si el enunciado exige que la cola original no se modifique, entonces se debe usar una cola auxiliar o recorrerla sin destruirla. En la práctica, para respetar la consigna, se restauran los elementos y la cola original queda intacta.
  ]
  #respuesta("b")[
    Si no hay clientes con nombres cortos, la cola correspondiente queda vacía. Para evitar una excepción al buscar el nombre más largo, el algoritmo debe verificar antes de usar `peek()` o recorrer la cola: si la cola está vacía, se devuelve una cadena vacía o un mensaje como “No hay elementos”.
  ]
  #respuesta("c")[
    Las tres colas se obtienen por clasificación y luego se unen en el orden pedido: primero cortos, luego medianos y finalmente largos. No hace falta usar colas auxiliares para la unión final si se itera sobre cada una y se encola en la nueva cola resultante, siempre respetando el orden especificado.
  ]

  *Código Fuente (`TP4_03.java`):*
  #raw(read("../TP4_03.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
