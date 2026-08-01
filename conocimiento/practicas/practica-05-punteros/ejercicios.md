---
id: "CADP-P05-EJERCICIOS"
titulo: "Ejercicios - Práctica 5 - Punteros"
slug: "practica-05-ejercicios"
tipo: "ejercicio"
unidad: 5
tema: "punteros"
subtemas:
  - "memoria-estatica"
  - "memoria-dinamica"
  - "sizeof"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-05-punteros/Redictado CADP 2020 - Práctica 5 - Punteros.pdf"
    paginas: "1-4"
prerrequisitos:
  - "./teoria.md"
relacionados:
  - "./teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-05-punteros/"
---

# Ejercicios - Práctica 5 - Punteros

Enunciados transcritos textualmente de `Redictado CADP 2020 - Práctica 5 - Punteros.pdf` (páginas 1-4).

> [!NOTE]
> **Validación real ejecutada**: los 17 archivos `.pas` de esta carpeta se compilaron con Free Pascal 3.2.2 (`fpc -Se1`); **los 17 compilan sin errores**. No se ejecutó ninguno (todos requieren entrada por teclado). No se modificó ningún archivo fuente.

## Parte conceptual

> 1) ¿Qué es la memoria estática?
> 2) ¿Qué es la memoria dinámica?
> 3) ¿Qué es una variable del tipo puntero?
> 4) ¿Qué hace la operación de NEW sobre una variable del tipo puntero?
> 5) ¿Qué hace la operación de DISPOSE sobre una variable del tipo puntero?

