# Solución — 2do Parcial (Estructura de Datos · 26/10/2026 · Tema 1)

---

## 1) Lista Simplemente Enlazada — `Pedido` (35 ptos)

Como la consigna trabaja con la interfaz `LinkedList<ELEMENT> extends Iterable<ELEMENT>` y `SimpleLinkedList<ELEMENT>` del **Cuadro A**, se utilizan únicamente las operaciones disponibles en esa definición (`Iterable`, `size()`, `addLast()`, `removeFirst()`), sin depender de métodos no declarados como `get(int)` o `remove(int)`.

### a) Total de montos de pedidos no cancelados de un barrio ingresado por el usuario

```java
import java.util.Scanner;

public static String ingresarBarrio() {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Ingrese el barrio: ");
    return scanner.nextLine();
}

public static float calcularTotalNoCanceladosPorBarrio(
        SimpleLinkedList<Pedido> linkedPedidos, String barrio) {
    float total = 0f;
    for (Pedido pedido : linkedPedidos) {
        if (!"Cancelado".equalsIgnoreCase(pedido.getEstado())
                && barrio.equalsIgnoreCase(pedido.getBarrio())) {
            total += pedido.getMonto();
        }
    }
    return total;
}
```

### b) Obtener una lista en la que se hayan eliminado los pedidos cancelados

```java
public static SimpleLinkedList<Pedido> obtenerPedidosSinCancelados(
        SimpleLinkedList<Pedido> linkedPedidos) {
    SimpleLinkedList<Pedido> listaSinCancelados = new SimpleLinkedList<Pedido>();
    for (Pedido pedido : linkedPedidos) {
        if (!"Cancelado".equalsIgnoreCase(pedido.getEstado())) {
            listaSinCancelados.addLast(pedido);
        }
    }
    return listaSinCancelados;
}
```

> **Alternativa modificando la lista original (in-place):** si se requiere eliminar los cancelados directamente sobre `linkedPedidos` usando solo `size()`, `removeFirst()` y `addLast()`:
>
> ```java
> public static SimpleLinkedList<Pedido> eliminarPedidosCancelados(
>         SimpleLinkedList<Pedido> linkedPedidos) {
>     int cantidad = linkedPedidos.size();
>     for (int i = 0; i < cantidad; i++) {
>         Pedido pedido = linkedPedidos.removeFirst();
>         if (!"Cancelado".equalsIgnoreCase(pedido.getEstado())) {
>             linkedPedidos.addLast(pedido);
>         }
>     }
>     return linkedPedidos;
> }
> ```

### c) Llamadas a los métodos en `main()`

```java
public static void main(String[] args) {
    SimpleLinkedList<Pedido> linkedPedidos = new SimpleLinkedList<Pedido>();

    String barrio = ingresarBarrio();
    float total = calcularTotalNoCanceladosPorBarrio(linkedPedidos, barrio);

    SimpleLinkedList<Pedido> listaSinCancelados = obtenerPedidosSinCancelados(linkedPedidos);
}
```

---

## 2) Extensión de `BinarySearchTree` — `getSubarbolIzquierdo()` (30 ptos)

Tomando como base la clase `BinarySearchTree<ELEMENT extends Comparable<ELEMENT>> extends BinaryTree<ELEMENT>` (que hereda el atributo `protected BTNode<ELEMENT> root` de `BinaryTree`), se incorpora el siguiente método dentro de `BinarySearchTree`:

```java
public BinarySearchTree<ELEMENT> getSubarbolIzquierdo() {
    if (this.root == null || this.root.left == null) {
        return null;
    }
    BinarySearchTree<ELEMENT> subarbol = new BinarySearchTree<ELEMENT>();
    subarbol.root = this.root.left;
    return subarbol;
}
```

