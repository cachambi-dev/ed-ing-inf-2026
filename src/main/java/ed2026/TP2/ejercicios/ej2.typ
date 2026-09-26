#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 2
// -------------------------------------------------------------
== 🔹 Ejercicio 2: Gestión de Vuelos en un Aeródromo (Arreglos Paralelos)

Crear un programa para la gestión de vuelos en un aeródromo. Solicitar la cantidad de vuelos a gestionar. Para cada vuelo, el usuario debe ingresar un número de vuelo y su estado actual, el cual puede ser: `"Programado"`, `"En Vuelo"`, `"Cancelado"` o `"Aterrizado"`. Estos datos deben almacenarse en arreglos paralelos (uno para el número y otro para el estado).

=== Consigna:
- *a)* Buscar un número de vuelo específico y, si lo encuentra, mostrar su estado actual y su posición en el arreglo.
- *b)* Obtener la cantidad de vuelos que se encuentran en un estado particular ingresado por el usuario.
- *c)* Solicitar al usuario el ingreso de un estado y devolver un arreglo que contenga los números de los vuelos que corresponden a ese estado.
- *d)* Reorganizar los arreglos (intercambiando elementos) de manera que todos los vuelos `"Cancelados"` se muevan al final del arreglo, manteniendo el orden relativo del resto. Mostrar los vuelos y sus estados después de esta operación.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* ¿Por qué se utilizan arreglos paralelos en lugar de un solo arreglo? ¿Qué riesgo existe al reorganizar los arreglos en el punto d) si nos olvidamos de actualizar uno de los dos arreglos?
  + *b)* Comprobar el funcionamiento del programa en diferentes situaciones, es decir, cuando haya vuelos `"Cancelados"` al principio, en el medio y al final. ¿Qué resultado espera obtener en el punto d)?
  + *c)* Si ahora se deseara agregar la fecha de salida a cada vuelo, ¿cómo se vería afectada la estructura de arreglos paralelos? ¿Cree que existe otra forma de almacenar más datos sobre los vuelos y mantenerlos en un solo arreglo?
  + *d)* En el punto c), el tamaño del arreglo a devolver no se conoce de antemano. ¿Cómo resolvería la creación de este nuevo arreglo sabiendo que los arreglos estáticos no pueden cambiar de tamaño una vez creados?
]

#resolucion(titulo: "Resolución del Ejercicio 2")[
  #respuesta("a")[
    Los arreglos paralelos permiten guardar dos piezas de información relacionados entre sí: el número de vuelo y su estado. Si se reorganiza un arreglo sin actualizar el otro de forma simultánea, se rompe la correspondencia entre ambos. Por eso ambos arreglos deben moverse siempre en conjunto.
  ]
  #respuesta("b")[
    En el punto d) se deben mover todos los vuelos cancelados al final, manteniendo el orden relativo de los demás. Si hay cancelados al principio, en medio o al final, el algoritmo debe dejar todos los cancelados al final y conservar el resto en el mismo orden relativo.
  ]
  #respuesta("c")[
    Si se agrega la fecha de salida, la estructura de arreglos paralelos se vuelve más incómoda porque cada vuelo requeriría un arreglo adicional para fechas. Una alternativa es crear una clase `Vuelo` con atributos `numero`, `estado` y `fecha`, y luego almacenar objetos de ese tipo en un único arreglo.
  ]
  #respuesta("d")[
    Para crear un nuevo arreglo con los vuelos de un estado específico, primero se debe contar cuántos elementos cumplen la condición. Una vez calculado ese tamaño, se crea el arreglo con dimensión exacta y se llena con los elementos que correspondan al estado solicitado.
  ]

  *Código Fuente:*
  #raw(read("../Tp2_02.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