No hay un `.pas` asociado a la parte conceptual (son preguntas de desarrollo). Las respuestas completas, tomadas de `Conceptual.docx`, están desarrolladas en [`teoria.md`](./teoria.md#memoria-estática-y-memoria-dinámica) y [`teoria.md`](./teoria.md#new-y-dispose). En síntesis, según ese apunte: (1) la memoria estática se reserva al declarar la variable y no cambia de tamaño en toda la ejecución; (2) la memoria dinámica se reserva y libera en tiempo de ejecución, a pedido; (3) una variable puntero guarda una dirección de memoria dinámica, no un dato convencional; (4) `new` reserva memoria dinámica y hace que el puntero apunte a ella; (5) `dispose` libera esa memoria (el puntero "queda con basura").

## Parte práctica

### Ejercicio 1

> Indicar los valores que imprime el siguiente programa en Pascal. *(programa con `pc: puntero a string[50]`, sucesivos `sizeof(pc)` y `sizeof(pc^)` antes y después de `new` y de asignarle contenido)*

- **Solución**: [`1.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/1.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Respuestas** (en comentarios del propio archivo): `sizeof(pc)` da **4** las tres veces que se pregunta (antes de `new`, después de `new`, después de asignar contenido — el tamaño del puntero no cambia nunca). `sizeof(pc^)` da **51** en ambos casos (longitud declarada del `string[50]` + 1), sin importar que el segundo texto asignado sea más corto que el primero: lo que ocupa un `string[n]` es siempre `n+1`, no la longitud del contenido actual.

### Ejercicio 2

> Indicar los valores que imprime el siguiente programa en Pascal. *(record `producto` con `codigo`, `descripcion: string[9]`, `precio`, y un puntero a él)*

- **Solución**: [`2.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/2.pas)
- **Estado**: `parcial` (compila; sólo se ejecutan las dos primeras líneas del trazado)
- **Enfoque**: `writeln(sizeof(p))` → **4** (todo puntero ocupa 4 bytes) y `writeln(sizeof(prod))` → **24** (`codigo` 2 + `descripcion` string[9] = 10 + `precio` 4 = 16... el comentario del archivo anota 24, ver nota). El resto del trazado (`new(p)` en adelante) está comentado (`{ ... }`) en el archivo, con las mismas respuestas anotadas en los comentarios (`//4`, `//24` repetidos) pero sin quedar como código activo — no se puede confirmar por ejecución real, sólo por lectura, porque el bloque está deshabilitado.

### Ejercicio 3

> Indicar los valores que imprime el siguiente programa en Pascal. *(`numeros = array[1..10000] of integer`, puntero a ese arreglo, `new`, carga parcial de 5000 elementos)*

- **Solución**: [`3.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/3.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Respuestas** (en comentarios del archivo): `sizeof(n)` → **4 bytes** (puntero). `sizeof(num)` → **20000 bytes** (10000 enteros × 2 bytes). `sizeof(n^)` → **20000 bytes**, tanto antes como después de cargar sólo la mitad del arreglo (5000 de 10000): el tamaño reservado por `new` es fijo, no depende de cuántas posiciones se hayan usado.

### Ejercicio 4

> Indicar los valores que imprimen los siguientes programas en Pascal. a) ... b) ... c) ... d) ... *(cuatro variantes cortas sobre orden de `new`/asignación/`dispose`, y sobre pasar un puntero como parámetro)*

- **Soluciones**: [`4.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/4.pas) (a), [`4.b.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/4.b.pas) (b), [`4c.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/4c.pas) (c), [`4d.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/4d.pas) (d)
- **Estado**: `resuelto` (los 4 compilan sin errores)
- **a)** `pc^:= 'un nuevo texto'; new(pc); writeln(pc^);` — el comentario del archivo indica correctamente **"imprime basura"**: se escribe en `pc^` *antes* de reservarle memoria con `new`, así que la asignación cae sobre una dirección inválida y lo que se lee después no es determinístico.
- **b)** Ídem Ejemplo 1/2 de `teoria.md` pero con `string`: después de `dispose(pc)`, el comentario dice *"se genera un bucle infinito porque no reservamos memoria y se rompe todo"* al volver a hacer `new(pc)` — el programa no tiene ningún bucle (`while`/`for`) en su código, así que esa nota del alumno no describe con precisión lo que haría el programa; sí es correcto que sin un `new` posterior a un `dispose`, seguir usando `pc^` sería inválido.
- **c)** Puntero pasado **por valor** a `cambiarTexto`: imprime `'Un texto'` y después `'Otro texto'`, porque aunque el parámetro es una copia del puntero, apunta a la misma celda dinámica (mismo patrón que el "Ejemplo 3" de `teoria.md`).
- **d)** Igual, pero `cambiarTexto` hace `new(pun)` antes de reasignar: imprime `'Un texto'` las dos veces, porque el `new` sólo redirige la copia local del puntero, no el original (mismo patrón que el "Ejemplo 4" de `teoria.md`).

### Ejercicio 5

> De acuerdo a los valores de la tabla [...] calcular el tamaño de memoria en los puntos señalados a partir de (I), suponiendo que las variables del programa ya están declaradas y se cuenta con 400.000 bytes libres. *(`Alocacion_Dinamica`: record `Empleado` de 72 bytes, puntero `PtrEmpleado`, secuencia `Readln`/`New`/`Readln`/`Dispose` con 5 puntos de control I-V)*

- **Solución**: [`5.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/5.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Enfoque**: en vez de sólo comentar los valores, el archivo agrega `writeln(sizeof(...))` reales para verificar en ejecución. Cálculo documentado en comentarios: `alguien` ocupa `72 B` (estática, ya reservada desde el principio); `PtrEmpleado` en sí mismo ocupa `4 B` (estática); tras el `New`, se suman `72 B` de memoria **dinámica**; los `Readln` posteriores no cambian la cantidad total porque sólo llenan bytes ya reservados; tras el `Dispose`, la memoria dinámica vuelve a `0`. Desarrollo completo, con el mismo resultado, en [`teoria.md`](./teoria.md#cálculo-de-memoria-ejemplo-resuelto-a-mano-ejercicio-5-del-pdf).

### Ejercicio 6

> Se desea almacenar en memoria una secuencia de 2500 nombres de ciudades [...] a) Definir una estructura de datos estática [...] b) [...] pensar en utilizar un vector de punteros a palabras [...] b.1) tamaño de `Punteros` al comenzar el programa. b.2) módulo que reserve memoria para los 2500 nombres [...] b.3) módulo para leer los nombres y almacenarlos.

