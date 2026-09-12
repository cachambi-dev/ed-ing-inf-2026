#import "../../template.typ": *

// -------------------------------------------------------------
// EJERCICIO 4
// -------------------------------------------------------------
== 🔹 Ejercicio 4: Gestión de Tickets de Soporte Técnico — Clase Ticket

Escribir un programa para gestionar una cola de tickets de soporte técnico. Cada ticket debe representarse mediante un objeto con los campos: `idTicket`, `departamento` (ej. `"Redes"`, `"Software"`, `"Hardware"`) y `nivelUrgencia` (entre 1 y 5).

=== Consigna:
- *a)* A partir de una cola que contiene $N$ tickets, generar una cola que contenga todos aquellos tickets cuyo departamento coincida con uno indicado por el usuario.
- *b)* Calcular el nivel promedio de urgencia de todos los tickets de la cola original.
- *c)* Identificar y mostrar (si existe) el primer ticket crítico de nivel 5.
- *d)* Generar un arreglo con los IDs de los tickets que tengan un nivel de urgencia 4 o 5.
- *e)* Cuando se recorran los elementos de la cola esta debe mantenerse sin modificaciones.

*En el programa principal (`main`) se debe:*
- *a)* Cargar al menos 5 tickets en la cola con datos ingresados por el usuario.
- *b)* Solicitar al usuario el departamento a filtrar y ejecutar las operaciones, mostrando claramente los resultados de cada punto.

#caja_indicaciones[
  - Este ejercicio necesita del objeto `Scanner` para ingresar datos por la consola o teclado, se espera que el código controle los problemas que normalmente ocurren al operar con la consola o teclado.
  - Se espera una correcta modularización entre el código que realiza el ingreso y validación de los datos respecto del código que hace lo que se solicita en el ejercicio.
]

#caja_preguntas[
  + *a)* En el punto (d), el tamaño del arreglo a devolver no se conoce de antemano. Dado que se debe recorrer la cola sin destruirla, ¿cómo se determina el tamaño del arreglo antes de empezar a llenarlo?
  + *b)* ¿Qué retorna el punto (c) si en la cola no existe ningún ticket de nivel 5? ¿Cómo se debe informar al usuario?
  + *c)* Si ahora se deseara modificar el atributo `nivelUrgencia` de los tickets (por ejemplo, sumarle 1 a la urgencia de todos los tickets), ¿Sería necesario desencolar y encolar los objetos, o se podría modificarlos directamente mientras se recorren?
  + *d)* Para resolver el punto (d) y generar el arreglo de IDs sin modificar la cola original, un compañero propone dar dos vueltas a la cola: la primera solo para contar cuántos tickets cumplen la condición (para poder crear el arreglo con ese tamaño exacto) y la segunda para llenarlo. Otro compañero propone dar una sola vuelta, agregando los IDs a un `ArrayList`. ¿Qué ventajas y desventajas presenta cada alternativa?
]

#resolucion(titulo: "Resolución del Ejercicio 4")[
  #respuesta("a")[
    Dado que en Java los arreglos estáticos tienen un tamaño inmutable una vez instanciados, para no sobredimensionar el arreglo (lo que dejaría posiciones con valor `null`), existen dos maneras principales de determinar su tamaño sin alterar la cola:
    + *Estrategia de dos pasadas (conteo previo):* Se recorre la cola una primera vez (usando un iterador o desencolando y reenviando a una cola auxiliar) únicamente para contar cuántos tickets tienen un `nivelUrgencia >= 4`. Luego, se crea el arreglo con la dimensión exacta calculada (`new String[contador]`) y se realiza una segunda pasada para llenarlo.
    + *Estructura dinámica intermedia:* Recorrer la cola en una sola pasada cargando los IDs en una lista dinámica (`ArrayList<String>`), y luego transferirlos a un arreglo estático de tamaño exacto mediante `.toArray(new String[0])` o recortando con `Arrays.copyOf()`.
  ]

  #respuesta("b")[
    - *Valor de retorno:* Si no existe ningún ticket de nivel 5, el método debería retornar `null` (o un valor centinela/`Optional.empty()`), señalando la ausencia del recurso. En la implementación de `TP4_04.java`, se devuelve un ticket instanciado por defecto (`new Ticket()`) con atributos vacíos.
    - *Información al usuario:* En el método principal (`main`), se debe verificar si el resultado retornado es nulo (o si su ID está vacío) antes de mostrarlo:
      ```java
      Ticket critico = getFirstTicketFiveUrgencyLevel(queueTickets);
      if (critico == null || critico.getIdTicket().isEmpty()) {
          System.out.println("No se encontraron tickets críticos de nivel 5.");
      } else {
          System.out.println("Primer ticket crítico encontrado: " + critico);
      }
      ```
      De este modo, se informa con claridad y se previene cualquier excepción por desreferenciación (`NullPointerException`).
  ]

  #respuesta("c")[
    - *Desde el modelo de objetos de Java:* Dado que los objetos en Java se gestionan por *referencia*, se pueden modificar directamente los atributos invocando los métodos setters (`t.setLevelUrgency(t.getLevelUrgency() + 1)`) a medida que se itera la cola, ya que la referencia apunta directamente al objeto ubicado en la memoria *heap*.
    - *Desde la abstracción pura del TDA Cola:* Si la estructura no expone un iterador o acceso indexado y solo permite las operaciones fundamentales (`add` / `poll`), es obligatorio desencolar cada elemento, aplicar la modificación a través del setter y reencolarlo al final. Para preservar el orden original y evitar un bucle infinito, dicho proceso debe limitarse estrictamente al tamaño inicial $N$ de la cola.
  ]

  #respuesta("d")[
    - *Alternativa 1: Dos vueltas a la cola (conteo y luego llenado)*
      - *Ventajas:* Respeta estrictamente el uso de estructuras estáticas primitivas sin incurrir en dependencias de colecciones externas; garantiza un consumo exacto de memoria para el arreglo final.
      - *Desventajas:* Duplica el costo temporal al realizar $2N$ accesos o desencolados/encolados sobre la cola ($O(2N)$), lo cual reduce la eficiencia si la cola maneja un gran volumen de datos.
    - *Alternativa 2: Una sola vuelta con `ArrayList`*
      - *Ventajas:* Requiere una única pasada ($O(N)$), haciendo el algoritmo más simple, legible y directo; agrega únicamente los elementos que satisfacen la condición sin calcular previamente el total.
      - *Desventajas:* Introduce una sobrecarga (*overhead*) de memoria y procesamiento asociada al crecimiento interno dinámico del arreglo de `ArrayList` (`grow`), además de requerir la importación de `java.util.ArrayList` y la posterior conversión a arreglo fijo.
  ]

  *Código Fuente (`Ticket.java`):*
  #raw(read("../Ticket.java"), lang: "java")

  *Código Fuente Principal (`TP4_04.java`):*
  #raw(read("../TP4_04.java"), lang: "java")
]

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
