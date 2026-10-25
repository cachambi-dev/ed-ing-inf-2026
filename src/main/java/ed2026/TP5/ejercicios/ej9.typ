#import "../../template.typ": *

== 🔹 Ejercicio 9: Análisis de soluciones

Desarrollar un método estático externo que reciba una `SimpleLinkedList<Integer>` y devuelva la suma sin modificar el contenido ni el orden de la lista.

#caja_preguntas[
  + La solución con `for-each` recorre sin mutar la estructura y respeta mejor la consigna.
  + La solución que usa `removeFirst` y `addLast` deja el orden final igual, pero modifica temporalmente la estructura.
  + Compare claridad, uso de memoria y tiempo de ejecución de ambas alternativas.
]

```java
public static int sumarElementos(SimpleLinkedList<Integer> lista) {
    int suma = 0;
    for (Integer numero : lista) {
        suma += numero;
    }
    return suma;
}
```

#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))