#import "../../template.typ": *

== 🔹 Ejercicio 7: Cola de pedidos

Implementar una `Queue<ELEMENT>` usando internamente una `SimpleLinkedList<ELEMENT>`. Cargar `N` números aleatorios entre `0` y `50`; el cero representa un pedido cancelado. Procesar la cola para conservar solo pedidos válidos en el mismo orden y calcular su promedio, evitando la división por cero.

#caja_preguntas[
  + ¿Qué diferencia hay entre una cola enlazada y una cola circular de arreglo respecto de capacidad y `head`/`tail`?
  + Para `[5, 0, 8, 0, 9]`, ¿qué queda luego de eliminar cancelaciones?
  + ¿Qué problema aparece si se reencola directamente en la cola original durante el cálculo?
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))