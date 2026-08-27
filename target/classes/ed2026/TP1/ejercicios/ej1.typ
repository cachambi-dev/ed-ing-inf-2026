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
    - *Entradas:* El `radio` de la base y la `altura` del cilindro (ambos de tipo `double`).
    - *Salidas:* El `Volumen` ($pi r^2 h$) y el `Área Superficial Total` ($2 pi r (r + h)$) formateados con dos decimales.
    - *Información persistente en el objeto:* Los atributos privados `radio` y `altura`, que constituyen el *estado interno* del objeto `Cilindro` y se mantienen vivos en memoria mientras exista la instancia.
    - *Información temporal:* Las variables locales auxiliares empleadas en el método `main` (instancia de `Scanner`, lecturas temporales por consola y variables auxiliares de cálculo).
  ]

  #respuesta("b")[
    Si el usuario ingresa un valor menor o igual a cero ($<= 0$):
    1. *En la capa de entrada (consola):* El método modular `leerDecimalPositivo` intercepta el valor, advierte que debe ser estrictamente positivo ($> 0$) y solicita el ingreso nuevamente sin interrumpir el programa.
    2. *En el modelo del dominio (`Cilindro`):* Los métodos `setRadio()`, `setAltura()` y el constructor parametrizado evalúan los argumentos y lanzan una excepción `IllegalArgumentException` si son inválidos. Al ser los atributos privados (`private`), se garantiza que el objeto nunca entre en un estado inconsistente.
  ]

  #respuesta("c")[
    1. *Valores positivos (ej. $r = 3.0$, $h = 5.0$):*
       $ "Volumen" = pi times 3^2 times 5 = 45pi approx 141.37 $
       $ "Área Total" = 2 times pi times 3 times (3 + 5) = 48pi approx 150.80 $
       El objeto opera de manera óptima calculando y mostrando las magnitudes.
    2. *Valores que intentan vulnerar la validación (ej. $r = -2.0$ o $h = 0$):*
       El lector de consola rechaza el ingreso. Si se invoca directamente `setRadio(-2.0)`, se dispara `IllegalArgumentException` protegiendo la integridad del objeto.
    3. *Radio y altura iguales (ej. $r = 4.0$, $h = 4.0$):*
       $ "Volumen" = pi times 4^2 times 4 = 64pi approx 201.06 $
       $ "Área Total" = 2 times pi times 4 times (4 + 4) = 64pi approx 201.06 $
       Geométricamente, cuando $r = h$, el valor numérico del volumen y del área total coinciden ($201.06$), funcionando el algoritmo con total precisión.
  ]

  #respuesta("d")[
    - *Encapsulamiento y Cohesión:* Se agrupan los datos y el comportamiento del cilindro dentro de la misma clase.
    - *Reutilización:* Cualquier parte del sistema que disponga de una instancia de `Cilindro` puede consultar su volumen o área sin necesidad de reescribir fórmulas matemáticas.
    - *Mantenibilidad:* Si se precisa modificar la precisión de las constantes o la fórmula, solo se edita la clase `Cilindro` sin propagar cambios al `main`.
    - *Seguridad:* Los cálculos siempre utilizan el estado interno validado (`this.radio` y `this.altura`), previniendo errores de cálculo con variables desacopladas.
  ]

  *Código Fuente (`Cilindro.java`):*
  #raw(read("../p1/Cilindro.java"), lang: "java")

  *Código Fuente Principal (`Punto1.java`):*
  #raw(read("../p1/Punto1.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