> **Nota (copia independiente de nodos):** La implementación anterior enlaza `subarbol.root` en $O(1)$ de forma consistente con el constructor `BinaryTree(item, left, right)` visto en clases. Si además se quisiera evitar que modificaciones posteriores sobre el subárbol devuelto afecten al árbol original, se pueden clonar los nodos:
>
> ```java
> public BinarySearchTree<ELEMENT> getSubarbolIzquierdo() {
>     if (this.root == null || this.root.left == null) {
>         return null;
>     }
>     BinarySearchTree<ELEMENT> subarbol = new BinarySearchTree<ELEMENT>();
>     subarbol.root = clonarNodos(this.root.left);
>     return subarbol;
> }
>
> private BTNode<ELEMENT> clonarNodos(BTNode<ELEMENT> nodo) {
>     if (nodo == null) {
>         return null;
>     }
>     return new BTNode<ELEMENT>(nodo.item, clonarNodos(nodo.left), clonarNodos(nodo.right));
> }
> ```

---

## 3) Inserción en Árbol Binario de Búsqueda (ABB) (15 ptos)

**Secuencia a insertar:** `30, 28, 8, 13, 18, 58, 53, 38, 23, 46, 21, 57`

### Construcción gráfica paso a paso

1. **Insertar `30` (raíz):** `30`
2. **Insertar `28`** (`28 < 30` → izquierda de `30`)
3. **Insertar `8`** (`8 < 30`, `8 < 28` → izquierda de `28`)
4. **Insertar `13`** (`13 < 30`, `13 < 28`, `13 > 8` → derecha de `8`)
5. **Insertar `18`** (`... > 13` → derecha de `13`)
6. **Insertar `58`** (`58 > 30` → derecha de `30`)
7. **Insertar `53`** (`53 > 30`, `53 < 58` → izquierda de `58`)
8. **Insertar `38`** (`53 > 38` → izquierda de `53`)
9. **Insertar `23`** (`... > 18` → derecha de `18`)
10. **Insertar `46`** (`... > 38` → derecha de `38`)
11. **Insertar `21`** (`... < 23` → izquierda de `23`)
12. **Insertar `57`** (`... > 53` → derecha de `53`)

### Gráfico del ABB resultante

```text
             30
           /    \
         28      58
        /       /
       8       53
        \     /  \
        13   38   57
          \   \
          18   46
            \
            23
           /
          21
```

### Representación parentizada

*(Convención de `BinaryTree.toString()`: `raiz(izq,der)`, `raiz(izq)` si solo hay hijo izquierdo, `raiz(,der)` si solo hay hijo derecho)*

```text
30(28(8(,13(,18(,23(21))))),58(53(38(,46),57)))
```

### Recorrido Post Orden (`Izquierda → Derecha → Raíz`)

```text
21, 23, 18, 13, 8, 28, 46, 38, 57, 53, 58, 30
```

---

## 4) Inserción paso a paso en Árbol AVL (20 ptos)

**Secuencia a insertar:** `20, 12, 30, 41, 65, 23, 27, 38, 10, 13, 21, 28`

**Convención de factor de balance (según `AVLTree.java` de la cátedra):**
$$\text{balance} = h_{\text{derecha}} - h_{\text{izquierda}}$$
- `[-1]` (`[-]`): subárbol izquierdo más alto en 1 nivel.
- `[0]` (`[.]`): subárboles equilibrados.
- `[+1]` (`[+]`): subárbol derecho más alto en 1 nivel.
- `[-2]` o `[+2]`: desbalance que dispara una rotación.

---

### Paso 1: Insertar `20`

```text
20[0]
```

### Paso 2: Insertar `12`

```text
    20[-1]
   /
12[0]
```

### Paso 3: Insertar `30`

```text
    20[0]
   /     \
12[0]    30[0]
```

### Paso 4: Insertar `41`

```text
    20[+1]
   /      \
12[0]    30[+1]
             \
             41[0]
```

### Paso 5: Insertar `65` → **Rotación Simple `RR`**

Al insertar `65` a la derecha de `41`, el nodo `30` queda con balance `+2` y su hijo derecho `41` tiene balance `+1` (mismo signo → **Rotación Simple `RR`** en `30`).

