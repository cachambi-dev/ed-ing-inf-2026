#import "../../template.typ": *

== 🔹 Ejercicio 9: Análisis de soluciones

Desarrollar un método estático externo que reciba una `SimpleLinkedList<Integer>` y devuelva la suma sin modificar el contenido ni el orden de la lista.

#caja_preguntas[
  + ¿Cuál solución respeta mejor la restricción de no modificar la lista?
  + ¿Cuál es más fácil de explicar?
  + Compare claridad, uso de memoria y tiempo de ejecución.
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    La solución A respeta mejor la consigna porque solo usa el iterador público y no modifica ni temporal ni permanentemente la estructura. La solución B rota la lista mediante `removeFirst` y `addLast`; aunque termina con el mismo orden, sí modifica la estructura durante el proceso.
  ]
  #respuesta("b")[
    La solución A es más sencilla: el `for-each` expresa directamente que se visita cada elemento. La solución B exige controlar el tamaño original y demostrar que la rotación restaura el orden.
  ]
  #respuesta("c")[
    A tiene tiempo $O(n)$ y memoria auxiliar $O(1)$, suponiendo que el iterador recorre enlaces. B también realiza $O(n)$ operaciones si `removeFirst` y `addLast` son constantes, pero modifica la estructura temporalmente y es más difícil de razonar. Por eso A es preferible.
  ]

  El programa separado usa un mockup `{4, -2, 8, 5, 1}` y verifica que la lista conserve su contenido y orden.
  #raw(read("../TP5_09.java"), lang: "java")
]

```java
public static int sumarElementos(SimpleLinkedList<Integer> lista) {
    int suma = 0;
    for (Integer numero : lista) {
        suma += numero;
    }
    return suma;
}
```

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))