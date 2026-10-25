#import "../../template.typ": *

== 🔹 Ejercicio 11: Análisis de búsqueda del mínimo

Se desea agregar a `BinarySearchTree<ELEMENT>` un método que devuelva el elemento mínimo de un árbol no vacío. Analizar las dos propuestas:

```java
public ELEMENT findMinA() {
    return findMinA(this.root);
}

private ELEMENT findMinA(BTNode<ELEMENT> node) {
    if (node == null) return null;
    ELEMENT minLeft = findMinA(node.left);
    ELEMENT minRight = findMinA(node.right);
    ELEMENT min = node.item;
    if (minLeft != null && minLeft.compareTo(min) < 0) min = minLeft;
    if (minRight != null && minRight.compareTo(min) < 0) min = minRight;
    return min;
}
```

```java
public ELEMENT findMinB() {
    if (this.root == null) return null;
    BTNode<ELEMENT> temp = this.root;
    while (temp.left != null) temp = temp.left;
    return temp.item;
}
```

#caja_preguntas[
  + ¿Cuál respeta mejor las propiedades del ABB?
  + ¿Cuál es más sencilla de explicar?
  + Compare recorrido, complejidad temporal y uso de memoria.
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))