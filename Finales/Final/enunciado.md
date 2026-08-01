---
id: "CADP-FINAL-ORAL-5-PREGUNTAS"
titulo: "Final CADP - examen oral/virtual de 5 preguntas"
slug: "final-cadp-oral-5-preguntas"
tipo: "final"
tema: "eficiencia-y-estructuras-de-datos"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "pautas-del-examen.png"
  - archivo: "pregunta-1-agregar-al-final-lista.png"
  - archivo: "pregunta-2-parametros-por-referencia.png"
  - archivo: "pregunta-3-verdadero-falso.png"
  - archivo: "pregunta-4-vector-posiciones-impares.png"
  - archivo: "pregunta-5-memoria-y-tiempo.png"
codigo_relacionado:
  - "5.pas"
---

# Final CADP - examen oral/virtual de 5 preguntas

Sin fecha explícita en las capturas. Por el formato (diapositivas mostradas una por una, mención a grabación de la sesión y carga de nota en Siu-Guaraní) parece ser un final tomado de forma oral/virtual, con preguntas presentadas secuencialmente.

## Pautas del examen

- Se presentará pregunta por pregunta hasta llegar a un total de 5 preguntas.
- Para cada pregunta tendrá especificado un tiempo para dar su respuesta sin ser interrumpido/a por el docente.
- Una vez finalizado el tiempo o concluida su respuesta, se pasará a la siguiente pregunta.
- Finalizado el examen, su nota no será comunicada en ese instante. La misma será subida a *Siu-Guaraní* en los días posteriores.
- Toda la sesión del examen final quedará grabada para su posterior corrección y/o revisión.

## Pregunta 1 — agregar al final de una lista

Dada la siguiente declaración y los siguientes módulos, indique qué opción o qué opciones **agrega** un elemento al **final de la lista** recibida. Explique su decisión.

```pascal
type
  lista = ^nodo;
  nodo = record
    dato: integer;
    sig: lista;
  end;
```

Opción A:
```pascal
Procedure agregar(var l: lista; var ult: lista; elem: integer);
var nue: lista;
begin
  nue^.dato := elem; nue^.sig := nil;
  if (l = nil) then l:= nue
  else ult^.sig := nue;
  ult := nue;
end;
```

Opción B:
```pascal
Procedure agregar(var l: lista; var ult: lista; elem: integer);
var nue: lista;
begin
  new(nue); nue^.dato := elem; nue^.sig := nil;
  if (l = nil) then l:= nue
  else ult^.sig := nue;
  ult := nue;
end;
```

Opción C:
```pascal
Procedure agregar(var l: lista; var ult: lista; elem: integer);
var nue: lista; ult: lista;
begin
  new(nue); nue^.dato := elem; nue^.sig := nil;
  ult:= l;
  while (ult <> nil) do
      ult:= ult^.sig;
  ult^.sig:= nue;
end;
```

## Pregunta 2 — parámetros por referencia

Qué valores se imprimen en las sentencias *writeln* si se lee en la variable "DNI" su número de documento.

```pascal
program ejercicio2;

  procedure calcular (var total: integer; var dig3: integer; var dig1: integer; dig2: integer);

  begin {calcular}
    total := dig1 + (dig2 MOD 3);
    dig3 := dig3 + (total DIV 2);
  end;

var
  DNI, dig1, dig2, dig3, total: integer;

begin {programa principal}
  readln(DNI);
  dig1 := DNI MOD 10;
  dig2 := DNI MOD 100;
  dig3 := DNI MOD 1000;
  total := 0;
  calcular (total, dig1, dig2, dig3);
  end;
  writeln ("total = ", total);
  writeln (" dig1 = ", dig1);
  writeln (" dig2 = ", dig2);
  writeln (" dig3 = ", dig3);
end.
```

