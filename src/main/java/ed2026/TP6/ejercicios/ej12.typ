#import "../../template.typ": *

== 🔹 Ejercicio 12: Depuración del porcentaje de hojas

Analizar desde una clase externa `AnalizadorEstructura` el porcentaje de hojas respecto del total de nodos de un `BinarySearchTree<Integer>`, utilizando la clase `BinaryTree` provista.

```java
public static double calcularPorcentajeHojas(BinarySearchTree<Integer> arbol) {
    if (arbol == null) return 0.0;

    int hojas = arbol.LeafCount();
    int nodos = arbol.NodeCount();

    if (nodos = 0) return 0.0;
    return (hojas / nodos) * 100;
}
```

#caja_preguntas[
  + Identifique los errores de sintaxis, lógicos y conceptuales.
  + Explique la diferencia entre asignación y comparación en el `if`.
  + ¿Por qué la división entera no devuelve porcentajes decimales?
  + ¿Qué representa `NodeCount()` frente a `size()`?
  + ¿Qué devolvería exactamente con tres nodos, dos de ellos hojas?
]

#resolucion(titulo: "Análisis y corrección")[
  #respuesta("a")[
    Hay tres errores principales: `if (nodos = 0)` usa asignación en vez de comparación; `(hojas / nodos)` realiza división entera porque ambas variables son `int`; y `NodeCount()` cuenta los nodos del árbol, mientras que `size()` no es la operación apropiada para `BinarySearchTree`.
  ]
  #respuesta("b")[
    La asignación no constituye una condición booleana válida en Java. Además, la división entera descarta la parte decimal antes de multiplicar por `100`, y el árbol no expone un `size()` de lista que deba usarse en este cálculo.
  ]
  #respuesta("c")[
    Con 3 nodos y 2 hojas, una versión que compilara y usara división entera devolvería `0`, porque `2 / 3` se trunca a `0`. La solución propuesta ni siquiera compila por la asignación dentro del `if`.
  ]
  #respuesta("d")[
    La corrección valida `arbol == null`, calcula el total con `NodeCount()`, evita dividir por cero y convierte al menos un operando a `double` antes de dividir.
  ]
]

#resolucion(titulo: "Una corrección posible")[
```java
public static double calcularPorcentajeHojas(BinarySearchTree<Integer> arbol) {
    if (arbol == null) return 0.0;

    int hojas = arbol.LeafCount();
    int nodos = arbol.NodeCount();
    if (nodos == 0) return 0.0;

    return ((double) hojas / nodos) * 100.0;
}
```
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))