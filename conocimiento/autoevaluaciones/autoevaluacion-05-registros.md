---
id: "CADP-AUTOEVAL-05-registros"
titulo: "Autoevaluación 5: registros"
slug: "registros"
tipo: "ejercicio"
tema: "registros"
subtemas:
  - "registros"
  - "paso-de-registros-por-parametro"
  - "asignacion-de-registros"
  - "funciones-que-retornan-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-05-registros.png"
relacionados:
  - "../practicas/practica-03-registros/README.md"
---

# Autoevaluación 5: registros

Autoevaluación de la LMS con 5 preguntas de opción múltiple. Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-05-registros.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-05-registros.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable.

## Pregunta 1

Dado el siguiente código:

```pascal
program ejercicio;
type
  alumno = record
    dni : integer;
    edad : integer;
  end;

procedure leerAlumno(var a:alumno);
begin
  writeln('Ingrese el DNI y la edad del alumno');
  readln(a);
end;
var
  a : alumno;
  i : integer;
begin
  for i:= 1 to 5 do begin
    leerAlumno(a);
    writeln(a.dni);
    writeln(a.edad);
  end;
end.
```

- [ ] El programa es correcto
- [ ] El programa es incorrecto. No se puede pasar un registro como parámetro a un módulo
- [x] **El programa es incorrecto. La lectura del registro debe hacerse campo a campo.** (respuesta correcta)
- [ ] El programa es incorrecto. No se puede imprimir los campos de un registro
- [ ] El programa es incorrecto. Falta inicializar la variable a en el programa principal

## Pregunta 2

Dado el siguiente código:

```pascal
type
  alumno = record
    dni : integer;
    edad : integer;
  end;

procedure intercambio(var a1, a2 : alumno);
var
  a3 : alumno;
begin
  a3 := a2;
  a2 := a1;
  a1 := a3;
end;
```

- [x] **El módulo intercambia correctamente los valores de los registros a1 y a2** (respuesta correcta)
- [ ] El módulo es incorrecto porque no se pasa el registro a2 por referencia
- [ ] El código es incorrecto porque la variable a3 se elimina al finalizar la ejecución del módulo
- [ ] El código es incorrecto porque no se pueden asignar registros directamente, debe hacerse campo por campo.

## Pregunta 3

Dada la siguiente función:

```pascal
type
  alumno = record
    dni : integer;
    edad : integer;
  end;

function alumnoMasViejo(a1, a2: alumno) : alumno;
var
  aux : alumno;
begin
  if (a1.edad >= a2.edad) then
    aux := a1
  else
    aux := a2;
  alumnoMasViejo := aux;
end;
```

- [ ] El módulo es correcto y retorna al alumno de mayor edad
- [ ] El módulo es incorrecto: una función no puede recibir registros como parámetros
- [ ] El módulo es incorrecto: no se puede asignar directamente un registro a la variable aux. Debe hacerse campo por campo.
- [x] **El módulo es incorrecto. Una función no puede retornar un registro, sólo puede retornar tipos simples.** (respuesta correcta)
- [ ] El módulo es incorrecto. Falta inicializar la variable aux.

## Pregunta 4

La siguiente función debe retornar true si el DNI del alumno finaliza en 10, o false en caso contrario:

```pascal
type
  alumno = record
    dni : integer;
    edad : integer;
  end;

function finalizaEn10(var a : alumno) : boolean;
begin
  finalizaEn10 := (a.DNI MOD 100 = 0)
end;
```

- [ ] La función es correcta.
- [ ] La función es incorrecta, ya que retorna el resultado de una operación aritmética en vez de un boolean.
- [ ] La función es incorrecta: no se puede ejecutar MOD con el valor 100.
- [x] **La función es incorrecta: no se puede pasar un registro como parámetro por referencia en una función.** (respuesta correcta)
- [ ] La función es incorrecta: no se puede acceder al campo DNI del parámetro a dentro de la función.

## Pregunta 5

Dado el siguiente código:

```pascal
type
  alumno = record
    dni : integer;
    edad : integer;
  end;
  docente = record
    dni : integer;
    antigüedad : integer;
  end;
var
  a : alumno;
  d : docente;
begin
  readln(a.dni);
  readln(a.edad);
  d := a;
end.
```

- [ ] El programa es correcto
- [ ] El programa es incorrecto: no se pueden asignar dos registros directamente
- [x] **El programa es incorrecto: no se pueden asignar las variables a y d porque son de distinto tipo** (respuesta correcta)
- [ ] El programa es incorrecto: no se inicializó la variable d
- [ ] El programa es incorrecto: no se debe leer la variable a campo por campo.
