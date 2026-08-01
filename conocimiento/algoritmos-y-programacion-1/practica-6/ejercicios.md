---
id: "AYP1-P6-EJERCICIOS"
titulo: "Práctica 6 - Modularización con parámetros III: enunciados y soluciones"
slug: "practica-6-ejercicios"
tipo: "ejercicio"
unidad: 6
tema: "funciones-y-alcance"
subtemas:
  - "funciones"
  - "alcance-de-variables"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-6/practica 6.pdf"
    paginas: "1-3"
prerrequisitos:
  - "funciones"
relacionados:
  - "./README.md"
  - "./teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio1a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio1b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio1c.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio2.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio3.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio3a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio3b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio4.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio5referencia.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio5valor.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio6funcion.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio6referencia.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio7.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio8.pas"
---

# Práctica 6 — Ejercicios y soluciones

Enunciados transcriptos de `practica 6.pdf` (páginas 1-3). Todos los archivos de esta carpeta se compilaron con Free Pascal 3.2.2 durante la conversión, **salvo uno** (`ejercicio1c.pas`) cuyo fallo de compilación es en realidad la respuesta correcta al ejercicio — ver más abajo.

## Ejercicio 1 — ¿Qué imprime cada programa? (alcance) `AYP1-P6-EJ01`

> Dado los siguientes programas indicar qué imprime cada uno.

**1a:**
```pascal
program alcance1;
procedure uno;
var b: integer;
begin
  b := 12;
  writeln(b);
end;
var a,b: integer;
begin
  a:= 4;
  b:= 5;
  uno;
  writeln(b, a);
end.
```

**1b:**
```pascal
program alcance2;
procedure dos (b: integer);
begin
  b := 9;
  writeln(b);
end;
var a,b: integer;
begin
  a:= 4;
  b:= 8;
  dos(b);
  writeln(b, a);
end.
```

**1c:**
```pascal
program alcance3;
procedure tres;
var b: integer;
begin
  b:= 5;
  writeln(b);
end;
var a: integer;
begin
  a:= 6;
  tres;
  writeln(a, b);
end.
```

- **Código:** [`ejercicio1a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio1a.pas), [`ejercicio1b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio1b.pas), [`ejercicio1c.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio1c.pas)
- **Estado:** resuelto (1a y 1b) / **no compila, y ese es el punto del ejercicio** (1c)
- **Enfoque:** las tres soluciones son transcripciones ejecutables de los tres programas dados, para poder correrlos y observar qué imprimen (el enunciado no pide escribir un programa nuevo, sino predecir/verificar la salida de uno dado).

> [!WARNING]
> **`ejercicio1c.pas` no compila con Free Pascal 3.2.2**: `ejercicio1c.pas(19,16) Error: Identifier not found "b"`. La causa es exactamente el concepto que este ejercicio busca evaluar (alcance de variables): en `writeln(a, b)` del programa principal, `b` no es una variable del programa — es una variable **local al procedimiento `tres`** y por lo tanto no es visible fuera de él. Esto no es un error de transcripción: es la respuesta correcta al ejercicio 1c (el programa dado, tal cual está escrito en el enunciado, no compila).

## Ejercicio 2 — Encontrar el error `AYP1-P6-EJ02`

> Dado el siguiente programa, indicar cuál es el error.
> ```pascal
> program alcance4;
>   function cuatro: integer;
>   begin
>     cuatro:= 4;
>   end;
> var a: integer;
> begin
>   cuatro;
>   writeln(a);
> end.
> ```

- **Código:** [`ejercicio2.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio2.pas)
- **Estado:** resuelto
- **Enfoque:** el archivo no reproduce el programa con el error, sino que aplica directamente la corrección: cambia `cuatro; writeln(a);` por `a := cuatro; writeln(a);`. El error del enunciado es que `cuatro;` invoca la función pero descarta su valor de retorno (nunca se asigna a `a`), por lo que `a` queda sin inicializar y `writeln(a)` mostraría un valor indeterminado.