> [!WARNING]
> El `end;` que aparece justo después de `calcular (total, dig1, dig2, dig3);` y antes de los cuatro `writeln` está tal cual en la diapositiva original (`pregunta-2-parametros-por-referencia.png`): cierra el bloque principal antes de los `writeln`, dejándolos sintácticamente fuera de cualquier bloque, y el programa vuelve a cerrar con `end.` al final. No se pudo determinar si es un error de la cátedra al armar la diapositiva o un recorte/composición de dos fragmentos de código. Se transcribe exactamente como figura en la imagen, sin corregir ni reordenar. Además el enunciado usa comillas dobles tipográficas (`"total = "`) en los `writeln`, que no es la sintaxis estándar de cadenas en Pascal (comilla simple `'...'`); también se transcribe tal cual.

## Pregunta 3 — verdadero o falso

Indicar para cada proposición si es **verdadera** o **falsa** y justificar.

a) Todas las operaciones permitidas para variables de tipo entero, también son permitidas para variables de tipo real.
b) Siempre es posible reemplazar un **FOR** por un **WHILE** y viceversa.
c) En la técnica de corrección de *debugging* es necesario analizar los casos límites del problema.

## Pregunta 4 — vector de posiciones impares

Dado un vector de valores enteros (con dimensión física de 100), implementar un módulo que reciba dicho vector y devuelva otro vector que contenga solamente aquellos valores que se encuentren en posiciones impares del vector recibido. **Declare todos los tipos de datos necesarios.**

## Pregunta 5 — memoria y tiempo

Teniendo en cuenta la siguiente tabla, calcule e indique la cantidad de memoria estática y dinámica que utiliza el siguiente programa y su tiempo de ejecución.

Tabla de referencia: Char = 1 byte, Integer = 6 bytes, Real = 8 bytes, Boolean = 1 byte, String = longitud + 1 byte, Puntero = 4 bytes.

```pascal
program ejercicio5;
type
  cadena25 = string[25];
  empleado = record
    dirCorreo: cadena25; edad: integer; sueldo: real;
  end;
  vector = array [1..100] of empleado;
  datos = ^vector;
var
  v: vector; d: datos; e: empleado; i: integer; suma: real;
begin
  new(d);
  for i:= 1 to 100 do begin
    read(e.dirCorreo, e.edad, e.sueldo);
    d^.[i] := e;
  end;
  d^.[4].sueldo := d^.[4].sueldo + 1000;
end.
```

> [!WARNING]
> La tabla de tamaños de tipos que muestra la captura (`Integer = 6 bytes`) es inusual (lo habitual en el resto de este archivo, ver `Finales/Final-Escrito-Diciembre-2025/readme.md`, es `Integer = 4 bytes`); se transcribe tal cual figura en la imagen de esta pregunta puntual, sin corregirla, ya que puede ser un valor de referencia distinto usado a propósito por la cátedra en este examen.

## Solución

[`5.pas`](5.pas) (`program pregunta5`) es un intento de solución, pero corresponde en realidad a la **pregunta 4** (vector de posiciones impares), no a la 5 (que no pide código, sino un cálculo de memoria/tiempo sobre papel). Además tiene un error de lógica:

> [!WARNING]
> El enunciado de la pregunta 4 pide devolver los **valores que están en posiciones impares** del vector (por ejemplo, `a1[1]`, `a1[3]`, `a1[5]`, …). El código de `5.pas`, en cambio, en el procedimiento `impares`, evalúa `if (a1[i] mod 2) = 1` (si el **valor** es impar, no la posición) y guarda el índice `i` en el vector resultado en lugar del valor `a1[i]`. Es decir, resuelve un problema distinto ("posiciones donde hay valores impares") al que pide el enunciado ("valores en posiciones impares").

No hay código para las preguntas 1, 2 o 3 (son de análisis/justificación, no piden implementación), ni una solución para la pregunta 5. Estado: intento de la pregunta 4, con errores de lógica y de correspondencia con el enunciado.
