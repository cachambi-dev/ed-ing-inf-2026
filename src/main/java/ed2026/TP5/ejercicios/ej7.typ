#import "../../template.typ": *

== 🔹 Ejercicio 7: Cola de pedidos

Implementar una `Queue<ELEMENT>` usando internamente una `SimpleLinkedList<ELEMENT>`. Cargar `N` números aleatorios entre `0` y `50`; el cero representa un pedido cancelado. Procesar la cola para conservar solo pedidos válidos en el mismo orden y calcular su promedio, evitando la división por cero.

#caja_preguntas[
  + ¿Qué diferencia hay entre una cola enlazada y una cola circular de arreglo respecto de capacidad y `head`/`tail`?
  + Para `[5, 0, 8, 0, 9]`, ¿qué queda luego de eliminar cancelaciones?
  + ¿Qué problema aparece si se reencola directamente en la cola original durante el cálculo?
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    Una cola enlazada no tiene una capacidad máxima fija: crece mientras haya memoria disponible. No necesita índices `head` y `tail`; la lista administra `head`, `tail` y `count`. Por eso no se considera llena por alcanzar un límite del arreglo.
  ]
  #respuesta("b")[
    Para `[5, 0, 8, 0, 9]`, la cola auxiliar queda `[5, 8, 9]`, manteniendo el orden de llegada.
  ]
  #respuesta("c")[
    Si se desencola y se vuelve a encolar directamente en la cola original mientras se recorre, los elementos podrían volver a procesarse indefinidamente o mezclarse con los que aún no fueron examinados. La cola auxiliar permite procesar cada pedido una sola vez.
  ]
  #respuesta("d")[
    El promedio se calcula recorriendo la cola sin desencolar. Si se desencola, hay que reconstruirla con una cola final para no alterar su orden.
  ]

  `Queue` usa internamente `SimpleLinkedList`; el mockup contiene cancelaciones y pedidos válidos para probar el filtrado.
  #raw(read("../Queue.java"), lang: "java")
  #raw(read("../TP5_07.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))