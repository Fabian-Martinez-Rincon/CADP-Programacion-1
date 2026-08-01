---
id: "AYP1-P2-TEORIA"
titulo: "Tipos de datos char y boolean, y estructura de control if"
slug: "tipos-char-boolean-if"
tipo: "teoria"
unidad: 2
tema: "estructuras-de-control-decision"
subtemas:
  - "boolean"
  - "char"
  - "operadores-logicos-and-or-not"
  - "if-then-else"
  - "estructuras-de-control-secuencia-decision-iteracion"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-2/Practica 2 - AyP1 - 2026.docx.pdf"
    paginas: "1"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/teorias/02 - Clase 2.pdf"
    paginas: "1-22"
prerrequisitos:
  - "variables"
  - "tipos integer y real"
relacionados:
  - "./README.md"
  - "./ejercicios.md"
  - "../practica-1/teoria.md"
  - "../practica-3/teoria.md"
---

# Tipos de datos `char`/`boolean` y estructura `if` (Clase 2 / Práctica 2)

> Conversión de la Clase 2 ("02 - Clase 2.pdf") y del enunciado de la Práctica 2. Se preserva el orden de la clase: primero los tipos de dato lógico y carácter, luego las estructuras de control.

## Índice

1. [Dato lógico (boolean)](#1-dato-lógico-boolean)
2. [Dato carácter (char)](#2-dato-carácter-char)
3. [Recordar: lenguajes fuertemente tipados, auto tipados y dinámicamente tipados](#3-recordar-lenguajes-fuertemente-tipados-auto-tipados-y-dinámicamente-tipados)
4. [Estructuras de control](#4-estructuras-de-control)
5. [Decisión: `if`](#5-decisión-if)
6. [Programas equivalentes con `if` anidado](#6-programas-equivalentes-con-if-anidado)

## 1. Dato lógico (boolean)

Permite representar datos que pueden tomar dos valores: verdadero o falso.

- Es un tipo de dato simple, ordinal.
- Los valores son de la forma `true` (verdadero) y `false` (falso).
- Operadores: `AND` (conjunción), `OR` (disyunción), `NOT` (negación).

Reglas de uso de los operadores:

- **`X AND Y`**: solo es `TRUE` cuando tanto `X` como `Y` son `TRUE`. Cualquier otra combinación será `FALSE`.
- **`X OR Y`**: solo es `FALSE` cuando tanto `X` como `Y` son `FALSE`. Cualquier otra combinación será `TRUE`.
- **`NOT X`**: será `TRUE` cuando `X` sea `FALSE`, y será `FALSE` cuando `X` sea `TRUE`.

```pascal
program ejemploBoolean;
var
  x, y, z : boolean;
begin
  x := true;   y := false;
  z := NOT (x AND y) OR y;  { ¿qué valor toma la variable z? }
end.
```

## 2. Dato carácter (char)

Representa un conjunto finito y ordenado de caracteres que la computadora reconoce. Un dato de tipo carácter contiene sólo un carácter.

- Es un tipo de dato simple, ordinal.
- Los valores son de la forma: `a`  `B`  `!`  `$`  `L`  `4` (siempre entre comillas simples en el código, un único carácter).
- Operaciones: operadores lógicos de comparación `<`, `<=`, `>`, `=>`, `=`, `<>`.
- La Tabla ASCII contiene todos los caracteres y el orden entre los mismos (referencia usada en la clase: `http://ascii.cl/es/`), y es la que determina qué carácter es "mayor" o "menor" que otro al compararlos.

```pascal
program ejemploChar;
var
  car1, car2, car3 : char;
  ok : boolean;
begin
  car1 := 'a';  car2 := 'D'; car3 := '1';
  ok := car1 < car2;
  ok := car1 >= car3;
  ok := car1 = 'A';   { ¿qué resultados se obtienen con estas operaciones? }
end.
```

## 3. Recordar: lenguajes fuertemente tipados, auto tipados y dinámicamente tipados

Los diferentes tipos de datos deben especificarse, y a esa especificación dentro de un programa se la conoce como **declaración**. Una vez declarado un tipo se le pueden asociar variables (nombres simbólicos que toman los valores característicos del tipo).

- **Fuertemente tipados** (*strongly typed*): algunos lenguajes exigen especificar a qué tipo pertenece cada variable y verifican que los datos asignados se correspondan con esa definición. Pascal pertenece a esta clase.
- **Auto tipados** (*self typed*): verifican el tipo de las variables según su nombre.
- **Dinámicamente tipados** (*dynamically typed*): permiten que una variable tome valores de distinto tipo durante la ejecución de un programa.

## 4. Estructuras de control

Todos los lenguajes de programación tienen un conjunto mínimo de instrucciones que permiten especificar el control del algoritmo que se quiere implementar. Como mínimo deben contener: **secuencia**, **decisión** e **iteración/repetición**.

### Secuencia

La estructura de control más simple, está representada por una sucesión de operaciones (por ej. asignaciones), en la que el orden de ejecución coincide con el orden físico de aparición de las instrucciones.

```pascal
Program uno;
...
var
  num: integer;
begin
  read (num);
  write (num);
end.
```

## 5. Decisión: `if`

En un algoritmo representativo de un problema real es necesario tomar decisiones en función de los datos del problema. La estructura básica de decisión entre dos alternativas se representa simbólicamente como una condición que deriva en dos posibles caminos (verdadero / falso), cada uno con sus propias acciones.

Sintaxis, de la más simple a la más compuesta:

```pascal
if (condición) then
  accion;

{ más de una acción → begin/end }
if (condición) then
  begin
    acción 1;
    acción 2;
  end;

if (condición) then
  acción 1
else
  acción 2;

if (condición) then
  begin
    acción 1;
    acción 2;
  end
else
  acción 3;

{ ambas ramas con múltiples acciones, y anidamiento }
if (condición) then
  begin
    acción 1;
    acción 2;
  end
else
  begin
    acción 3;
    acción 4;
  end;
```

### Ejemplo — vocal minúscula

Enunciado usado en la clase: *"Realice un programa que lea un carácter y determine si es una vocal minúscula."* Los tres pasos a resolver son: cómo leo un carácter, cómo veo si es vocal, y cómo muestro el resultado.

```pascal
Program uno;
var
    car:char;
begin
   read (car);                    { Leo un carácter }
   if ((car = 'a') or (car = 'e') or (car = 'i')
       or (car = 'o') or (car = 'u'))   { Veo si es vocal }
   then
     write ('El caracter es vocal minúscula')
   else
     write ('El caracter no es vocal minúscula');
end.
```

## 6. Programas equivalentes con `if` anidado

La clase compara varias reescrituras del mismo problema (clasificar un valor contra un límite o un rango) para mostrar qué transformaciones de un `if` producen un programa **equivalente** y cuáles **no**.

**No son equivalentes** (cambiar `<` por `<=` cambia el comportamiento en el valor límite):

```pascal
{ Equivalentes1a }
if (valor < limite) then
  write ('Es menor')
else
  write ('Es mayor');

{ Equivalentes1b — NO es igual: al valor = limite el resultado cambia }
if (valor <= limite) then
  write ('Es menor')
else
  write ('Es mayor');
```

**Sí son equivalentes** (invertir la condición e intercambiar las ramas):

```pascal
{ Equivalentes2a }
if (valor < limite) then
  write ('Es menor')
else
  write ('Es mayor');

{ Equivalentes2b — SÍ es igual: se invirtió la condición y se intercambiaron las ramas }
if (valor >= limite) then
  write ('Es mayor')
else
  write ('Es menor');
```

**Tres formas equivalentes de clasificar un valor en tres rangos** (menor / medio / mayor que dos límites), cada una más legible que la anterior:

```pascal
{ Equivalentes3a: if anidado en el else }
if (valor < limiteInf) then
  write ('Es menor')
else
  if (valor > limiteSup) then
    write ('Es mayor')
  else
    write ('Es medio');

{ Equivalentes3b: if anidado en el then, condición de entrada invertida }
if (valor >= limiteInf) then
  if (valor <= limiteSup) then
    write ('Es medio')
  else
    write ('Es mayor')
else
  write ('Es menor');

{ Equivalentes3c: misma lógica que 3b, usando AND — solución preferida por ser más legible }
if (valor >= limiteInf) and (valor <= limiteSup) then
  write ('Es medio')
else
  if (valor < limiteInf) then
    write ('Es menor')
  else
    write ('Es mayor');
```

> [!NOTE]
> La Clase 2 no alcanza a introducir la estructura `for`/`while`; la mención de "iteración/repetición" en la sección 4 es solo el nombre de la tercera estructura de control mínima, cuyo desarrollo completo llega recién en la Clase 3 (ver [Práctica 3 — teoría](../practica-3/teoria.md)).
