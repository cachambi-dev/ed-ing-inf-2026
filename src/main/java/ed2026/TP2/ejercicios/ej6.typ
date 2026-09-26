#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 6
// -------------------------------------------------------------
== 🔹 Ejercicio 6: Matriz de Ventas por Vendedor y Días

Se desea cargar, en una matriz de dos dimensiones, las ventas realizadas por varios vendedores a lo largo de varios días del mes. Se debe solicitar al usuario el número de vendedores (filas) y el número de días (columnas). A continuación, ingresar los montos de las ventas para cada vendedor en cada día. Una vez cargada la matriz, el programa debe:

=== Consigna:
- *a)* Calcular y mostrar el total de ventas acumuladas por cada vendedor.
- *b)* Calcular y mostrar el promedio de ventas de cada día.
- *c)* Encontrar y mostrar la venta de mayor monto y la de menor monto de toda la matriz, indicando qué vendedor y en qué día se produjo (índices de fila y columna).
- *d)* Obtener la cantidad de vendedores que superan un monto objetivo de ventas en la totalidad de los días (objetivo ingresado por el usuario).
- *e)* Obtener la cantidad de ventas que superaron el promedio general diario en un día específico ingresado por el usuario.
- *f)* Crear un arreglo que contenga el promedio de ventas de cada vendedor.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* ¿Qué operaciones requieren recorrer la matriz por filas completas (vendedores) y cuáles por columnas completas (días)?
  + *b)* ¿Qué ocurre si un vendedor no realizó ninguna venta (ingresa 0) en todos los días? ¿Cómo afecta esto al cálculo del promedio del inciso (f)?
  + *c)* Si la matriz contiene los valores 100 y 200 en la primera fila y los valores 300 y 400 en la segunda fila, y el día especificado en el punto e) es el día 2 (columna 1), sin ejecutar el programa: ¿Cuál será el promedio de ese día? ¿Cuántas ventas lo superan?
  + *d)* Si ahora se desea saber cuál fue el día más productivo (el día con mayor monto total acumulado de toda la matriz), ¿qué variables auxiliares serán necesarias durante el recorrido de la matriz?
]

#resolucion(titulo: "Resolución del Ejercicio 6")[
  #respuesta("a")[
    Las operaciones por vendedores requieren recorrer cada fila completa. Las operaciones por días requieren recorrer cada columna completa. Esto implica que para calcular totales por vendedor se recorre la matriz por filas, y para obtener promedios diarios se recorre por columnas.
  ]
  #respuesta("b")[
    Si un vendedor tuvo cero ventas en todos los días, su total será cero y su promedio también será cero. Esto no produce error, pero hay que manejarlo con división segura para evitar una operación inválida.
  ]
  #respuesta("c")[
    Si la matriz es:

    - fila 0: 100, 200
    - fila 1: 300, 400

    El promedio del día 2 (columna 1) es `(200 + 400) / 2 = 300`. Las ventas que superan 300 son solo 400, por lo que el número de ventas que lo superan es `1`.
  ]
  #respuesta("d")[
    Para saber cuál fue el día más productivo, es necesario recorrer la matriz por columnas y acumular el total de cada día, guardando además el índice del día con mayor suma. Esto requiere una variable para el máximo acumulado y otra para el índice del día.
  ]

  *Código Fuente:*
  ```java
  public static double promedioDia(int[][] ventas, int columna) {
      double total = 0;
      for (int fila = 0; fila < ventas.length; fila++) {
          total += ventas[fila][columna];
      }
      return ventas.length == 0 ? 0 : total / ventas.length;
  }
  ```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