## Ejercicio 3 — Función `calcularPromedio` `AYP1-P6-EJ03`

> Dado el siguiente programa:
> ```pascal
> program alcanceYFunciones;
> function calcularPromedio (suma, cant: integer): real;
> var
>   prom: real;
> begin
>   if (cant = 0) then
>     prom := -1
>   else
>     prom := suma / cant;
> end;
> var
>   suma, cant: integer;
> begin {programa principal}
>   readln(suma);
>   readln(cant);
>   if (calcularPromedio(suma, cant) <> -1) then begin
>     cant := 0;
>     writeln('El promedio es: ', calcularPromedio(suma, cant))
>   end
>   else
>     writeln('Dividir por cero no parece ser una buena idea');
> end.
> ```
> a. La función `calcularPromedio` calcula y retorna el promedio entre los parámetros `suma` y `cant`, pero parece incompleta. ¿Qué debería agregarle para que funcione correctamente?
> b. En el programa principal, la función `calcularPromedio` es invocada dos veces, pero esto podría mejorarse. ¿Cómo debería modificarse el programa principal para invocar a dicha función una única vez?
> c. Si se leen por teclado los valores 48 (variable `suma`) y 6 (variable `cant`), ¿qué resultado imprime el programa? Considere las tres posibilidades: i) el programa original, ii) el programa luego de realizar la modificación del inciso a), iii) el programa luego de realizar las modificaciones de los incisos a) y b).

- **Código base (reproduce el enunciado, incompleto):** [`ejercicio3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio3.pas)
- **Código con la corrección del inciso a):** [`ejercicio3a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio3a.pas)
- **Código con las correcciones de los incisos a) y b):** [`ejercicio3b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio3b.pas)
- **Estado:** resuelto
- **Enfoque:** `ejercicio3.pas` transcribe el programa dado tal cual (a `calcularPromedio` le falta la línea `calcularPromedio := prom;`, por lo que nunca retorna el valor calculado — esta es la "incompletitud" que señala el inciso a). `ejercicio3a.pas` agrega esa línea faltante. `ejercicio3b.pas` además reemplaza las dos invocaciones a `calcularPromedio` por una sola, guardando el resultado en una variable `promedio: real` y reutilizándola. Los tres compilan correctamente (`ejercicio3.pas` compila porque Pascal no exige la asignación al nombre de la función; solo produce un valor de retorno indefinido en tiempo de ejecución, no un error de compilación).

## Ejercicio 4 — Invocaciones válidas de una función `AYP1-P6-EJ04`

> Dada la siguiente función marque las invocaciones a dicha función que considere válidas:
> ```pascal
> function cuadrado(x:integer): integer;
> begin
>    cuadrado:= x*x;
> end
> ```
> a. `Write(cuadrado(8));`
> b. `c:= cuadrado(8); Write(cuadrado);`
> c. `If ( cuadrado = 64 ) then Write('8*8=64');`
> d. `cuadrado(8);`
> e. `c:= cuadrado(8); Write (c);`
> f. `cuadrado(8, c); Write (c);`
> g. `If ( cuadrado(8) = 64 ) then Write('8*8=64');`

- **Código:** [`ejercicio4.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio4.pas)
- **Estado:** resuelto
- **Enfoque:** en vez de solo marcar cuáles son válidas, el archivo prueba cada caso directamente en Pascal, dejando los inválidos comentados con la razón del error: **a) válida**, **b) inválida** (`cuadrado` sin invocar no puede usarse en un `write`; faltan los paréntesis y el argumento), **c) inválida** (`cuadrado` es una función, hace falta invocarla con un argumento, no compararla directamente), **d) inválida** (se invoca la función pero se descarta el resultado — en Pascal esto de hecho no compila cuando el resultado de una función no se usa en una expresión/asignación), **e) válida**, **f) inválida** (la función solo recibe 1 parámetro, no 2), **g) válida**.

