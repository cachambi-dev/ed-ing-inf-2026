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

#resolucion(titulo: "Respuestas")[
    #respuesta("a")[
        La solución B respeta mejor las propiedades del ABB: el mínimo siempre está en el camino más a la izquierda, por lo que no necesita recorrer subárboles que no pueden contenerlo. La solución A funciona como recorrido general, pero hace trabajo innecesario.
    ]
    #respuesta("b")[
        La solución B es más fácil de explicar: comenzar en la raíz y avanzar por `left` hasta encontrar el último nodo izquierdo. Es una traducción directa de la propiedad del ABB.
    ]
    #respuesta("c")[
        A visita todos los nodos y usa recursión, con tiempo $O(n)$ y memoria $O(h)$. B visita solo la altura del árbol, con tiempo $O(h)$ y memoria $O(1)$. En un ABB equilibrado B cuesta $O(log n)$; en el peor caso degenerado cuesta $O(n)$.
    ]
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))