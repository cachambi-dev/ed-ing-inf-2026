#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 1
// -------------------------------------------------------------
== 🔹 Ejercicio 1: Cálculo del Salario Neto (`Punto1.java`)

Desarrollar un programa que calcule el salario neto de un trabajador en función de las horas trabajadas.

=== Consigna:
- Solicitar el nombre del empleado, la cantidad de horas trabajadas en la semana y el valor de la hora trabajada.
- *Cálculo del Salario Bruto:*
  - Si las horas trabajadas son $<= 40$: `salarioBruto = horasTrabajadas * valorHora`
  - Si las horas trabajadas son $> 40$, las horas excedentes son horas extras con recargo del 50%:
    $ "horasExtras" = "horasTrabajadas" - 40 $
    $ "pagoExtra" = "horasExtras" times ("valorHora" times 1.5) $
    $ "salarioBruto" = "pagoNormal" + "pagoExtra" $
- *Descuentos de ley (sobre el salario bruto total):*
  - Si $"salarioBruto" <=$ \$1.000.000: Descuento del 9%.
  - Si \$1.000.000 $< "salarioBruto" <=$ \$3.000.000: Descuento del 12%.
  - Si $"salarioBruto" >$ \$3.000.000: Descuento del 15%.
  - $ "Monto Descuento" = "Salario Bruto" times ("Porcentaje" / 100) $
  - $ "Salario Neto" = "Salario Bruto" - "Monto Descuento" $
- *Salida:* Mostrar el salario bruto, el monto total de descuento y el salario neto final a cobrar.

#caja_indicaciones[
  - Usar `Scanner` para la lectura de datos por consola.
  - Validar/controlar errores al operar con teclado.
  - Modularizar correctamente la lectura y validación respecto a la lógica del cálculo.
]

#caja_preguntas[
  + *a)* ¿Cuáles son las entradas y salidas del programa?
  + *b)* ¿Qué sucede si el usuario ingresa un valor negativo en la cantidad de horas trabajadas?
  + *c)* Si el salario bruto es \$2.500.000 y el descuento es de \$375.000, ¿se calculó correctamente el descuento?
  + *d)* ¿Qué resultados se obtienen si el empleado no realizó horas extras?
]

#resolucion(titulo: "Resolución del Ejercicio 1")[
  #respuesta("a")[
    - *Entradas:*
      - `nombreEmpleado` (`String`): Nombre del trabajador ingresado por teclado.
      - `horasTrabajadas` (`int`): Total de horas trabajadas durante la semana.
      - `valorHora` (`double`): Tarifa en pesos por cada hora regular trabajada.
    - *Salidas:*
      - Nombre del empleado.
      - `salarioBruto`: Total acumulado antes de retenciones (horas normales + horas extras al 50%).
      - `montoDescuento`: Valor monetario retenido según la escala de ley (9%, 12% o 15%).
      - `salarioNeto`: Salario final a percibir de bolsillo ($"salarioNeto" = "salarioBruto" - "montoDescuento"$).
  ]

  #respuesta("b")[
    Si el usuario ingresa un número negativo (ej. `-10` horas) y el programa no cuenta con validación previa, ejecutará el cálculo multiplicando valores negativos, produciendo un salario bruto negativo. Al ser menor a \$1.000.000, aplicará un descuento del 9% sobre ese valor negativo, arrojando un salario neto negativo absurdo. Por esta razón, es fundamental validar que las horas y el valor hora sean valores mayores o iguales a cero ($>= 0$) antes de procesar los cálculos.
  ]

  #respuesta("c")[
    *No, el descuento no se calculó correctamente.*
    Un salario bruto de \$2.500.000 pertenece al segundo tramo de la escala (\$1.000.000 a \$3.000.000 inclusive), al cual le corresponde una retención del *12%*:
    $ "Monto Descuento" = \$2.500.000 times 0.12 = \$300.000 $
    El valor de \$375.000 equivale a una tasa del *15%* ($\$2.500.000 times 0.15$), la cual solo aplica para salarios brutos que superen estrictamente los \$3.000.000.
  ]

  #respuesta("d")[
    Si el empleado no realizó horas extras ($"horasTrabajadas" <= 40$), la variable $"horasExtras" = 0$ y $"pagoExtra" = 0$. En consecuencia:
    $ "salarioBruto" = "horasTrabajadas" times "valorHora" $
    Sobre este monto se aplicará el porcentaje de descuento que corresponda (generalmente el 9% si es menor a \$1.000.000), resultando en un salario neto equivalente al 91% del sueldo bruto ($"salarioBruto" times 0.91$).
  ]

  *Código Fuente (`Punto1.java`):*
  #raw(read("../Punto1.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
