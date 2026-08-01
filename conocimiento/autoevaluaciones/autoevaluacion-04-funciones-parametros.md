---
id: "CADP-AUTOEVAL-04-funciones-parametros"
titulo: "Autoevaluación 4: funciones y paso de parámetros"
slug: "funciones-parametros"
tipo: "ejercicio"
tema: "funciones-y-procedimientos"
subtemas:
  - "funciones"
  - "parametros"
  - "paso-por-referencia"
  - "paso-por-valor"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-04-funciones-parametros.png"
relacionados:
  - "../practicas/practica-02-funciones/README.md"
  - "autoevaluacion-03-funciones-y-procedimientos.md"
---

# Autoevaluación 4: funciones y paso de parámetros

Autoevaluación de la LMS con 5 preguntas de opción múltiple/selección múltiple. Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-04-funciones-parametros.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-04-funciones-parametros.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable.

## Pregunta 1

El siguiente programa lee el DNI y el salario de los 5 empleados de una empresa, e imprime el DNI del empleado de mayor salario:

```pascal
program calcularMaximo;
procedure maximo (nuevoDNI, nuevoSalario: integer; var maxDNI : integer);
var
  maxSalario : integer;
begin
  maxSalario := -1;
  if (nuevoSalario >= maxSalario) then begin
    maxDNI := nuevoDNI;
    maxSalario := nuevoSalario;
  end;
end;
var
  i, salario, maxSalario, dni, maxDNI : integer;
begin
  maxSalario := -1;
  for i:=1 to 5 do begin
    readln(salario); readln(dni);
    maximo(dni, salario, maxDNI);
  end;
  writeln('El DNI del empleado que más cobra es ' , maxDNI);
end.
```

Opciones:

- [ ] El programa imprime correctamente el DNI del empleado que más gana
- [ ] El programa no funciona correctamente porque maxSalario debe inicializarse en un valor alto
- [x] **El programa no funciona porque en el procedimiento máximo, maxSalario debería ser un parámetro por referencia en lugar de ser una variable local del módulo. Además, maxSalario no debería inicializarse dentro de él** (respuesta correcta)
- [ ] El programa no funciona correctamente porque la comparación (nuevoSalario >= maxSalario) debería hacerse al revés

## Pregunta 2

Dada la siguiente función:

```pascal
function suma(x : integer) : integer;
var
  i, aux : integer;
begin
  aux := 0;
  for i:= 1 to x do
    aux := aux + i;
  suma := aux;
end;
```

¿Qué imprime la instrucción `writeln(suma(3))`?

- [x] **Imprime el valor 6** (respuesta correcta)
- [ ] Imprime el valor 3
- [ ] No funciona porque el valor 3 pasado por parámetro debe almacenarse en una variable antes de invocar a la función suma
- [ ] No funciona porque no se puede invocar a una función dentro de un writeln

## Pregunta 3

Dado el siguiente programa:

```pascal
program tres;
function esPar (num : integer) : boolean;
begin
  esPar := (num MOD 2 = 0);
end;
begin
  esPar(3);
  if (esPar) then
    writeln('El numero es par')
  else
    writeln('El numero NO es par');
end.
```

- [ ] Imprime 'El numero NO es par'
- [ ] Imprime 'El numero es par'
- [ ] No funciona porque la asignación esPar := (num MOD 2 = 0); es incorrecta
- [x] **No funciona porque no se invoca correctamente a la función esPar** (respuesta correcta)

## Pregunta 4

En las siguientes consignas, marque todas las opciones correctas:

- [x] **Dentro del cuerpo de una función se puede invocar a un proceso** (respuesta correcta)
- [x] **Dentro del cuerpo de un proceso se puede invocar a una función** (respuesta correcta)
- [x] **Dentro del cuerpo de una función de puede invocar a otra función** (respuesta correcta) [sic, así en el original]
- [x] **Dentro del cuerpo de un proceso se puede invocar a otro proceso** (respuesta correcta)

## Pregunta 5

Dado el siguiente programa:

```pascal
program ultimo;
function multiplicar (x, y : integer) : integer;
begin
  multiplicar := x*y;
end;
var
  i, total : integer;
begin
  total := 0;
  for i := 1 to 5 do
    total := total + multiplicar(i,total);
end;
writeln("la suma del producto de los números entre 1 y 5 es: ", total);
end.
```

> [!NOTE]
> La estructura `begin/end` de este bloque (incluido el `end;` que corta el `for` antes del `writeln`) está transcripta tal como aparece en la captura original.

- [ ] Imprime: La suma del producto de los números entre 1 y 5 es: 120
- [ ] Imprime: La suma del producto de los números entre 1 y 5 es: 15
- [x] **Imprime: La suma del producto de los números entre 1 y 5 es: 0** (respuesta correcta)
- [ ] No funciona, falta asignar la función multiplicar a una variable antes de sumar sobre la variable total

> [!NOTE]
> `total` arranca en 0 y en cada vuelta del `for` se le suma `multiplicar(i,total)`, que es `i * total`. Como `total` vale 0 en la primera vuelta, el producto da 0 y `total` nunca deja de ser 0 en las vueltas siguientes: por eso el resultado final es 0.
