---
id: "CADP-AUTOEVAL-09-memoria-estatica-dinamica"
titulo: "Autoevaluación 9: memoria estática y dinámica"
slug: "memoria-estatica-dinamica"
tipo: "ejercicio"
tema: "memoria-estatica-dinamica"
subtemas:
  - "memoria-estatica"
  - "memoria-dinamica"
  - "tiempo-de-ejecucion"
  - "analisis-empirico"
  - "correccion-de-programas"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../recursos/imagenes/autoevaluaciones/autoevaluacion-09-memoria-estatica-dinamica.png"
relacionados:
  - "../resumenes/memoria-estatica-dinamica-tiempo-ejecucion.md"
---

# Autoevaluación 9: memoria estática y dinámica

Autoevaluación de la LMS con 5 preguntas de opción múltiple. Transcripción fiel de los enunciados, el código y las respuestas marcadas como correctas (check verde) en la captura original: [`autoevaluacion-09-memoria-estatica-dinamica.png`](../../recursos/imagenes/autoevaluaciones/autoevaluacion-09-memoria-estatica-dinamica.png).

> [!NOTE]
> No se transcribe el bloque "Resumen de la corrección" (puntaje y tiempo de un intento particular de un alumno): es metadato de un intento individual, no contenido pedagógico reutilizable.

## Pregunta 1

Marque las proposiciones verdaderas:

- [ ] Una lista con 10 valores enteros siempre ocupa más memoria dinámica que lo que ocupa un vector en memoria estática con 10 valores enteros cargados.
- [ ] El costo de pasar una lista por valor es mayor que pasar un vector por referencia.
- [x] **El tiempo para recuperar un dato en un vector puede requerir la misma cantidad de accesos que para recuperar un dato en una lista.** (respuesta correcta)

## Pregunta 2

Marque las proposiciones verdaderas:

- [ ] Un programa modularizado es un programa correcto.
- [x] **Las técnicas de corrección se aplican en la etapa de verificación de un programa.** (respuesta correcta)
- [ ] Un programa correcto es eficiente.

## Pregunta 3

Marque la cantidad de bytes en memoria estática que ocupa el siguiente programa:

```pascal
program ejercicio3;
type
  cadena33= string[33];
  empleado = record
    dirCorreo: cadena33; edad: integer; sueldo: real;
  end;
  punt = ^empleado;
  vector = array [1..500] of punt;
  lista = ^nodo;
  nodo= record
    dato: empleado; sig: lista;
  end;

var
  v: vector; l: lista; emp: empleado; i:integer;
begin
  read(emp.dirCorreo, emp.edad, emp.sueldo);
  if (emp.edad < 40 and emp.sueldo < 40000) then
    for i:=1 to 10 do
      emp.sueldo:= (emp.sueldo + 10000) div 2
  else begin
    emp.sueldo:= emp.sueldo + 50000;
    emp.edad:= 30;
    emp.dirCorreo:= 'dirCorreo@dir.com';
  end;
  New(l); l^.dato:= emp; l^.sig:= nil;
end.
```

Tamaños de referencia usados en la cátedra (dados en el propio enunciado):

| Tipo | Tamaño |
|---|---|
| Char | 1 byte |
| Integer | 2 bytes |
| Real | 4 bytes |
| Boolean | 1 byte |
| String | longitud+1 byte |
| Puntero | 4 bytes |

- [ ] 2086 bytes
- [x] **2046 bytes** (respuesta correcta)
- [ ] 20046 bytes
- [ ] 2090 bytes

> [!NOTE]
> Cálculo (memoria estática, es decir, sin contar lo reservado por `New`): `v` = 500 punteros × 4 bytes = 2000; `l` = 1 puntero = 4; `emp` = cadena33 (33+1=34) + edad (2) + sueldo (4) = 40; `i` = 2. Total: 2000+4+40+2 = 2046 bytes.

## Pregunta 4

Marque las proposiciones verdaderas:

- [x] **La declaración de un tipo de dato, sin la declaración de una variable correspondiente, no debe ser considerado para el cálculo de la memoria.** (respuesta correcta)
- [ ] Una ventaja del análisis empírico es que es dependiente de la máquina en la que se ejecuta el algoritmo.
- [ ] Una condición en una estructura de control WHILE no es una operación elemental.

## Pregunta 5

Marque la cantidad de unidades de tiempo que consume el siguiente programa:

> [!NOTE]
> La captura original de esta pregunta no incluye el bloque `type` completo: el fragmento visible arranca en la última línea del registro `nodo`. Reutiliza las mismas declaraciones (`cadena33`, `empleado`, `punt`, `vector`, `lista`, `nodo`) que la pregunta 3 de esta misma autoevaluación.

```pascal
  ...
  empleado; sig: lista;
  end;

var
  v: vector; l: lista; emp: empleado; i:integer;
begin
  read(emp.dirCorreo, emp.edad, emp.sueldo);
  if (emp.edad < 40 and emp.sueldo < 40000)
  then for i:=1 to 3 do
      emp.sueldo:= emp.sueldo + 10000
  else begin
    emp.sueldo:= emp.sueldo + 50000 + (emp.edad * 0.2);
    emp.edad:= emp.edad + 1;
    emp.dirCorreo:= 'dirCorreo@dir.com';
  end;
  l:= nil;
end.
```

- [ ] 23 ut
- [ ] 11 ut
- [x] **22 ut** (respuesta correcta)
- [ ] 12 ut