## Ejercicio 5 — Sumatoria de los primeros N naturales `AYP1-P6-EJ05`

> Escriba un módulo que reciba como parámetro un número entero positivo *n* y calcule la sumatoria de los primeros *n* números naturales. Para *n* = 5, la sumatoria es 1+2+3+4+5 = 15.

- **Variante con procedimiento y parámetro por referencia:** [`ejercicio5referencia.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio5referencia.pas) (`procedure sumaN(n: integer; var resultado: integer)`)
- **Variante con función:** [`ejercicio5valor.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio5valor.pas) (`function sumaN(n: integer): integer`)
- **Estado:** resuelto
- **Enfoque:** ambas resuelven la sumatoria con un `for i := 1 to n do resultado/suma := resultado/suma + i`; se presentan como dos formas alternativas y equivalentes de comunicar el resultado (por referencia vs. como valor de retorno de una función), consistente con el tema "Funciones" recién introducido en la teoría de esta práctica.

## Ejercicio 6 — Factorial `AYP1-P6-EJ06`

> El factorial de un número n se expresa como n! y se define como el producto de todos los números desde 1 hasta n. Por ejemplo, el factorial de 6 (6!) es 1\*2\*3\*4\*5\*6 = 720. Escriba un módulo que reciba un número n y retorne su factorial.

- **Variante con función:** [`ejercicio6funcion.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio6funcion.pas) (`function factorial(n: integer): integer`)
- **Variante con procedimiento y parámetro por referencia:** [`ejercicio6referencia.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio6referencia.pas) (`procedure factorial(n: integer; var res: integer)`)
- **Estado:** resuelto
- **Enfoque:** mismo par de variantes que el ejercicio 5, aplicado al cálculo de factorial con un `for i := 1 to n do res := res * i`.

## Ejercicio 7 — Potencia enésima `AYP1-P6-EJ07`

> a. Escriba un módulo que reciba 2 números enteros z y n, y retorne la potencia enésima de z (zⁿ).
> b. Escriba un programa que lea dos números enteros, B y k, e invoque al módulo implementado en a) para informar: el cuadrado (B²), el cubo (B³) y la potencia k-ésima (Bᵏ) de B.

- **Código:** [`ejercicio7.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio7.pas) (programa `Potencias`)
- **Estado:** resuelto
- **Enfoque:** `function potencia(z, n: integer): integer` multiplica `z` consigo mismo `n` veces con un `for`. El inciso b) reutiliza el mismo módulo tres veces con distintos argumentos: `potencia(B, 2)`, `potencia(B, 3)` y `potencia(B, k)`.

## Ejercicio 8 — Contar vocales hasta 3 consonantes `AYP1-P6-EJ08`

> a. Realice un módulo que reciba un carácter y retorne si el mismo es una letra (mayúscula o minúscula).
> b. Realice un módulo que reciba un carácter y retorne si el mismo es una letra consonante.
> c. Utilice los módulos implementados, en un programa que lea una secuencia de caracteres hasta que se ingresen 3 letras consonantes. Al finalizar, debe informar cuántas vocales se leyeron en dicha secuencia. Por ejemplo, si se lee la secuencia: `F % 8 m A # u s`, debe informar: `2`.

- **Código:** [`ejercicio8.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-6/ejercicio8.pas) (programa `Caracteres`)
- **Estado:** resuelto
- **Enfoque:** implementa `esLetra` (inciso a) y `esConsonante` (inciso b, que internamente llama a `esLetra` y descarta las vocales con el operador `in ['a','e','i','o','u','A','E','I','O','U']`). Para el inciso c) agrega además una tercera función `esVocal` (no pedida explícitamente por el enunciado, pero coherente con los módulos anteriores) para contar directamente las vocales en el `while (cantConsonantes < 3)`, en lugar de inferirlas como "ni consonante ni letra".
