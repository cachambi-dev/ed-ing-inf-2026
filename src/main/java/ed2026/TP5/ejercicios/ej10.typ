#import "../../template.typ": *

== 🔹 Ejercicio 10: Depuración de eliminación de pares

Analizar y corregir un método de `SimpleLinkedList` que elimina todos los números pares manipulando directamente los punteros `next`.

```java
public void eliminarPares() {
    if (this.count == 0) return;
    Node<ELEMENT> actual = this.head;
    while (actual != null) {
        if ((int) actual.item % 2 == 0) {
            actual.next = actual.next.next;
            this.count--;
        }
        actual = actual.next;
    }
}
  ```

#caja_preguntas[
  + El código no actualiza `head` cuando el primer nodo es par.
  + Accede a `actual.next.next` aunque el nodo par sea el último, provocando una excepción.
  + Avanza después de eliminar y puede saltar nodos consecutivos pares.
  + Para `[2, 4, 5]`, explique por qué la solución propuesta no elimina correctamente todos los pares.
]

#resolucion(titulo: "Criterio de corrección")[
  La solución debe tratar por separado los nodos iniciales pares y luego mantener un nodo anterior para enlazarlo con el siguiente nodo no par. También debe actualizar `tail` cuando se elimina el último nodo y decrementar `count` una sola vez por cada eliminación.
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))