---
id: "CADP-AUTOEVAL-03-funciones-y-procedimientos"
titulo: "Autoevaluación 3: funciones y procedimientos"
slug: "funciones-y-procedimientos"
tipo: "ejercicio"
tema: "funciones-y-procedimientos"
subtemas:
  - "funciones"
  - "procedimientos"
  - "modularizacion"
  - "comunicacion-entre-modulos"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-03-funciones-y-procedimientos.png"
relacionados:
  - "../practicas/practica-02-funciones/README.md"
  - "autoevaluacion-04-funciones-parametros.md"
---

# Autoevaluación 3: funciones y procedimientos

Autoevaluación de la LMS con 5 preguntas de opción múltiple/selección múltiple. Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-03-funciones-y-procedimientos.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-03-funciones-y-procedimientos.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable.

## Pregunta 1

Según los conceptos vistos en la clase teórica, indique cuál de las siguientes funciones es válida:

**Opción 1:**

```pascal
function division(num1, num2: char): real;
begin
  division := num1 / num2;
end;
```

**Opción 2:**

```pascal
function division(num1, num2: integer; var resul: real): real;
begin
  resul := num1 / num2;
  division := resul;
end;
```

**Opción 3:**

```pascal
function division(num1, num2: integer): char;
begin
  division := num1 / num2;
end;
```

**Opción 4:**

```pascal
function division (num1, num2: integer): real;
begin
  division:= num1 / num2;
end
```

Respuesta:

- [ ] Opción 1
- [ ] Opción 2
- [ ] Opción 3
- [x] **Opción 4** (respuesta correcta)

## Pregunta 2

Desde el punto de vista de la comunicación entre módulos/programa, seleccione las afirmaciones válidas:

- [ ] La comunicación entre módulos se realiza a través de variables locales
- [x] **Un módulo puede contener otros módulos implementados internamente.** (respuesta correcta)
- [ ] La comunicación entre un módulo y el programa principal no es posible realizarla a través de variables globales.
- [ ] Un parámetro por valor recibido por un procedimiento no puede ser modificado dentro del mismo.

## Pregunta 3

Según el módulo especificado (`function comparar(x, y: integer): boolean;`, declarado igual en las 4 opciones), indique cuál/cuáles invocaciones son válidas:

**Opción 1:**

```pascal
program prueba;
var num: integer;
function comparar(x, y: integer): boolean;
begin
  ......
end;
begin
  num := 8;
  num := comparar(num, num);
end.
```

**Opción 2:**

```pascal
program prueba;
var num: integer;
function comparar(x, y: integer): boolean;
begin
  ......
end;
begin
  comparar (4,6);
end.
```

**Opción 3:**

```pascal
program prueba;
var num: integer; ok: boolean;
function comparar(x, y: integer): boolean;
begin
  ......
end;
begin
  read (num);
  Ok := comparar (num,8);
end.
```

**Opción 4:**

```pascal
program prueba;
var a,b: real;
function comparar(x, y: integer): boolean;
begin
  ......
end;
begin
  Read (a, b);
  Write (comparar (a,b));
end.
```

Respuesta:

- [ ] Opción 1 — asigna el resultado booleano de `comparar` a `num`, que es `integer` (tipos incompatibles)
- [ ] Opción 2 — invoca la función como si fuera un procedimiento, descartando el valor booleano que retorna
- [x] **Opción 3** (respuesta correcta) — `Ok` es `boolean`, igual que el retorno de `comparar`
- [ ] Opción 4 — pasa `a` y `b` (`real`) a parámetros `x, y` declarados `integer`

## Pregunta 4

Seleccione en cuáles aspectos se diferencian los módulos Procedure y Function (selección múltiple):

- [x] **1. Encabezamiento** (respuesta correcta)
- [ ] 2. Cantidad máxima de parámetros de entrada que reciben
- [x] **3. Invocación** (respuesta correcta)
- [ ] 4. Posibilidad de declarar tipos de datos locales
- [x] **5. Punto de retorno luego de su ejecución** (respuesta correcta)
- [x] **6. Cantidad de datos que devuelven** (respuesta correcta)

## Pregunta 5

Un módulo Function puede retornar un tipo de dato ordinal.

- [x] **Verdadero** (respuesta correcta)
- [ ] Falso
