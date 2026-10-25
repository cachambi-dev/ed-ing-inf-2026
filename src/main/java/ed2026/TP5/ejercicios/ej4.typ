#import "../../template.typ": *

== 🔹 Ejercicio 4: Gestor de tareas

Crear `Tarea` con `idTarea`, `titulo`, `responsable`, `fechaLimite` y `completada`. Implementar en `GestorTareas` los métodos para agregar, completar, eliminar, filtrar por responsable, mostrar pendientes y obtener tareas próximas. Probarlos mediante un menú con al menos cinco tareas.

#caja_preguntas[
  + ¿Por qué se necesita el nodo anterior al eliminar en una lista simple?
  + ¿Cómo debe manejarse un identificador inexistente?
  + ¿Por qué conviene crear una lista nueva de pendientes en vez de destruir la original?
  + ¿Es válido modificar `completada` del objeto mientras se recorre la lista?
]

#resolucion(titulo: "Respuestas y código")[
  #respuesta("a")[
    En una lista simple, para eliminar un nodo intermedio se necesita hacer que el nodo anterior apunte al siguiente del nodo eliminado. El nodo actual por sí solo no permite modificar el enlace que llega desde atrás.
  ]
  #respuesta("b")[
    Si el identificador no existe, el gestor no debe lanzar un error ni modificar la lista. La operación termina sin cambios y el programa puede informar que la tarea no fue encontrada.
  ]
  #respuesta("c")[
    Crear una lista nueva de pendientes conserva los datos originales del cliente. El método implementado devuelve esa lista nueva y deja intacta la lista principal.
  ]
  #respuesta("d")[
    Sí. `getCompletada()` devuelve un valor booleano y `setCompletada(true)` modifica el objeto almacenado, no la estructura de enlaces. Es válido mientras esa mutación sea parte de la operación solicitada.
  ]

  El mockup carga diez tareas con responsables repetidos y fechas relativas al día actual. El gestor elimina directamente por índice, devuelve pendientes sin destruir la lista y filtra tareas futuras por responsable.
  #raw(read("../TP5_04.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))