- **Soluciones**: [`6.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/6.pas), [`6a.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/6a.pas) (idéntico a `6.pas`), [`6b.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/6b.pas), [`6pro.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/6pro.pas)
- **Estado**: `parcial` (los 4 archivos compilan, pero ninguno resuelve el ejercicio completo)
- **Enfoque real**:
  - `6.pas` / `6a.pas` resuelven el inciso a) con una estructura estática reducida a modo de prueba (`vector = array[1..dimF] of str50` con `dimF=10`, no 2500) y calculan su tamaño con `SizeOf`.
  - `6b.pas` explora el inciso b.1) (`SizeOf(Punteros)` con `dimF=2500`, comentario `//2500*4`) pero en vez de resolver b.2) (reservar memoria para **cada uno** de los 2500 punteros del vector con un `for` que haga `new(Punteros[i])`), hace un único `new(cosa2)` sobre un puntero **al vector completo** (`cosa=^ArrPunteros`), que es una estructura distinta a la pedida. El inciso b.3) (leer y almacenar los nombres) no está resuelto en ningún archivo — la única implementación de esa lógica está en el apunte transcripto en [`teoria.md`](./teoria.md#vector-de-punteros-a-string-ejercicio-6-del-pdf) (con la salvedad, señalada ahí, de que también le falta el `new` por elemento).
  - `6pro.pas` es un archivo casi vacío (declara `puntero = ^integer; p,q: puntero;` y no hace nada más) — `estado: "sin-solucion"` para ese archivo puntual.

## Programas de práctica libre (sin enunciado numerado)

Cinco archivos más en la misma carpeta, sin enunciado del PDF: ejemplos de práctica personal sobre punteros. Todos compilan sin errores.

| Archivo | Descripción |
|---|---|
| [`Ejemplo.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/Ejemplo.pas) | `record Datos` (nombre, apellido, edad, altura) con puntero, más un `PtrReal` y un `PtrString` sueltos: practica declarar, `new` y leer/escribir a través de distintos tipos de puntero en un mismo programa. |
| [`Ejemplo2.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/Ejemplo2.pas) | Tres punteros a `integer` (`p1,p2,p3`); `p3 := p1` los deja apuntando a la misma celda y luego se opera con `p1^`/`p2^`/`p3^`: practica el alias del "Ejemplo 1" de `teoria.md`, esta vez con aritmética en vez de sólo lectura. |
| [`Ejemplo3.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/Ejemplo3.pas) | Procedimiento `cambiar(var pun1; pun2)` que reasigna un puntero recibido **por referencia** a partir de otro recibido por valor: variante corta del "Ejemplo 5" de `teoria.md` (redirigir el puntero del llamador desde el procedimiento). |
| [`Ejemplo4.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/Ejemplo4.pas) | Un único puntero a `record producto` (`nombre`, `precio`) que se reutiliza en un bucle de lectura hasta el centinela `'ZZZ'`, contando los productos con precio entre 25 y 50. Es la misma idea de "leer un dato a la vez a través de un puntero" que se vuelve central para las listas enlazadas de la Práctica 6. |
| [`cosa.pas`](../../../codigo/soluciones/practicas/practica-05-punteros/cosa.pas) | Ejercicio de trazado con dos punteros (`p`, `q`): `nil`, `new`, alias (`p:=q`), reasignación de `q` a una celda nueva y `q^:=p^` (copiar contenido, no puntero). Tiene tres `writeln` marcados `{1}` `{2}` `{3}` para completar como ejercicio de traza (sin las respuestas escritas en el archivo). |
