# 📝 Trabajo Práctico N° 0: Programación Básica

**Materia:** Estructura de Datos  
**Ciclo Lectivo:** 2026  
**Carreras:** Ingeniería Informática — Licenciatura en Sistemas  
**Institución:** Facultad de Ingeniería – Universidad Nacional de Jujuy  

---

## 🎯 Objetivos y Contexto

El trabajo práctico se considera una **auto-evaluación** como diagnóstico de conocimientos y habilidades en programación básica.

Permite ejercitar las estructuras de control de ejecución (secuencial, decisión y repetición), el uso de tipos de datos básicos/predefinidos en **Java**, operaciones de entrada/salida por consola (teclado y pantalla), así como habilidades de búsqueda y selección de información técnica.

---

## 📌 Ejercicios Propuestos

### 🔹 Ejercicio 1: Cálculo del Salario Neto
Desarrollar un programa que calcule el salario neto de un trabajador en función de las horas trabajadas.

#### Consigna:
* Solicitar el nombre del empleado, la cantidad de horas trabajadas en la semana y el valor de la hora trabajada.
* **Cálculo del Salario Bruto:**
  * Si las horas trabajadas son $\le 40$: `salarioBruto = horasTrabajadas * valorHora`
  * Si las horas trabajadas son $> 40$, las horas excedentes son horas extras con recargo del 50%:
    $$\text{horasExtras} = \text{horasTrabajadas} - 40$$
    $$\text{pagoExtra} = \text{horasExtras} \times (\text{valorHora} \times 1.5)$$
    $$\text{salarioBruto} = \text{pagoNormal} + \text{pagoExtra}$$
* **Descuentos de ley (sobre el salario bruto total):**
  * Si $\text{salarioBruto} \le \$1.000.000$: Descuento del 9%.
  * Si $\$1.000.000 < \text{salarioBruto} \le \$3.000.000$: Descuento del 12%.
  * Si $\text{salarioBruto} > \$3.000.000$: Descuento del 15%.
  * $\text{Monto Descuento} = \text{Salario Bruto} \times \left(\frac{\text{Porcentaje}}{100}\right)$
  * $\text{Salario Neto} = \text{Salario Bruto} - \text{Monto Descuento}$
* **Salida:** Mostrar el salario bruto, el monto total de descuento y el salario neto final a cobrar.

#### Indicaciones:
* Usar `Scanner` para la lectura de datos por consola.
* Validar/controlar errores al operar con teclado.
* Modularizar correctamente la lectura y validación respecto a la lógica del cálculo.

#### Preguntas sobre el problema:
a) ¿Cuáles son las entradas y salidas del programa?  
b) ¿Qué sucede si el usuario ingresa un valor negativo en la cantidad de horas trabajadas?  
c) Si el salario bruto es $\$2.500.000$ y el descuento es de $\$375.000$, ¿se calculó correctamente el descuento?  
d) ¿Qué resultados se obtienen si el empleado no realizó horas extras?  

---

### 🔹 Ejercicio 2: Simulador de Registro de Temperaturas
Desarrollar un programa que simule el registro de temperaturas de un sensor durante un día.

#### Consigna:
* Solicitar al usuario la cantidad de mediciones que desea simular.
* Por cada medición:
  1. Generar y mostrar un número aleatorio entre $-10$ y $40$, simulando la temperatura en grados Celsius (°C).
* Al finalizar todas las mediciones:
  1. Calcular y mostrar la **temperatura promedio** del día.
  2. Contar y mostrar cuántas mediciones fueron **"Heladas"** ($< 0^\circ\text{C}$) y cuántas **"Cálidas"** ($\ge 30^\circ\text{C}$).

#### Indicaciones:
* Utilizar `Scanner` para solicitar la cantidad de mediciones y `Random` para simular las temperaturas.
* Controlar entrada de datos y modularizar adecuadamente.

#### Preguntas sobre el problema:
a) Si se necesitara guardar el historial de todas las temperaturas para analizarlas nuevamente al final del programa, ¿alcanzaría con usar una única variable simple? Justifique.  
b) ¿Qué ocurriría si la cantidad de mediciones ingresada fuera igual a 0? ¿Cómo se calcula el promedio en ese caso y cómo debería reaccionar el programa?  
c) Si las mediciones aleatorias simuladas fueran: `-5`, `0`, `15` y `35`, sin ejecutar el programa, ¿cuál será el promedio? ¿Cuántas son "Heladas" y cuántas "Cálidas"?  
d) Ahora se desea conocer también la temperatura máxima y mínima registrada. ¿Qué variables necesitarías agregar y cómo afectaría esto a la lógica dentro del ciclo?  

---

### 🔹 Ejercicio 3: Rendimiento Académico de un Estudiante
Desarrollar un programa que calcule y clasifique el rendimiento de un estudiante en un examen.

#### Consigna:
* Solicitar: cantidad total de preguntas del examen y cantidad de respuestas correctas.
* Calcular el porcentaje de rendimiento:
  $$\text{Porcentaje} = \left(\frac{\text{Respuestas correctas}}{\text{Total de preguntas}}\right) \times 100$$
* Clasificar según las siguientes pautas:
  * $\ge 90\%$: **Excelente**
  * $70\%$ a $89.99\%$: **Muy Bueno**
  * $50\%$ a $69.99\%$: **Aprobado**
  * $< 50\%$: **Desaprobado**
* Mostrar el porcentaje calculado y la categoría obtenida.

#### Indicaciones:
* Utilizar `Scanner` con control de excepciones/errores e ingreso modularizado.

