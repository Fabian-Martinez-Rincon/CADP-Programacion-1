---
id: "AYP1-P6-TEORIA"
titulo: "Funciones y alcance de variables"
slug: "funciones-y-alcance-de-variables"
tipo: "teoria"
unidad: 6
tema: "funciones-y-alcance"
subtemas:
  - "funciones"
  - "alcance-de-variables"
  - "variables-locales"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-6/practica 6.pdf"
    paginas: "1-3"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/teorias/programacion clase 6.pdf"
    paginas: "1-10"
prerrequisitos:
  - "procedimientos y parametros"
  - "maximos y minimos"
relacionados:
  - "./README.md"
  - "./ejercicios.md"
  - "../practica-5/teoria.md"
  - "../practica-7/teoria.md"
---

# Funciones y alcance de variables (Clase 6 / Práctica 6)

> Conversión de la Clase 6 ("programacion clase 6.pdf"). Se preserva el orden: primero funciones, después alcance de variables.

## Índice

1. [Funciones](#1-funciones)
2. [Invocación de una función](#2-invocación-de-una-función)
3. [Ejemplo: factorial](#3-ejemplo-factorial)
4. [Ejemplo: es múltiplo de N](#4-ejemplo-es-múltiplo-de-n)
5. [Alcance de las variables](#5-alcance-de-las-variables)

## 1. Funciones

Una **función** es un conjunto de instrucciones que realizan una tarea específica y retorna **un único valor** (a diferencia del procedimiento, que puede retornar 0, 1 o más valores mediante parámetros por referencia).

```pascal
Function nombre(...): tipo;
var ...
begin
  ...
  nombre:= valor a retornar;
end;
```

Dentro del cuerpo de la función, el resultado se asigna usando el **propio nombre de la función** como si fuera una variable (`nombre := valor;`).

## 2. Invocación de una función

Una función se invoca por su nombre, igual que un procedimiento, pero **el retorno de la función se produce en la misma línea de invocación** — por eso una función puede usarse en cualquier lugar donde sea válida una expresión de su tipo:

**Asignándola a una variable:**

```pascal
program uno;
Function auxiliar(...): real;
Var ...
begin
  ...
  auxiliar:= ...;
end;
Var
  aux:real;
begin
  aux:= auxiliar(...);
  write (aux);
end.
```

**Usándola directamente dentro de una condición (`while`/`if`):**

```pascal
program uno;
Function auxiliar(...): real;
Var …
begin
  ...
  auxiliar:= ...;
end;
Var
  aux:real;
begin
  while (auxiliar(...) = 5.5) do
    begin
    end;
  if (auxiliar(...) = 5.5) then
    begin
    end;
end.
```

## 3. Ejemplo: factorial

*"Realizar un programa que lea valores numéricos hasta ingresar un valor negativo. Por cada número se debe imprimir el factorial de dicho número."*

```pascal
Program Factoriales;
function factorial(n: integer): integer; begin ... end;
var
  valor: integer;
begin
  read (valor);
  while (valor >= 0) do
    begin
    writeln('El factorial de ', valor, ' es ', factorial(valor));
    read(valor);
    end;
end.
```

```pascal
function factorial(n: integer): integer;
var
  i, res: integer;
begin
  res:= 1;
  for i:= 1 to n do
    res:= res * i;
  factorial:= res;
end;
```

## 4. Ejemplo: es múltiplo de N

*"Realizar un programa que lea valores numéricos hasta ingresar un valor múltiplo de N. El programa previamente debe leer el valor de N e informar la cantidad de valores procesados."*

```pascal
Program Multiplos;
function esMultiplo(v, m: integer): boolean; begin ... end;
var N, valor, cont: integer;
begin
  cont:= 0;
  read (N); read (valor);
  while (not esMultiplo(valor, N)) do
    begin
    cont:= cont + 1;
    read(valor);
    end;
  write ('Se procesaron ', cont, ' valores.');
end.
```

La clase muestra tres formas equivalentes de escribir `esMultiplo`, cada una más concisa que la anterior:

```pascal
{ Opción 1: variable auxiliar con if/else explícito }
function esMultiplo (v, n:integer): boolean;
Var ok:boolean;
Begin
  if (v MOD n = 0) then ok:= true
  else ok:= false;
  esMultiplo:= ok;
end;

{ Opción 2: variable auxiliar asignada directamente desde la expresión booleana }
function esMultiplo(v, n:integer): boolean;
Var ok:Boolean;
Begin
  ok:= (v MOD n = 0);
  esMultiplo:= ok;
end;

{ Opción 3: sin variable auxiliar }
function esMultiplo(v, n:integer):boolean;
Begin
  esMultiplo:= (v MOD n = 0);
end;
```

### Ejercicios de repaso con `esNumPrimo` (para analizar, sin solución dada en la diapositiva)

La clase presenta dos programas que usan una función `esNumPrimo` (cuyo cuerpo no se completa, es un ejercicio abierto) y pide describir qué hace cada uno:

```pascal
Program Ej1;
function esNumPrimo (num:integer):boolean;
  begin
  ...
  end;
Var
  encontrados, numero, valor, cuantos:integer;
Begin
  encontrados:= 0; numero:= 1;
  read(cuantos);
  while (encontrados < cuantos) do
    begin
    read(valor);
    if (esNumPrimo(valor)) then
      begin
      writeln(valor, ' es primo.');
      encontrados:= encontrados + 1;
      end;
    numero:= numero + 1;
    end;
  write(numero);
End.
```

```pascal
Program Ej2;
function esNumPrimo (num:integer):boolean;
  begin
  ...
  end;
Var
  numero, inferior, superior:integer;
Begin
  read(inferior);
  read(superior);
  for numero:= inferior to superior do
    begin
    if (esNumPrimo(numero)) then
      writeln(numero, ' es primo.');
    end;
End.
```

Y un tercer ejemplo que muestra cómo una función puede invocar a otra función:

```pascal
Program Ej3;
function suma (a, b, c, d: integer): integer;
Begin
  suma:= a + b + c + d;
End;

function promedio(a, b, c, d: integer): real;
begin
  promedio:= suma(a, b, c, d) / 4;
end;

Var
  a,b,c,d:integer;
Begin
  read(a); read(b); read(c); read(d);
  write ( promedio(a, b, c, d) );
  read(a); read(b); read(c); read(d);
  write ( suma(a, b, c, d) );
End.
```

## 5. Alcance de las variables

```
Alcance de las variables
├── Variables locales al programa
└── Variables locales al módulo
```

- Si es una variable utilizada en un **módulo**: tiene acceso a las variables locales declaradas en el propio módulo, y a sus parámetros.
- Si es una variable usada en un **programa**: tiene acceso a las variables locales declaradas en el programa.

```pascal
Program alcance;
procedure prueba;
Var
  c: integer;      { c es una variable local del módulo: solo puede usarse dentro de prueba }
Begin
End;
Var
  d:integer;        { d es una variable local del programa: solo puede usarse en el programa principal }
Begin
End.
```

Las **constantes**, en cambio, pueden usarse tanto en el programa principal como en todos los módulos declarados (no tienen esta restricción de alcance).

### Ejemplo: dos variables con el mismo nombre en distinto alcance

```pascal
Program alcance;

Procedure prueba;
Var
  x:integer;
Begin
  x:= 34 DIV 3;
  write (x);
End;

Var
  x:integer;
Begin
  x:= 8;
  prueba;
  write (x);
End.
```

¿Qué imprime? Aunque el procedimiento `prueba` y el programa principal usan el mismo nombre de variable `x`, son dos variables **distintas** (cada una local a su propio alcance): la del procedimiento vale `34 div 3 = 11` e imprime `11`; al volver al programa principal, su propia `x` nunca fue tocada por `prueba` y sigue valiendo `8`, por lo que el segundo `write` imprime `8`.

## Actividad de cierre de la clase (sin solución en el repositorio)

Retoma el problema de los terrenos de una inmobiliaria (ya usado como actividad en la Clase 4), pidiendo ahora resolverlo con **funciones** en lugar de procedimientos:

1. Función que reciba las dimensiones de un terreno (frente y fondo) y retorne el área correspondiente.
2. Función que reciba el área de un terreno y el valor del metro cuadrado en pesos, y retorne la valuación fiscal en pesos.
3. Función que reciba la valuación fiscal en pesos de un terreno y una tasa de cambio a dólares, y retorne la valuación fiscal en dólares.
4. Programa que procese la información de los 15 terrenos de una inmobiliaria usando las tres funciones anteriores.

Esta actividad no tiene un archivo `.pas` resuelto asociado en `codigo/soluciones/algoritmos-y-programacion-1/practica-6/`.
