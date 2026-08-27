#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 4
// -------------------------------------------------------------
== 🔹 Ejercicio 4: Calculadora de Figuras Geométricas (`Punto4.java`)

Desarrollar una calculadora interactiva de áreas geométricas con menú de opciones.

=== Consigna:
- Mostrar un menú interactivo con las siguientes opciones:
  + Área de Cuadrado
  + Área de Triángulo
  + Área de Círculo
  + Salir
- Según la opción elegida, solicitar los datos requeridos (lado; base y altura; o radio).
- Calcular y mostrar el resultado del área.
- El menú debe repetirse tras cada operación hasta que el usuario elija la opción `4. Salir`.
- Si se ingresan dimensiones negativas, mostrar un mensaje de error sin realizar el cálculo.

#caja_indicaciones[
  - Utilizar `Scanner`, validar entradas no válidas o negativas y separar la lógica del menú de la lógica de los cálculos.
]

#caja_preguntas[
  + *a)* Un compañero propone usar una estructura anidada `if-else if` para ejecutar las opciones del menú. Otro propone usar un `switch`. ¿Cuál solución es más fácil de explicar y mantener para este problema? ¿Qué ventajas y desventajas tiene cada una?
  + *b)* ¿Qué sucede si el usuario ingresa una opción inexistente en el menú (ej. opción 9)? ¿Cómo debe manejarlo el programa?
  + *c)* Si quisiéramos agregar la opción "5. Perímetro de Cuadrado", ¿el diseño modular actual facilita esta extensión? ¿Qué cambios serían necesarios?
]

#resolucion(titulo: "Resolución del Ejercicio 4")[
  #respuesta("a")[
    La estructura *`switch`* es la más adecuada, limpia y mantenible para este problema.
    - *Ventajas del `switch`:*
      - *Legibilidad:* Cada `case` se asocia directamente a una opción numérica concreta, haciendo el código directo y autoexplicativo.
      - *Mantenibilidad:* Permite agregar o remover opciones de forma aislada sin afectar la lógica de los demás casos.
      - *Manejo de errores centralizado:* La sección `default:` captura de forma natural cualquier opción fuera del rango.
      - *Desventaja:* Solo evalúa valores discretos exactos (enteros, caracteres, strings), no rangos ni condiciones booleanas compuestas.
    - *Ventajas del `if-else if`:* Permite evaluar condiciones complejas y rangos continuos (ej. $x > 10$ y $x < 20$).
    - *Desventajas del `if-else if`:* Resulta repetitivo y verboso para menús de opciones puntuales (`opcion == 1`, `opcion == 2`), aumentando la probabilidad de errores al anidar.
  ]

  #respuesta("b")[
    Si el usuario ingresa una opción no contemplada (ej. `9` o `-1`), el flujo se deriva a la cláusula *`default:`* del `switch` (o el bloque `else` final).
    - *Manejo correcto:* El programa debe advertir al usuario mediante un mensaje de error (ej: `"[Error] Ingrese una opción válida del menú"`), omitir cualquier cálculo y, al encontrarse dentro del ciclo interactivo (`while`), volver a presentar el menú automáticamente para un nuevo intento sin cerrarse abruptamente.
  ]

  #respuesta("c")[
    *Sí, el diseño modular facilita enormemente la extensión (Principio de Responsabilidad Única y Abierto/Cerrado).*
    Los cambios necesarios son mínimos y focalizados:
    1. *Actualizar menú:* En `ingresarOpcion`, agregar la línea `"5) Perímetro de Cuadrado"` y correr la opción de salida a `"6) Salir"`.
    2. *Crear el método modular de cálculo:*
       ```java
       private static double calcularPerimetroCuadrado(double lado) {
           return 4.0 * lado;
       }
       ```
    3. *Incorporar el nuevo caso en el `switch`:*
       ```java
       case 5:
           lado = leerEntradaValor(entrada, "Ingrese lado del cuadrado", 0.0);
           area = calcularPerimetroCuadrado(lado);
           mostrarResultado("Cuadrado (Perímetro)", area);
           break;
       ```
    4. Reutilizar las funciones ya existentes de lectura y visualización (`leerEntradaValor` y `mostrarResultado`) sin necesidad de duplicar código.
  ]

  *Código Fuente (`Punto4.java`):*
  #raw(read("../Punto4.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
