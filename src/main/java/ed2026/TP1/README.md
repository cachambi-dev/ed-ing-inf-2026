# 📝 Trabajo Práctico N° 1: Programación Orientada a Objetos (POO)

**Materia:** Estructura de Datos  
**Ciclo Lectivo:** 2026  
**Carreras:** Ingeniería Informática — Licenciatura en Sistemas  
**Institución:** Facultad de Ingeniería – Universidad Nacional de Jujuy  

---

## 🎯 Objetivos y Contexto

El trabajo práctico permite que el estudiante conozca y aplique conceptos básicos de la **Programación Orientada a Objetos (POO)** en Java.

Para la resolución de los ejercicios se requiere el desarrollo de clases sencillas (modelado de datos, atributos, constructores, getters/setters, encapsulamiento y métodos del dominio) y la manipulación adecuada de instancias (objetos) desde el método principal (`main`).

---

## 📌 Ejercicios Propuestos

### 🔹 Ejercicio 1: Figura Geométrica 3D — Clase `Cilindro` ([Cilindro.java](./src/puntos/p1/Cilindro.java))
Diseñar una clase llamada `Cilindro` que representa una figura geométrica tridimensional.

#### Consigna:
* **Atributos:** `radio` (de la base) y `altura` (de tipo `double`).
* **Métodos a incluir:**
  a) Constructor predeterminado que inicialice ambos valores en `1.0`.  
  b) Constructor parametrizado para establecer el radio y la altura del cilindro.  
  c) Método `getVolumen()`: 
     $$\text{Volumen} = \pi \times \text{radio}^2 \times \text{altura}$$
  d) Método `getAreaSuperficie()`: 
     $$\text{Área Superficie Total} = 2 \times \pi \times \text{radio} \times (\text{radio} + \text{altura})$$
* **Programa principal (`main`):**
  e) Crear una única instancia de la clase `Cilindro`.  
  f) Solicitar al usuario ingresar radio y altura verificando que los valores sean estrictamente positivos ($> 0$).  
  g) Utilizar los métodos de la clase `Cilindro` para establecer estas dimensiones.  
  h) Calcular y mostrar el volumen y el área de la superficie del cilindro creado, formateando los decimales a dos cifras.

#### Indicaciones:
* Usar `Scanner` para ingresar datos por consola, garantizando el control de excepciones e ingreso de datos.
* Modularizar correctamente el ingreso y validación respecto a la lógica del dominio.

#### Preguntas sobre el problema:
a) ¿Cuáles son las entradas y salidas del programa? ¿Qué información debe mantenerse almacenada en el objeto durante toda la ejecución y qué información es sólo temporal?  
b) ¿Qué ocurre si el usuario intenta ingresar un radio o altura igual a cero o a un valor negativo? ¿Cómo garantiza su código que el objeto `Cilindro` nunca contenga dimensiones inválidas?  
c) Compruebe el comportamiento de un objeto cilindro cuando se usan: valores positivos, valores que intenten vulnerar la validación (por ej. valor negativo) y cuando el radio y la altura son iguales.  
d) ¿Qué ventajas tiene implementar los cálculos de volumen y área como métodos en la clase `Cilindro` en lugar de hacer las operaciones matemáticas directamente en el método `main`?  

---

### 🔹 Ejercicio 2: Gestión de Cuenta Bancaria — Clase `CuentaBancaria`
Crear una clase llamada `CuentaBancaria` que modele una cuenta bancaria.

#### Consigna:
* **Atributos:** `titular` (String), `saldo` (double) y `tipoCuenta` (String, "ahorro" o "corriente").
* **Métodos a implementar:**
  a) Constructor predeterminado: inicializa `titular` en `"Invitado"`, `saldo` en `0` y `tipoCuenta` en `"ahorro"`.  
  b) Constructor parametrizado: establece `titular`, `saldoInicial` y `tipoCuenta`.  
  c) `depositar(double monto)`: simula adición de fondos. Debe validar que el monto sea estrictamente positivo ($> 0$).  
  d) `retirar(double monto)`: simula extracción de dinero. Disminuye el saldo y retorna `true` si es exitosa. Si el monto excede el saldo disponible, no realiza la extracción, muestra un mensaje de error por consola y retorna `false`.  
  e) `toString()`: imprime en consola el titular, tipo de cuenta y saldo actual formateado.  
* **Programa principal (`main`):**
  f) Crear una instancia de `CuentaBancaria`.  
  g) Inicializar la cuenta con datos iniciales (ej. `"Juan Perez"`, `50000.0`, `"corriente"`).  
  h) Permitir al usuario, mediante un menú interactivo, realizar operaciones de depósito o retiro, mostrando los detalles actualizados tras cada operación hasta que elija salir.

