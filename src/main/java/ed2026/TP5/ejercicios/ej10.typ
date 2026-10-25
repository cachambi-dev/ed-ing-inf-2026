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
  + Analice los errores de punteros, nodos y contador.
  + ¿Qué ocurre cuando el primer elemento es par o cuando el nodo par es el último?
  + ¿Por qué avanzar después de eliminar puede saltear nodos?
  + Para `[2, 4, 5]`, explique por qué la solución propuesta no elimina correctamente todos los pares.
]

#resolucion(titulo: "Criterio de corrección")[
  #respuesta("a")[
    `actual.next = actual.next.next` elimina el sucesor, no `actual`. Si el primer nodo es par, nunca se actualiza `head`; si el nodo par es el último, `actual.next` es `null` y se produce una excepción. Además, después de eliminar se avanza y pueden quedar pares consecutivos sin revisar. Tampoco se actualiza `tail`.
  ]
  #respuesta("b")[
    La referencia al nodo anterior permite enlazarlo con el siguiente del nodo eliminado. Cuando se eliminan nodos iniciales, se debe mover `head`; cuando se elimina el último, se debe mover `tail`. El contador debe decrementar exactamente una vez por cada nodo retirado.
  ]
  #respuesta("c")[
    Con `[2, 4, 5]`, la solución intenta saltar desde el nodo `2` hacia `4`, deja el `2` en la cabeza y puede terminar lanzando una excepción al llegar al último par. No produce la lista correcta `[5]`.
  ]

  La implementación corregida procesa primero los pares de `head`, conserva un nodo anterior para los demás casos y no avanza cuando elimina, de modo que también resuelve pares consecutivos.
  #raw(read("../SimpleLinkedList.java"), lang: "java")
  #raw(read("../TP5_10.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))