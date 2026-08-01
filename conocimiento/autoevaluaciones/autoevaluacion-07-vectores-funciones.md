---
id: "CADP-AUTOEVAL-07-vectores-funciones"
titulo: "Autoevaluación 7: vectores como parámetro de funciones"
slug: "vectores-funciones"
tipo: "ejercicio"
tema: "vectores"
subtemas:
  - "vectores"
  - "paso-de-vectores-por-parametro"
  - "funciones"
  - "vectores-de-registros"
  - "vectores-con-indice-no-numerico"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-07-vectores-funciones.png"
relacionados:
  - "../practicas/practica-04-arreglos/README.md"
  - "autoevaluacion-06-vectores-busqueda-insercion.md"
---

# Autoevaluación 7: vectores como parámetro de funciones

Autoevaluación de la LMS con 5 preguntas de opción múltiple/selección múltiple. Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-07-vectores-funciones.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-07-vectores-funciones.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable.

## Pregunta 1

Dado el siguiente programa:

```pascal
program vectores;
type
  vector = array [1..10] of integer;
var
  v : vector;
  i : integer;
begin
  for i:= 1 to 5 do
    v[i] := i;
  for i:= 1 to 10 do
    writeln(v[i]);
end.
```

¿Qué imprimirá el programa?

- [x] **Imprimirá los valores 1 a 5 y luego imprimirá basura** (respuesta correcta)
- [ ] Sólo imprimirá los valores 1 a 5
- [ ] El programa no compila: se están accediendo a posiciones del vector que no fueron inicializadas
- [ ] El programa compila pero no imprime nada

## Pregunta 2

Dada la siguiente función:

```pascal
type
  vector = array [1..10] of integer;

function maximo(v : vector) : integer;
var
  i, max,posmax : integer;
begin
  max := -1;
  for i:= 1 to 10 do
    if (v[i] > max) then begin
      max := v[i];
      posmax := i;
    end;
  maximo := v[posmax];
end;
```

Considerando que el vector V sólo posee números enteros positivos, marque todas las respuestas correctas:

- [ ] La función es incorrecta. Debería devolver un integer pero devuelve un vector.
- [ ] No se puede pasar un vector como parámetro por valor en una función.
- [x] **Al pasar un vector como parámetro por valor, se genera una copia completa de dicho vector en la pila de ejecución.** (respuesta correcta)
- [ ] La función no funcionará porque no se ha inicializado la variable posmax

## Pregunta 3

Dado el siguiente código:

```pascal
type
  vector = array[1..100] of boolean;

procedure cargarVector(var v:vector; var dimL:integer);
begin
  { carga el vector v y retorna su dimensión lógica dimL }
end;
var
  v : vector;
  dimL : integer;
begin
  cargarVector(v,dimL);
  if ( dimL > 0) and (v[dimL]) then
    writeln('ok');
end.
```

Marque todas las opciones correctas:

- [ ] El tamaño del vector v en la memoria puede variar dependiendo del valor de dimL
- [ ] No se pueden declarar vectores de booleans
- [ ] No se puede utilizar un elemento del vector como condición del if
- [x] **El programa es correcto** (respuesta correcta)
- [ ] El programa funciona sólo si el vector no está lleno ni vacío.

## Pregunta 4

Dado el siguiente programa:

```pascal
program vectores;
type
  alumno = record
    codigo : integer;
    nombre : string;
  end;
  vector = array[1..50] of alumno;

function tieneCodigoPar(a : alumno ) : boolean
begin
  tieneCodigoPar := (a.codigo MOD 2 = 0);
end;
var
  v : vector;
  i : integer;
begin
  cargarvector(v); //carga 50 alumnos en el vector v
  for i:= 1 to 50 do
    if ( tieneCodigoPar(v) ) then
      writeln(v[i].nombre);
end.
```

Indique la opción correcta:

- [ ] El programa es correcto e imprime el nombre de todos los alumnos con código par
- [ ] La función tieneCodigoPar debería retornar un boolean, en vez de un número
- [ ] La función tieneCodigoPar está mal declarada
- [x] **La función tieneCodigoPar está mal invocada** (respuesta correcta)
- [ ] No se puede ejecutar un writeln sobre los elementos de un vector

> [!NOTE]
> `tieneCodigoPar` está declarada para recibir un `alumno` (`a : alumno`), pero se invoca como `tieneCodigoPar(v)` pasando el vector completo en lugar de un elemento `v[i]`.

## Pregunta 5

Dado el siguiente programa:

```pascal
program vectores;
type
  vector = array ['a' .. 'm'] of real;
var
  v, w : vector;
  a : char;
begin
  a := 'p';
  cargarVector(v); //carga todo el vector v
  if (v[a] > 3.14) then
    w := v;
end.
```

Marque todas las opciones correctas:

- [ ] Hay un error en el type: no se pueden utilizar caracteres como índices de un vector de reales.
- [ ] Hay un error en el type: los elementos de un vector sólo pueden ser de tipos ordinales.
- [ ] Hay un error de tipos en el if: no se pueden comparar elementos de un vector de índices de tipo char con valores reales.
- [x] **Hay un error en el if: el índice indicado no existe en el vector** (respuesta correcta)
- [ ] Hay un error en la asignación w:=v. Debe realizarse elemento por elemento.

> [!NOTE]
> El vector está indexado en el rango `'a'..'m'`, pero `a` vale `'p'`, que queda fuera de ese rango.