#### Indicaciones:
* Validar ingresos de usuario y mantener clara separación entre la consola (E/S) y la lógica de la cuenta.

#### Preguntas sobre el problema:
a) ¿Por qué es conveniente que el atributo `saldo` sea privado y no se pueda modificar directamente desde el método `main` (ej. `cuenta.saldo = 1000000;`)? ¿Qué garantiza el uso de los métodos `depositar` y `retirar`?  
b) Un compañero propone que el método `retirar` sea de tipo `void` (sin retorno) y que solo muestre un mensaje de error si falla. Otro propone que retorne un `boolean` como pide el enunciado. ¿Qué ventajas y desventajas presenta cada alternativa? ¿Cuál solución permite que se tomen mejores decisiones?  
c) ¿Qué sucede si el usuario intenta retirar exactamente el mismo monto que tiene de saldo disponible? ¿Y si intenta depositar un monto negativo?  
d) El banco ahora pide agregar un límite de descubierto para las cuentas "corriente". Es decir, si es de tipo corriente, el saldo puede llegar a ser negativo hasta un límite (ej. $-50.000$). ¿Qué método de la clase debería modificar y qué nueva validación debería agregar?  

---

### 🔹 Ejercicio 3: Sistema de Gestión de Reservas de Hotel — Clase `Reserva`
Desarrollar un programa que simule la gestión de una reserva de hotel con fechas de check-in y check-out.

#### Consigna:
* **Atributos:** `codigoReserva` (String único), `nombreHuesped` (String), `fechaCheckIn` (`LocalDate`), `fechaCheckOut` (`LocalDate`).
* **Métodos a implementar:**
  a) Definir la clase con los atributos anteriores.  
  b) Constructor predeterminado: `codigoReserva = "000"`, `nombreHuesped = "Por confirmar"`, `fechaCheckIn = LocalDate.now()`, `fechaCheckOut = LocalDate.now().plusDays(1)`.  
  c) Constructor parametrizado que establece todos los atributos mediante argumentos.  
  d) `toString()`: retorna una representación textual completa y legible del objeto `Reserva`.  
  e) Método auxiliar de validación de fechas: comprueba si la fecha de check-in es estrictamente anterior a la de check-out. Si no son válidas, ajusta automáticamente asignando la fecha actual al check-in y el día siguiente al check-out.  
  f) `estaActiva(LocalDate fechaConsulta)`: determina si la reserva está vigente en una fecha dada. Retorna `true` si `fechaConsulta` $\ge$ `fechaCheckIn` y $<$ `fechaCheckOut`.  
  g) `calcularDiasRestantesOTranscurridos(LocalDate fechaConsulta)`:
     * Si `fechaConsulta` es anterior al check-in: retorna un valor positivo (días faltantes para el check-in).  
     * Si `fechaConsulta` está dentro de la estadía: retorna `0`.  
     * Si `fechaConsulta` es posterior al check-out: retorna un valor negativo (días transcurridos desde el check-out hasta la fecha de consulta).  
  h) `simularProrroga(int cantidadDias)`: calcula y retorna la nueva fecha de check-out si la estadía se extendiera por una cantidad específica de días a partir de la fecha de check-out actual.  
* **Programa principal (`main`):**
  i) Solicitar datos para crear al menos dos objetos `Reserva` diferentes (una reserva futura y una reserva ya finalizada).  
  j) Solicitar al usuario una "fecha de consulta" (día, mes, año) validada.  
  k) Mostrar detalles con `toString()`.  
  l) Consultar vigencia con `estaActiva()`.  
  m) Consultar días faltantes o transcurridos con `calcularDiasRestantesOTranscurridos()`.  
  n) Solicitar una cantidad de días para simular una prórroga y mostrar la nueva fecha de check-out calculada.

#### Preguntas sobre el problema:
a) ¿Por qué se pide que la validación de fechas sea un "método auxiliar" dentro de la clase `Reserva`? ¿Qué ocurriría si esa validación se hiciera en el método `main` antes de llamar al constructor?  
b) ¿Qué sucede si el usuario ingresa la misma fecha para check-in y check-out? Según la regla del inciso (e), ¿qué debería ocurrir con el objeto?  
c) Si una reserva tiene `fechaCheckIn = 2025-05-01` y `fechaCheckOut = 2025-05-05`, y el usuario ingresa `fechaConsulta = 2025-05-03`. Sin ejecutar el programa: ¿El método `estaActiva` retorna `true` o `false`? ¿Qué valor exacto retorna `calcularDiasRestantesOTranscurridos`?  
d) Un compañero escribe el método `simularProrroga` de la siguiente manera:
  ```java
  return this.fechaCheckOut.plusDays(cantidadDias);
  ```
  ¿Esta línea constituye un error de lógica respecto al principio de encapsulamiento o inmutabilidad? ¿Modifica el estado real del objeto o solo devuelve un cálculo? Argumente si esto cumple con lo solicitado en el inciso (h).  

