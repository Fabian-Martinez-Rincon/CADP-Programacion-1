---
id: "AYP1-P1-TEORIA"
titulo: "Introducción a la programación: algoritmos, datos y estructura de un programa en Pascal"
slug: "introduccion-a-la-programacion"
tipo: "teoria"
unidad: 1
tema: "introduccion-a-la-programacion"
subtemas:
  - "algoritmo"
  - "dato"
  - "variable"
  - "constante"
  - "tipo-de-dato"
  - "estructura-de-un-programa-pascal"
  - "tipos-numericos-integer-real"
  - "operadores-div-mod"
  - "read-write"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-1/Practica 1 - AyPI - 2026.docx.pdf"
    paginas: "1"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/teorias/01 - Clase 1.pdf"
    paginas: "1-43"
prerrequisitos: []
relacionados:
  - "./README.md"
  - "./ejercicios.md"
  - "../practica-2/teoria.md"
---

# Introducción a la programación (Clase 1 / Práctica 1)

> Conversión de los conceptos teóricos presentados en la Clase 1 ("01 - Clase 1.pdf") y del enunciado de la Práctica 1. Se conserva el orden en que se presentan los temas en la clase.

## Contexto de la clase

La primera clase de la cátedra dedica sus diapositivas iniciales a la organización del curso (equipo docente, modalidad de trabajo — teorías asincrónicas por Moodle más clases de práctica —, régimen de aprobación por parcial práctico con dos recuperatorios o por examen final). Esa parte es administrativa y no se convierte aquí porque no aporta conocimiento técnico reutilizable; el resto de este documento cubre el contenido conceptual de la clase, que es el que sustenta la Práctica 1.

## Índice

