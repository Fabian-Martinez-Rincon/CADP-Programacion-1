---
id: "CADP-AUTOEVAL-01-variables-strings-case"
titulo: "Autoevaluación 1: variables, strings y CASE/FOR/SUBRANGO"
slug: "variables-strings-case"
tipo: "ejercicio"
tema: "variables-y-tipos-de-datos"
subtemas:
  - "variables"
  - "asignacion"
  - "strings"
  - "case"
  - "for"
  - "subrango"
  - "constantes"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-01-variables-strings-case.png"
relacionados:
  - "../practicas/practica-00-tipos-de-datos/README.md"
---

# Autoevaluación 1: variables, strings y CASE/FOR/SUBRANGO

Autoevaluación de la LMS (evaluación de autocorrección, sin límite de tiempo) con 5 preguntas de opción múltiple/selección múltiple. Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-01-variables-strings-case.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-01-variables-strings-case.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable.

## Pregunta 1

Dado el siguiente programa, seleccionar la opción correcta:

```pascal
program ejercicio;
var
  x: integer; y: real;
begin
  read(y);
  x := y;
  y := y * 2;
end.
```

Opciones:

- [ ] Falta inicializar la variable "x"
- [ ] No se puede leer un número de tipo real por teclado
- [x] **No se puede asignar la variable "y" a la variable "x"** (respuesta correcta)
- [ ] No se puede multiplicar la variable real "y" por el valor entero 2
- [ ] Ninguna de las opciones anteriores es válida

## Pregunta 2

¿Cuál o cuáles, de las siguientes expresiones, permiten asignar un valor a la variable "num" de tipo entero?

Opciones (selección múltiple):

- [x] **num := 9;** (respuesta correcta)
- [x] **read(num);** (respuesta correcta)
- [ ] write(num);
- [ ] if (num = 9) then ….
- [ ] repeat … until(num = 9);

## Pregunta 3

¿Qué par de valores imprime el siguiente programa? Seleccionar la opción correcta:

```pascal
program usandoString;
type
  cadena10 = string[10];
  cadena20 = string[20];

var
  pal1: cadena20;
  pal2: cadena10;

begin
  pal1 := 'San Martín cruzó los Andes';
  pal2 := pal1;
  writeln('pal1: ', pal1);
  writeln('pal2: ', pal2);
end.
```

Opciones:

- [x] **pal1: San Martín cruzó los Andes / pal2: San Martín** (respuesta correcta)
- [ ] pal1: San Martín cruzó los Andes / pal2: San Martín cruzó los Andes
- [ ] pal1: San Martín cruzó los / pal2: San Martín
- [ ] pal1: San Martín cruzó los / pal2: San Martín cruzó los

## Pregunta 4

Marcar cuáles de las siguientes afirmaciones son verdaderas (selección múltiple):

- [ ] La variable de decisión del CASE puede ser de tipo real
- [ ] La variable índice del FOR puede ser de tipo real
- [x] **El tipo base de un tipo SUBRANGO debe ser simple y ordinal** (respuesta correcta)
- [x] **Una constante no puede ser modificada en tiempo de ejecución** (respuesta correcta)

## Pregunta 5

Dado el siguiente enunciado: implementar un programa que lea números enteros e informe la cantidad de números leídos. La lectura finaliza al ingresar el número 100, que no debe procesarse. Seleccionar la opción que contiene el programa que resuelve correctamente el enunciado:

**Opción 1:**

```pascal
program ejercicio;
var num, suma, i: integer;
begin
  suma := 0;
  for i:= 1 to 100 do begin
    read(num);
    if (num <> 100) then
      suma := suma + num;
  end;
  write(suma);
end.
```

**Opción 2:**

```pascal
program ejercicio;
var num, suma: integer;
begin
  suma := 0;
  while (num <> 100) do begin
    read(num);
    if (num <> 100) then
      suma := suma + num;
  end;
  write(suma);
end.
```

**Opción 3:**

```pascal
program ejercicio;
var num, suma: integer;
begin
  suma := 0;
  while (num <> 100) do begin
    read(num);
    if (num <> 100) then
      suma := suma + num;
  end;
  write(suma);
end.
```

**Opción 4:**

```pascal
program ejercicio;
var num, suma: integer;
begin
  suma := 0;
  read(num);
  while (num <> 100) do begin
    suma := suma+1;
    read(num);
  end;
  write(suma);
end.
```

Respuesta:

- [ ] Opción 1
- [ ] Opción 2
- [ ] Opción 3
- [x] **Opción 4** (respuesta correcta)

> [!NOTE]
> Las opciones 1 a 3 acumulan la *suma* de los valores leídos (`suma := suma + num`), pero el enunciado pide la *cantidad* de números leídos; además la 2 y la 3 evalúan `num` en el `while` antes de haber leído ningún valor. La opción 4 usa lectura anticipada (`read` antes del `while`) y cuenta con `suma := suma+1`, que sí responde a lo pedido.