*Antes de rotar:*
```text
    20[+1]
   /      \
12[0]    30[+2]  <-- desbalance en 30 (n=30, n1=41[+1]) -> RR
             \
             41[+1]
                 \
                 65[0]
```

*Después de la Rotación Simple `RR` en `30`:*
```text
     20[+1]
    /      \
12[0]      41[0]
          /     \
       30[0]    65[0]
```

### Paso 6: Insertar `23` → **Rotación Doble `RL`**

Al insertar `23` a la izquierda de `30`, el nodo `20` queda con balance `+2`, su hijo derecho `41` con balance `-1` y el nieto `30` con balance `-1` (signos opuestos → **Rotación Doble `RL`** en `20`).

*Antes de rotar:*
```text
       20[+2]  <-- desbalance en 20 (n=20, n1=41[-1], n2=30[-1]) -> RL
      /      \
  12[0]      41[-1]
            /      \
         30[-1]    65[0]
        /
     23[0]
```

*Después de la Rotación Doble `RL` en `20`:*
```text
          30[0]
        /       \
    20[0]       41[+1]
   /     \          \
12[0]   23[0]       65[0]
```

### Paso 7: Insertar `27`

```text
          30[-1]
        /        \
    20[+1]       41[+1]
   /      \          \
12[0]    23[+1]      65[0]
             \
             27[0]
```

### Paso 8: Insertar `38`

```text
          30[-1]
        /        \
    20[+1]        41[0]
   /      \      /     \
12[0]    23[+1] 38[0]  65[0]
             \
             27[0]
```

### Paso 9: Insertar `10`

```text
             30[-1]
           /        \
       20[0]         41[0]
      /     \       /     \
  12[-1]   23[+1] 38[0]   65[0]
 /             \
10[0]          27[0]
```

### Paso 10: Insertar `13`

```text
             30[-1]
           /        \
       20[0]         41[0]
      /     \       /     \
  12[0]    23[+1] 38[0]   65[0]
 /     \       \
10[0] 13[0]    27[0]
```

### Paso 11: Insertar `21`

```text
             30[-1]
           /        \
       20[0]         41[0]
      /     \       /     \
  12[0]     23[0] 38[0]   65[0]
 /     \   /     \
10[0] 13[0] 21[0] 27[0]
```

### Paso 12: Insertar `28` → **Rotación Doble `LR`**

Al insertar `28` a la derecha de `27`, el nodo `30` queda con balance `-2`, su hijo izquierdo `20` con balance `+1` y el nieto `23` con balance `+1` (signos opuestos → **Rotación Doble `LR`** en `30`).

*Antes de rotar:*
```text
                 30[-2]  <-- desbalance en 30 (n=30, n1=20[+1], n2=23[+1]) -> LR
               /        \
          20[+1]         41[0]
         /      \       /     \
     12[0]     23[+1] 38[0]   65[0]
    /     \    /    \
  10[0] 13[0] 21[0] 27[+1]
                        \
                        28[0]
```

*Después de la Rotación Doble `LR` en `30` (Árbol AVL final):*
```text
                    23[0]
                 /         \
            20[-1]          30[0]
           /      \        /      \
       12[0]     21[0]  27[+1]    41[0]
      /     \              \     /     \
   10[0]   13[0]          28[0] 38[0]  65[0]
```

**Representación parentizada final (con factores de balance):**
- Numérica: `23[0](20[-1](12[0](10[0], 13[0]), 21[0]), 30[0](27[+1](, 28[0]), 41[0](38[0], 65[0])))`
- Notación `AVLTree.toString()`: `23[.](20[-](12[.](10[.], 13[.]), 21[.]), 30[.](27[+](, 28[.]), 41[.](38[.], 65[.])))`

### Resumen de rotaciones realizadas

- **Cantidad total:** **3 rotaciones**
  1. **Rotación Simple `RR`** en el nodo `30` (al insertar `65`).
  2. **Rotación Doble `RL`** en el nodo `20` (al insertar `23`).
  3. **Rotación Doble `LR`** en el nodo `30` (al insertar `28`).