---

### 🔹 Ejercicio 4: Ficha de Salud e IMC — Clase `Paciente`
Desarrollar una clase llamada `Paciente` para gestionar información de salud básica.

#### Consigna:
* **Atributos:** `nombre` (String), `dni` (String), `peso` (en kg, `double`), `altura` (en metros, `double`).
* **Métodos a implementar:**
  a) Getters y setters para todos los atributos.  
  b) `calcularIMC()`: calcula y devuelve el Índice de Masa Corporal:
     $$\text{IMC} = \frac{\text{peso}}{\text{altura}^2}$$
  c) `obtenerEstadoNutricional()`: devuelve un `String` según el IMC calculado:
     * $\text{IMC} < 18.5$: `"Bajo peso"`  
     * $18.5 \le \text{IMC} \le 24.9$: `"Normal"`  
     * $25.0 \le \text{IMC} \le 29.9$: `"Sobrepeso"`  
     * $\text{IMC} \ge 30.0$: `"Obesidad"`  
* **Programa principal (`main`):**
  d) Crear una instancia de `Paciente`.  
  e) Solicitar al usuario ingresar nombre, DNI, peso y altura, validando que peso y altura sean valores numéricos positivos ($> 0$).  
  f) Utilizar los setters de la clase `Paciente` para asignar los valores.  
  g) Mostrar el nombre del paciente, DNI, IMC formateado a dos decimales y su estado nutricional.

#### Preguntas sobre el problema:
a) Al diseñar la clase, ¿el IMC debería ser un atributo (ej. `double imc;`) o solo el resultado de un método de cálculo (ej. `calcularIMC()`)? Tenga en cuenta que inicialmente el peso puede recibir un valor, pero luego se puede invocar al setter para cambiarlo.  
b) Encontrar valores de peso y altura tales que los cálculos de IMC correspondientes sean iguales a $24.9$ y a $25.0$. ¿Qué estado nutricional se obtiene en cada caso? ¿Por qué es crucial probar estos límites en las estructuras condicionales?  
c) Un compañero escribe la validación de la altura de una persona en el método `main` de esta manera:
  ```java
  if (altura > 0) {
      paciente.setAltura(altura);
  }
  ```
  Sin embargo, más tarde descubre que usando los setters de forma directa alguien pudo asignarle una altura de `-2` al objeto. ¿Qué falta en el diseño de la clase `Paciente` para garantizar que sus atributos NUNCA tengan valores negativos sin importar quién use la clase? Argumente sobre cómo deberían ser los métodos setter.  

---

### 🔹 Ejercicio 5: Análisis de Código y Encapsulamiento — Clase `Bateria`
Leer atentamente el enunciado y analizar las dos soluciones propuestas.

#### Enunciado:
Diseñar una clase llamada `Bateria` que representa la carga de un dispositivo. La clase debe tener un atributo para el porcentaje de carga (entero entre $0$ y $100$). Debe permitir cargar la batería (sumando porcentaje, sin superar $100$) y consumir batería (restando porcentaje, sin bajar de $0$). En el programa principal, se debe crear una batería con $50\%$ de carga, consumir $60$ unidades (lo que debería dejarla en $0\%$) y mostrar el estado final.

#### Comparativa de Soluciones:

```java
// ❌ Solución A (Sin encapsulamiento)
class Bateria {
    public int carga;

    public Bateria(int cargaInicial) {
        if (cargaInicial < 0) cargaInicial = 0;
        if (cargaInicial > 100) cargaInicial = 100;
        this.carga = cargaInicial;
    }

    public void consumir(int cantidad) {
        this.carga = this.carga - cantidad;
    }
}

public class Main {
    public static void main(String[] args) {
        Bateria b = new Bateria(50);
        // Consumir 60 validando fuera de la clase
        if (b.carga - 60 < 0) {
            b.carga = 0;
        } else {
            b.carga = b.carga - 60;
        }
        System.out.println("Carga final: " + b.carga + "%");
    }
}
```

