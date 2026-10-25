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