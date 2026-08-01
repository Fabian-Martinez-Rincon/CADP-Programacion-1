---
id: "AYP1-INSTAGRAM"
titulo: "Catálogo de ejemplos de Instagram (FaboSistemas)"
slug: "instagram-ejemplos"
tipo: "ejemplo"
tema: "ejemplos-sueltos"
subtemas:
  - "case"
  - "tipos-de-datos"
  - "matrices"
  - "parametros-por-valor-y-por-referencia"
  - "funciones"
  - "strings"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "generado"
prerrequisitos:
  - "estructura if"
  - "estructuras repetitivas while y for"
relacionados:
  - "./README.md"
  - "./practica-4/teoria.md"
  - "./practica-6/teoria.md"
  - "./practica-7/teoria.md"
codigo_relacionado:
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/CaseDemo.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/EjemploTipos.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/Matrices_ejemplo1.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/basico.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/chetsheat.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/funciones.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/maximo.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/metodo.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/minimo_maximo.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/procesos.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/promedio.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/stringsPracticas.pas"
  - "../../codigo/ejemplos/algoritmos-y-programacion-1/instagram/varias_instrucciones.pas"
---

# Catálogo de ejemplos de Instagram (FaboSistemas)

Estos 13 archivos `.pas` no pertenecen a ninguna práctica numerada: son fragmentos de código Pascal cortos, autocontenidos, publicados como contenido educativo en Instagram por FaboSistemas. Viven en `codigo/ejemplos/algoritmos-y-programacion-1/instagram/`. Varios tocan temas que no aparecen en las prácticas 1 a 7 de este repositorio (la sentencia `case`, matrices/arreglos bidimensionales), lo cual es consistente con ser material de difusión independiente de la cursada, no ejercicios de práctica.

Se compilaron los 13 archivos con Free Pascal 3.2.2 durante la conversión: **12 compilan sin errores**; `basico.pas` no compila (ver su entrada).

## `CaseDemo.pas` — sentencia `case`

Lee un número del 1 al 6 y usa `case opcion of` con rangos de valores agrupados por rama (`1,2,3: ...`, `4,5: ...`, `6: ...`) y una rama `else` para los valores fuera de rango. La sentencia `case` no se enseña explícitamente en ninguna de las 7 clases teóricas leídas para este repositorio.

## `EjemploTipos.pas` — los cinco tipos de datos simples

Declara e imprime una variable de cada uno de los tipos simples vistos en la cátedra: `integer`, `real`, `boolean`, `char` y `string`, mostrando además el formateo con dos decimales (`altura:0:2`) para el tipo `real`.

## `Matrices_ejemplo1.pas` — matriz bidimensional

Declara `type matriz = array[1..f, 1..c] of integer` (arreglo bidimensional, tema no cubierto en las prácticas 1-7 de este repositorio) y cuatro procedimientos: `ImprimirMatriz`, `ImprimirInvertido` (recorre filas/columnas en orden invertido, imprimiendo la traspuesta), `cargarMatriz` (carga manual por teclado) y `cargarRandom` (carga con `random(100)`, requiriendo `randomize` antes).

## `basico.pas` — fragmento incompleto (no compila)

```pascal
program basico;
var
  i, num, suma: integer;
begin
    if num > 0 then
        cantPos := cantPos + 1;
end.
```

> [!WARNING]
> Este archivo **no compila** (`Error: Identifier not found "cantPos"`, verificado con Free Pascal 3.2.2): la variable `cantPos` se usa pero nunca se declara, y `num` nunca se lee antes de evaluarla. Es, más que un programa completo, el fragmento idiomático "contador condicional" (`if condición then contador := contador + 1`) tal como suele mostrarse recortado en una publicación de redes sociales — se documenta tal cual está en el repositorio, sin completarlo, porque no se puede saber con certeza qué declaraciones tenía el fragmento original.

## `chetsheat.pas` — parámetro por referencia (ítem 19 de una guía numerada)

```pascal
{=====================================}
{ 19) PARAMETRO POR REFERENCIA        }
{ modifica la variable original       }
{=====================================}
```

Ejemplo mínimo de un parámetro `var` que modifica la variable original del programa principal. El comentario de encabezado ("ítem 19") sugiere que este archivo es un extracto de una guía/cheat-sheet más larga y numerada, de la cual solo este fragmento quedó en el repositorio.

## `funciones.pas` — catálogo de funciones simples

Cuatro funciones (`suma`, `esPar`, `mayor`, `sumaHastaN`) invocadas desde el programa principal, cada una con el resultado esperado indicado en un comentario junto al `WriteLn` (por ejemplo, `WriteLn(suma(5, 3)); // Output: 8`).

## `maximo.pas` — máximo con parámetro por referencia

Variante minimalista del patrón de máximo enseñado en la Práctica 5 (ver [`practica-5/teoria.md`](./practica-5/teoria.md)): `procedure maximo(n: real; var max: real)` actualiza `max` mientras se leen números hasta el 0.

## `metodo.pas` — función y procedimiento mínimos

El ejemplo más simple del catálogo: una función `Sumar` y un procedimiento `Saludar`, cada uno invocado una sola vez desde el programa principal.

## `minimo_maximo.pas` — máximo y mínimo de una matriz

Sobre una matriz 3x3 cargada con `random(100)`, calcula el máximo y el mínimo **con dos procedimientos separados** (`calcularMax`, `calcularMin`), cada uno recorriendo la matriz completa e informando también la posición `[fila,columna]` donde se encontró.

## `procesos.pas` — comparación directa valor vs. referencia

Ejemplo didáctico muy compacto: dos procedimientos casi idénticos (`ejemplo`, que recibe `x` por valor, e `incrementar`, que lo recibe por referencia) aplicados a la misma variable `num`, mostrando en los comentarios (`{ 15 }`, `{ ahora es 15 }`) que solo el segundo modifica el valor original.

## `promedio.pas` — promedio por fila de una matriz

Matriz de 3x4 con un procedimiento `promedioPorFila` que recorre cada fila con un `for` interno, acumula la suma de esa fila y calcula su promedio (`suma / c`).

## `stringsPracticas.pas` — recorrido de un string carácter por carácter

```pascal
for i := 1 to length(nombre) do
  writeln(nombre[i]);
```

Muestra dos operaciones sobre `string` que no aparecen en la conversión de la Clase 7 ([`practica-7/teoria.md`](./practica-7/teoria.md)): la función `length()` y el acceso a un carácter individual del string mediante indexación `nombre[i]`.

## `varias_instrucciones.pas` — `case` con múltiples instrucciones por rama

Variante de `CaseDemo.pas` que muestra cómo agrupar más de una instrucción dentro de una misma rama de un `case` usando `begin...end`.