1. [Análisis de problemas: informática, problema y algoritmo](#1-análisis-de-problemas-informática-problema-y-algoritmo)
2. [Paradigmas de programación](#2-paradigmas-de-programación)
3. [Etapas en la resolución de problemas](#3-etapas-en-la-resolución-de-problemas)
4. [Pre y post condiciones](#4-pre-y-post-condiciones)
5. [Dato, variable y constante](#5-dato-variable-y-constante)
6. [Estructura de un programa en Pascal](#6-estructura-de-un-programa-en-pascal)
7. [Tipo de dato: clasificación general](#7-tipo-de-dato-clasificación-general)
8. [Dato numérico: integer y real](#8-dato-numérico-integer-y-real)
9. [Operaciones de lectura y escritura: READ y WRITE](#9-operaciones-de-lectura-y-escritura-read-y-write)

## 1. Análisis de problemas: informática, problema y algoritmo

**Informática**: es la ciencia que estudia el análisis y resolución de problemas utilizando computadoras.

- **Ciencia**: se relaciona con una metodología fundamentada y racional para el estudio y resolución de los problemas. En este sentido la Informática se vincula especialmente con la Matemática y la Ingeniería.
- **Resolución**: se pueden utilizar las herramientas informáticas en aplicaciones de áreas muy diferentes tales como biología, comercio, control industrial, administración, robótica, educación, arquitectura, etc.
- **Computadora**: máquina digital y sincrónica, con cierta capacidad de cálculo numérico y lógico controlado por un programa almacenado y con probabilidad de comunicación con el mundo exterior. Ayuda al hombre a realizar tareas repetitivas en menor tiempo y con mayor exactitud. No razona ni crea soluciones, sino que ejecuta una serie de órdenes que le proporciona el ser humano.

**Objetivo de la informática**: resolver problemas del mundo real utilizando una computadora (utilizando un software).

**Problema**: cuestión, asunto o proposición dudosa que se trata de aclarar o resolver; requiere una solución. Enunciado encaminado a averiguar el modo de obtener un resultado cuando se conocen ciertos datos.

## 2. Paradigmas de programación

Los lenguajes de programación pueden clasificarse a partir del modelo que siguen para definir y operar información. Los cuatro paradigmas mencionados son: **funcional**, **imperativo**, **lógico** y **orientado a objetos**. Pascal, el lenguaje utilizado en esta cátedra, sigue el paradigma **imperativo-procedural**.

## 3. Etapas en la resolución de problemas

La resolución de un problema con una computadora atraviesa cuatro etapas:

```
Análisis → Diseño → Implementación → Verificación
```

1. **Análisis del problema**: ¿Qué necesita el usuario? (¿y qué dice que necesita?) ¿Con qué datos vamos a trabajar?
2. **Diseño de la solución**: ¿Qué partes componen la solución del problema? ¿Cómo se relacionan estas partes?
3. **Implementación**: traducir la solución anterior a algún lenguaje de programación.
4. **Verificación**: comprobar que la ejecución conduce al resultado deseado, con datos representativos del problema real.

## 4. Pre y post condiciones

- **Precondición**: es la información que se conoce como verdadera antes de iniciar el programa (o módulo).
- **Postcondición**: es la información que debería ser verdadera al concluir el programa (o módulo), si se cumplen adecuadamente los pasos especificados.

Un **algoritmo** es una secuencia ordenada de pasos elementales, exenta de ambigüedades, que lleva a la solución de un problema dado en un tiempo finito. Se denomina paso elemental aquel que no puede volver a ser dividido en otros más simples (instrucción). Los algoritmos no son exclusivos de la informática: la clase menciona ejemplos como un algoritmo para sacar dinero de un cajero automático, para reparar la llanta de un auto o para combinar fármacos según un protocolo médico.

## 5. Dato, variable y constante

Un **dato** es la representación de un elemento u objeto del mundo real, que los algoritmos procesan o modifican.

- **Variable**: es una zona de memoria cuyo contenido puede cambiar su valor durante la ejecución del programa.
- **Constante**: es una zona de memoria cuyo contenido NO puede cambiar su valor durante la ejecución del programa.

Notación:

- Declaración: `Identificador : tipo asociado`
- Asignación: `Identificador := valor a guardar`

```pascal
program ejemplo1;
var
  { declaramos dos variables }
  x, y : tipo;
begin
  { usamos las variables }
  x := ...;
  y := x;
end.
```

## 6. Estructura de un programa en Pascal

```pascal
Program nombre;

Const
  ...                 { Constantes del programa }

módulos              { luego se ve cómo se declaran; Módulos del programa }

Var
  ...                 { Variables del programa }

begin
  ...                 { Cuerpo del programa }
end.
```

Ejemplo completo con valores concretos:

```pascal
Program nombre;
Const
  N = 25;
  pi = 3.14;

{módulos; luego veremos cómo se declaran}

var
  edad: integer;
  peso: real;
  A: integer;
  B: real;

begin
  edad := 5;
  peso := -63.5;
  A := edad + N;
  B := pi * A;
end.
```

## 7. Tipo de dato: clasificación general

Un **tipo de dato** es una clase de objetos de datos ligados a un conjunto de operaciones para crearlos y manipularlos. Todo tipo de dato tiene:

- un rango de valores posibles;
- un conjunto de operaciones permitidas;
- una representación interna.

Clasificación:

```
TIPO DE DATO
├── SIMPLE (toma un único valor a la vez)
│   ├── definido por el lenguaje (integer, real, char, boolean, ...)
│   └── definido por el programador
└── COMPUESTO (puede tomar varios valores relacionados bajo un mismo nombre)
```

Un tipo de dato definido por el lenguaje es provisto por este, con representación, operaciones y valores reservados por el propio lenguaje.

## 8. Dato numérico: integer y real

El **dato numérico** representa el conjunto de números que se pueden necesitar. Estos números pueden ser enteros o reales.

### Tipo `integer` (entero)

- Es un tipo de dato simple, ordinal.
- Los valores son de la forma: `-10`, `200`, `-3000`, `2560`.
- Pueden tomar valores dentro de un rango predefinido dependiendo de la representación interna.

### Tipo `real`

- Es un tipo de dato simple, permite representar números con decimales.
- Los valores son de la forma: `-10`, `200`, `-3000`, `2560`, `11.5`, `-22.89`.
- Pueden tomar valores dentro de un rango predefinido dependiendo de la representación interna.

### Operadores

| Categoría | Operadores |
|---|---|
| Matemáticos | `+`  `-`  `*`  `/` |
| Lógicos (comparación) | `<`  `>`  `=`  `<=`  `=>` |
| Enteros | `mod` (resto), `div` (cociente entero) — solo aplican a `integer` |

`DIV` retorna el cociente entero de la división; `MOD` retorna el resto entero de la división. Por ejemplo, para `45 div 7` y `45 mod 7`:

```
45 = (7 x 6) + 3
```

- `45 div 7` → `6` (cociente entero)
- `45 mod 7` → `3` (resto entero de la división)

```pascal
program ejemplo;
var a, b, c, d: integer;
begin
  a := 45; b := 7;
  c := a DIV b;
  d := a MOD b;
end.
```

### Orden de precedencia

Cuando una expresión tiene dos o más operandos se aplican las reglas matemáticas habituales para determinar el orden:

1. operadores `*`, `/`, `div` y `mod`;
2. operadores `+`, `-`.

Si el orden natural de precedencia debe alterarse, se pueden usar paréntesis dentro de la expresión.

```pascal
program ejemplo;
var
  a, b: integer;
  c, d: real;
begin
  a := 22; b := 5;
  c := a / b + 3 * 2;
  d := a / (b + 3) * 2;
end.
```

## 9. Operaciones de lectura y escritura: READ y WRITE

### `READ`

Es una operación que contienen la mayoría de los lenguajes de programación. Se usa para tomar datos desde un dispositivo de entrada (por defecto desde teclado) y asignarlos a las variables correspondientes. El usuario ingresa un valor, y ese valor se guarda en la variable asociada a la operación `read`.

```pascal
Program uno;
var
  cant: integer;
Begin
  read (cant);
End.
```

### `WRITE`

Es una operación que contienen la mayoría de los lenguajes de programación. Se usa para mostrar el contenido de una variable, por defecto en pantalla. El valor almacenado en la variable asociada a la operación `write` se muestra en pantalla. `write` admite varias variantes: imprimir un texto literal, imprimir el valor de una variable, o combinar texto y variables (incluso expresiones) en una misma instrucción.

```pascal
Program uno;
var
  num: integer;
Begin
  read(num);
  ...
  write ('Los valores ingresados son 0');
  write (num);
  write ('El resultado es ', num);
  write ('El resultado es ', num * 2);
End.
```

> [!NOTE]
> La Práctica 1 introduce, además de `write`, la variante `writeln` (que agrega salto de línea) y `readln` (que agrega salto de línea al leer). Ambas variantes se usan de forma habitual en las soluciones de esta práctica, aunque la Clase 1 solo muestra explícitamente `read`/`write`.
