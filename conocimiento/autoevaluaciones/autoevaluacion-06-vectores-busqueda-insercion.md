---
id: "CADP-AUTOEVAL-06-vectores-busqueda-insercion"
titulo: "Autoevaluación 6: vectores, búsqueda e inserción"
slug: "vectores-busqueda-insercion"
tipo: "ejercicio"
tema: "vectores"
subtemas:
  - "vectores"
  - "dimension-fisica-y-logica"
  - "busqueda-secuencial"
  - "busqueda-dicotomica"
  - "insercion"
  - "borrado"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-06-vectores-busqueda-insercion.png"
relacionados:
  - "../practicas/practica-04-arreglos/README.md"
  - "autoevaluacion-07-vectores-funciones.md"
---

# Autoevaluación 6: vectores, búsqueda e inserción

Autoevaluación de la LMS con 5 preguntas de selección múltiple ("marque las proposiciones verdaderas"). Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-06-vectores-busqueda-insercion.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-06-vectores-busqueda-insercion.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable. En estas 5 preguntas, el sistema evalúa la selección como todo-o-nada: marcar además una opción falsa anula el puntaje aunque se hayan marcado también las verdaderas.

## Pregunta 1

Marque las proposiciones verdaderas:

- [ ] La dimensión física de un vector puede variar durante la ejecución del programa.
- [ ] La dimensión lógica de un vector indica la cantidad de espacios sin utilizar en el vector.
- [x] **El índice de un vector puede ser de tipo char.** (respuesta correcta)

## Pregunta 2

Se leen nombres de personas y se guardan en un vector. La lectura finaliza al leer el nombre 'ZZZ' que no debe procesarse. Se cuenta con la siguiente declaración:

```pascal
const dimF = 1000;
Type
  nombres = string [15];
  vector = array [1..dimF] of nombres;
```

Indique la o las soluciones correctas:

**Opción A:**

```pascal
procedure CARGAR (var v: vector; var dimL: integer);
var dato: nombres;
begin
  dimL := 0;
  repeat
    read(dato);
    dimL:= dimL + 1;
    v[dimL] := dato;
  until (dato = 'ZZZ')
end;
```

**Opción B:**

```pascal
procedure CARGAR (var v: vector; var dimL: integer);
var dato: nombres;
begin
  dimL:= 0;
  read(dato);
  while (dato <> 'ZZZ') and (dimL < dimF) do begin
    dimL:= dimL + 1;
    v[dimL] := dato;
    read(dato);
  end;
end;
```

**Opción C:**

```pascal
procedure CARGAR (var v: vector; var dimL: integer);
var dato: nombres;
begin
  dimL:= 1;
  read(dato);
  while (dato <> 'ZZZ') and (dimL < dimF) do begin
    v[dimL] := dato;
    read(dato);
    dimL:= dimL + 1;
  end;
end;
```

**Opción D:**

```pascal
procedure CARGAR (v: vector; dimL: integer);
var dato: nombres;
begin
  dimL:= 0;
  read(dato);
  while (dato <> 'ZZZ') and (dimL < dimF ) do begin
    dimL:= dimL + 1;
    v[dimL] := dato;
    read(dato);
  end;
end;
```

Respuesta:

- [ ] Opción A — con `repeat/until` guarda `'ZZZ'` en el vector antes de evaluar la condición de corte
- [x] **Opción B** (respuesta correcta)
- [ ] Opción C — arranca `dimL:=1` e incrementa `dimL` después de leer el siguiente dato, por lo que la dimensión lógica final queda en `cantidad+1` en vez de `cantidad`
- [ ] Opción D — `v` y `dimL` no están declarados `var`, por lo que se pasan por valor y el vector cargado no se ve reflejado en el llamador

## Pregunta 3

Marque las proposiciones verdaderas:

- [ ] La búsqueda dicotómica se puede aplicar tanto a vectores ordenados como a vectores sin orden.
- [ ] En una búsqueda secuencial optimizada, si el elemento a buscar no se encuentra en el vector, se recorrerá siempre el vector hasta su dimensión lógica.
- [x] **En una búsqueda secuencial, si el elemento a buscar no se encuentra en el vector, se recorrerá siempre el vector hasta su dimensión lógica.** (respuesta correcta)

## Pregunta 4

Marque las proposiciones verdaderas:

- [ ] Siempre es posible Agregar un elemento en un vector.
- [x] **Para insertar un elemento en una posición válida del vector, que tiene espacio suficiente, al menos un elemento del vector se debe desplazar.** (respuesta correcta)
- [ ] En una operación de Agregar/Insertar siempre se incrementa la dimensión lógica.

## Pregunta 5

Marque las proposiciones verdaderas para la operación de Borrar un elemento en un vector:

- [ ] Siempre es posible borrar un elemento de un vector.
- [ ] Para borrar un elemento en una posición válida del vector, es necesario al menos realizar un desplazamiento de un elemento.
- [x] **El desplazamiento se inicia a partir del elemento que se encuentra en la posición siguiente al elemento a borrar.** (respuesta correcta)
