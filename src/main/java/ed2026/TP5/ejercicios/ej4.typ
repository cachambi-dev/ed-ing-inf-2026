#import "../../template.typ": *

== 🔹 Ejercicio 4: Gestor de tareas

Crear `Tarea` con `idTarea`, `titulo`, `responsable`, `fechaLimite` y `completada`. Implementar en `GestorTareas` los métodos para agregar, completar, eliminar, filtrar por responsable, mostrar pendientes y obtener tareas próximas. Probarlos mediante un menú con al menos cinco tareas.

#caja_preguntas[
  + ¿Por qué se necesita el nodo anterior al eliminar en una lista simple?
  + ¿Cómo debe manejarse un identificador inexistente?
  + ¿Por qué conviene crear una lista nueva de pendientes en vez de destruir la original?
  + ¿Es válido modificar `completada` del objeto mientras se recorre la lista?
]

#resolucion(titulo: "Implementación")[
  El programa correspondiente se encuentra en `TP5_04.java`.
  #raw(read("../TP5_04.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))