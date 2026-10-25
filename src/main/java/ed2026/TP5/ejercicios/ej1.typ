#import "../../template.typ": *

== 🔹 Ejercicio 1: Inserción y eliminación por posición

Agregar a `SimpleLinkedList` métodos genéricos para insertar un elemento en una posición y eliminar el elemento ubicado en una posición. Controlar lista vacía y posiciones fuera de rango. Probarlos con objetos `Product`, mostrando la lista antes y después mediante un menú.

#caja_indicaciones[
  Usar `Scanner` o el helper del proyecto para validar los datos de entrada y separar la lógica de ingreso de la lógica de la lista.
]

#caja_preguntas[
  + ¿Por qué una lista enlazada debe recorrerse nodo por nodo para acceder a una posición?
  + ¿Qué ocurre al insertar en la posición `0` de una lista vacía y al eliminar en una posición igual al tamaño?
  + Si la lista es `[A, B, C]` e insertamos `D` en la posición `1`, ¿cómo quedan los enlaces?
  + ¿Por qué se debe guardar temporalmente el nodo siguiente antes de cambiar `next`?
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    Una lista enlazada no permite calcular la dirección de un nodo a partir de su índice. Para llegar a una posición hay que comenzar en `head` y seguir los enlaces `next`; en un arreglo, en cambio, el acceso se calcula directamente mediante el índice.
  ]
  #respuesta("b")[
    Insertar en la posición `0` de una lista vacía es válido: el nuevo nodo se convierte en `head` y `tail`. Eliminar en una posición igual al tamaño está fuera de rango y debe rechazarse con una excepción o un mensaje, sin modificar la lista.
  ]
  #respuesta("c")[
    La lista queda `[A, D, B, C]`. El nodo `A` pasa a apuntar a `D`, y `D` apunta al nodo que antes seguía a `A`, es decir, `B`.
  ]
  #respuesta("d")[
    Antes de cambiar el enlace del nodo actual se guarda su sucesor. De lo contrario, al asignar `actual.next = nuevo` se pierde la referencia al resto de la lista y los nodos siguientes quedan inaccesibles.
  ]

  El mockup carga tres productos antes de mostrar el menú, por lo que se pueden probar inmediatamente inserciones y eliminaciones. Las posiciones inválidas se informan sin finalizar el programa.
  #raw(read("../TP5_01.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))