```java
// ✅ Solución B (Con encapsulamiento robusto)
class Bateria {
    private int carga;

    public Bateria(int cargaInicial) {
        if (cargaInicial < 0) cargaInicial = 0;
        if (cargaInicial > 100) cargaInicial = 100;
        this.carga = cargaInicial;
    }

    public void consumir(int cantidad) {
        this.carga -= cantidad;
        if (this.carga < 0) {
            this.carga = 0;
        }
    }

    public int getCarga() {
        return this.carga;
    }
}

public class Main {
    public static void main(String[] args) {
        Bateria b = new Bateria(50);
        b.consumir(60);
        System.out.println("Carga final: " + b.getCarga() + "%");
    }
}
```

#### Preguntas sobre el problema:
1. ¿Cuál de las dos soluciones representa mejor los principios de la Programación Orientada a Objetos estudiados? Justifique su respuesta haciendo referencia al concepto de **encapsulamiento**.  
2. Si tuvieras que explicar por qué la **Solución B** es un mejor diseño de software a un compañero que recién empieza a programar, ¿qué argumentos le darías?  
3. El enunciado pide que el valor "no baje de 0". ¿Cuál de las dos soluciones respeta mejor esta restricción de manera robusta? ¿Qué sucede en la *Solución A* si en el futuro otro programador escribe `b.consumir(200)` sin incluir una estructura selectiva `if` en el método `main`? ¿Y qué sucede en la *Solución B* en ese mismo caso?  
4. Identificar al menos una ventaja de la *Solución A* y una ventaja de la *Solución B*. Luego, explicar por qué la *Solución B* puede ser más valiosa en un sistema de software real que puede crecer en el futuro.  

---

### 🔹 Ejercicio 6: Corrección y Refactorización — Clase `TanqueAgua`
Leer atentamente la propuesta (¡contiene errores!) y realizar el análisis y reescritura.

#### Enunciado:
Diseñar una clase `TanqueAgua` que represente un contenedor de líquido. Atributos: `capacidadMaxima` (en litros) y `cantidadActual` (en litros).  
* Constructor predeterminado: `capacidadMaxima = 100`, `cantidadActual = 0`.  
* Constructor parametrizado: recibe ambos valores. Si `cantidadActual` excede `capacidadMaxima`, ajusta `cantidadActual` para que sea igual a la capacidad máxima.  
* `agregarAgua(double litros)`: suma litros a `cantidadActual`. Si excede la capacidad máxima, el tanque debe quedar lleno y mostrar un mensaje de advertencia.  
* `retirarAgua(double litros)`: resta litros. Si se intenta retirar más agua de la disponible, el tanque debe quedar en $0$.  
* `mostrarEstado()`: imprime la cantidad actual y la capacidad máxima.

#### Solución Propuesta (¡Contiene Errores!):

```java
class TanqueAgua {
    public double capacidadMaxima;
    public double cantidadActual;

    public TanqueAgua() {
        this.capacidadMaxima = 100;
        this.cantidadActual = 0;
    }

    public TanqueAgua(double capacidadMaxima, double cantidadActual) {
        this.capacidadMaxima = capacidadMaxima;
        this.cantidadActual = cantidadActual; // ❌ No valida si cantidadActual > capacidadMaxima
    }

    public void agregarAgua(double litros) {
        this.cantidadActual = this.cantidadActual + litros;
        if (this.cantidadActual > this.capacidadMaxima) {
            System.out.println("Advertencia: Se excedio la capacidad."); // ❌ No ajusta cantidadActual a capacidadMaxima
        }
    }

    public void retirarAgua(double litros) {
        this.cantidadActual = this.cantidadActual - litros; // ❌ No valida si queda negativo
    }

    public void mostrarEstado() {
        System.out.println("Actual: " + this.cantidadActual + " / Maxima: " + this.capacidadMaxima);
    }
}
```

#### Actividades a realizar:
1. Analizar el código línea por línea e identificar los errores conceptuales y lógicos.  
2. Argumentar acerca de por qué constituyen errores (encapsulamiento público, falta de límite superior en `agregarAgua`, falta de límite inferior en `retirarAgua` y constructor sin validación).  
3. ¿La solución responde completamente a lo solicitado por la consigna? ¿Se cumple la regla de que el tanque "debe quedar lleno" o "debe quedar en 0" en los casos límite?  
4. **Reescribir** la clase `TanqueAgua` para que la solución sea correcta, respetando los principios de la Programación Orientada a Objetos (atributos privados, getters/setters, validación en constructores y métodos mutadores).  