#### Preguntas sobre el problema:
a) ¿Qué validaciones se deben aplicar a las entradas? Considere la relación lógica entre preguntas totales y respuestas correctas.  
b) Si un estudiante obtiene un porcentaje de rendimiento de exactamente $89.995\%$, ¿qué categoría le corresponde de acuerdo al enunciado? ¿Qué acción se debería hacer para que el porcentaje sea justo $89.99\%$? ¿Por qué es importante probar valores justo en el límite de los tramos?  
c) Un compañero escribe la siguiente línea para calcular el porcentaje:
  ```java
  int porcentaje = (correctas / total) * 100;
  ```
  Si `correctas = 4` y `total = 5`, ¿qué resultado devuelve esa línea? ¿Constituye un error? Justifique.  

---

### 🔹 Ejercicio 4: Calculadora de Figuras Geométricas
Desarrollar una calculadora interactiva de áreas geométricas con menú de opciones.

#### Consigna:
* Mostrar un menú interactivo con las siguientes opciones:
  1. Área de Cuadrado
  2. Área de Triángulo
  3. Área de Círculo
  4. Salir
* Según la opción elegida, solicitar los datos requeridos (lado; base y altura; o radio).
* Calcular y mostrar el resultado del área.
* El menú debe repetirse tras cada operación hasta que el usuario elija la opción `4. Salir`.
* Si se ingresan dimensiones negativas, mostrar un mensaje de error sin realizar el cálculo.

#### Indicaciones:
* Utilizar `Scanner`, validar entradas no válidas o negativas y separar la lógica del menú de la lógica de los cálculos.

#### Preguntas sobre el problema:
a) Un compañero propone usar una estructura anidada `if-else if` para ejecutar las opciones del menú. Otro propone usar un `switch`. ¿Cuál solución es más fácil de explicar y mantener para este problema? ¿Qué ventajas y desventajas tiene cada una?  
b) ¿Qué sucede si el usuario ingresa una opción inexistente en el menú (ej. opción 9)? ¿Cómo debe manejarlo el programa?  
c) Si quisiéramos agregar la opción "5. Perímetro de Cuadrado", ¿el diseño modular actual facilita esta extensión? ¿Qué cambios serían necesarios?  

---

### 🔹 Ejercicio 5: Generación y Filtrado de Números Aleatorios
Desarrollar un programa que genere rangos aleatorios y evalúe divisibilidad.

#### Consigna:
* Generar de manera aleatoria tres números enteros:
  * `limiteInferior`: entre $1$ y $100$
  * `limiteSuperior`: entre $101$ y $200$
  * `divisor`: entre $2$ y $9$
* El programa debe:
  a) Mostrar los tres números generados inicialmente.  
  b) Generar y mostrar todos los números desde `limiteInferior` hasta `limiteSuperior` que sean divisibles exactamente por `divisor`.  
  c) Calcular y mostrar el **promedio entero** de los números que cumplieron con la condición de divisibilidad.

#### Indicaciones:
* Utilizar `Random` para los valores iniciales y `Scanner` si aplica. Modularizar la validación y el procesamiento.

#### Preguntas sobre el problema:
a) ¿Qué información debe mantenerse almacenada durante toda la ejecución del programa para poder calcular el promedio al final?  
b) Si `limiteInferior = 10`, `limiteSuperior = 20` y `divisor = 3`. Sin ejecutar el programa: ¿Qué números se mostrarán en pantalla? ¿Cuál será el promedio entero?  
c) ¿Qué ocurre si en el rango generado (por ejemplo, `limiteInferior=12`, `limiteSuperior=14`, `divisor=5`) ningún número es divisible? ¿Cómo se debe manejar el cálculo del promedio para evitar un error matemático de división por cero?  
d) En el ejercicio se pide el "promedio entero". Si la suma de los números es $15$ y la cantidad es $2$, ¿qué diferencia hay en Java entre usar tipos `int` o `double` para almacenar y mostrar este resultado?  

---

### 🔹 Ejercicio 6: Procesamiento de Cadenas de Texto
Desarrollar un programa que procese y analice nombres de ciudades y países.

#### Consigna:
* Solicitar al usuario el ingreso de:
  * Nombre de una **ciudad**.
  * Nombre de un **país**.
* Concatenar ambas cadenas separándolas por una coma y un espacio (ej: `"San Salvador de Jujuy, Argentina"`) y mostrar el resultado.
* Mostrar la cantidad de caracteres de ambas cadenas por separado.
* Comparar las longitudes e indicar cuál de las dos es más larga (o si son iguales).
* Verificar si el nombre de la ciudad contiene la letra **"ñ"** (o **"Ñ"**).
* Mostrar la cadena final concatenada completamente en minúsculas.

#### Indicaciones:
* Usar métodos de la clase `String` (`length()`, `contains()`, `toLowerCase()`, etc.) y manejar entradas vacías o con espacios adicionales.

#### Preguntas sobre el problema:
a) Al contar la cantidad de caracteres, ¿los espacios en blanco al principio o al final del texto ingresado por el usuario deberían contarse? ¿Qué método de la clase `String` podría usarse para limpiar esos espacios antes de contar?  
b) Un compañero propone comparar si las cadenas son iguales usando el operador `==` y otro usando el método `.equals()`. ¿Cuál de las dos representa mejor la comparación de textos en Java y por qué?  
c) ¿Qué sucede si el usuario no ingresa nada (presiona Enter directamente) en uno de los campos? ¿Qué longitud tendría la cadena?  
d) Un compañero escribe `if (ciudad.equals(pais))` para saber cuál es más larga. ¿Constituye esto un error de lógica respecto a lo que pide el enunciado? Explique cuál sería el método correcto a utilizar.  
