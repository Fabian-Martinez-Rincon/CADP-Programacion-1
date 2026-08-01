---
id: "CADP-MEMORIA-TIEMPO-EJERCICIOS-RESUELTOS"
titulo: "Memoria estática, memoria dinámica y tiempo de ejecución: dos ejercicios resueltos"
slug: "memoria-estatica-dinamica-tiempo-ejecucion"
tipo: "ejemplo"
tema: "memoria-estatica-dinamica"
subtemas:
  - "tiempo-de-ejecucion"
  - "punteros"
  - "listas"
  - "vectores"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "original"
codigo_relacionado:
  - "../../codigo/ejemplos/generales/memoria-comparacion-opcion-a-lista.pas"
  - "../../codigo/ejemplos/generales/memoria-comparacion-opcion-b-vector.pas"
relacionados:
  - "ejemplos-memoria-y-tiempo.md"
  - "../practicas/practica-05-punteros/teoria.md"
---

> Este contenido vivía en el `README.md` de la raíz del repositorio (era el cuerpo principal de la página). Se trasladó aquí para separar la navegación del contenido educativo; el texto y el análisis son los originales, solo se les agregaron estos metadatos.

## 1) Teniendo en cuenta la tabla, calcular la memoria estática, dinámica y el tiempo de ejecución

| Tipo de Dato | Memoria |
| ------------- | ------------- |
| Char  | 1 byte  |
| Integer  | 6 byte  |
| Real  | 8 byte  |
| Boolean  | 1 byte  |
| String  | Longitud + 1 byte  |
| Puntero  | 4 byte  |

```Pascal
program Problema;
type
  cadena35 = string[35];
  empleado = record
    dirCorreo: cadena35;
    edad: integer;
    sueldo:real;
  end;

  punt = ^empleado;
  vector = array [1..500] of punt;

  lista = ^nodo;
  nodo = record
    dato: empleado;
    sig: lista;
  end;

var
  v:vector;
  l,aux:lista;
  emp:empleado;
  i:integer;
begin
  l:=nil;
  for i:=1 to 10 to
  begin
    read(emp.dirCorreo, emp.edad, emp.sueldo);
    if (emp.edad < 40) and (emp.sueldo < 40000) then
      exp.sueldo:= exp.sueldo + 7000;
    new(aux);
    aux^.dato := emp;
    aux^.sig: := l;
    l := aux;
  end;
end.
```

### Resolución

La tabla del inicio puede variar dependiendo la pc o los profesores que te toquen ya que en este caso es teorico.

#### Memoria Estática

Es la suma de las variables declaradas en el `Var` del programa principal.
En este ejemplo sería:

```Pascal
var
  v:vector;
  l,aux:lista;
  emp:empleado;
  i:integer;
```

Hacemos los cálculos:

```
v:vector; 500 * 4b (Al ser un puntero, siempre vale lo que nos marca en la tabla, aunque apunte a otras variables)
2000 bytes
l,aux:lista; 4b + 4b = 8 bytes
emp:empleado;
i:integer;
```

Recordemos que:

```Pascal
empleado = record
  dirCorreo: cadena35;    (35 + 1b)
  edad: integer;   6b
  sueldo:real;    8b
end:
```

Nos quedaría:

```
v:vector; 2000b
l,aux:lista; 8 bytes
emp:empleado;  (35 + 1b) + 6b + 8b = 50 bytes
i:integer; 6b
```

`Dimension Fisica` = `v + l,aux + emp + i`

`Dimension Fisica` = `2000b + 8b + 50b + 6b`

`Dimension Fisica` = `2064 bytes`

#### Memoria Dinámica

La memoria dinámica se empieza a calcular a partir del primer `new();`, en caso de no encontrarse en el programa no tendríamos que hacer ninguna operación. Y así como se suma memoria dinámica con el `new();` se resta (libera) con el `Dispose();`.

```Pascal
for i:=1 to 10 to
  begin
    read(emp.dirCorreo, emp.edad, emp.sueldo);
    if (emp.edad < 40) and (emp.sueldo < 40000) then
      exp.sueldo:= exp.sueldo + 7000;
    new(aux); <-------------------------- Aux fue declarado como lista y lista es un puntero a nodo
    aux^.dato := emp;
    aux^.sig: := l;
    l := aux;
  end;
```

Recordemos que:

```Pascal
lista = ^nodo;
  nodo = record
    dato: empleado; 50 bytes (Ya lo calculamos arriba)
    sig: lista; 4 bytes (Puntero)
  end;  50b + 4b = 54 bytes
```

Concluimos que el `new(aux)` es `54 bytes` y al estar dentro de un for que va hasta 10, lo que tenemos que hacer es:

`Memoria Dinamica` = `54b * 10`

`Memoria Dinamica` = `540 bytes`

#### Tiempo de Ejecución

| Codigo | Tiempo (ut) |
| ------------- | ------------- |
| readln();   | 0ut  |
| writeln();  | 0ut  |
| else  | 0ut + contenido  |
| x := 0;  | 1ut  |
| x := y;  | 1ut  |
| new();  | 0ut  |
| Dispose();  | 0ut  |
| l:=nil;  | 1ut  |
| x := y (+,-,\*,/,mod,div) x;  | 2ut  |
| if () then  | (1ut por op.elem) + contenido (<,>,<>,=,or,and,not,/,\*,+,-) |
| for i:=1 to n  | ((3\*n+2)ut) + (n \* contenido)  |
| while() do  | (n + 1ut por op.elem) + (n \* contenido) |
| repeat until() | Ni idea  |
| case ():  | Ni idea :D (HELP!)  |

> [!NOTE]
> Las dos últimas filas de la tabla ("Ni idea") son del autor original — se conservan tal cual porque documentan honestamente hasta dónde llegaba el análisis, no un vacío de la conversión.

Ya sabiendo lo anterior, solo nos quedaría hacer las operaciones:

```Pascal
begin
  l:=nil;  1ut
  for i:=1 to 10 to   (3*10+2)
  begin
    read(emp.dirCorreo, emp.edad, emp.sueldo);   0ut
    if (emp.edad < 40) and (emp.sueldo < 40000) then   (1ut + 1ut + 1ut)
      exp.sueldo:= exp.sueldo + 7000;   2ut
    new(aux); 1ut
    aux^.dato := emp; 1ut
    aux^.sig: := l; 1ut
    l := aux;    1ut
  end;
end.
```

Nos quedaría:

`Tiempo de ej` = `1ut + ((3*10+2) + (((1ut + 1ut + 1ut) + 2ut) + 1ut + 1ut + 1ut + 1ut) * 10)`

`Tiempo de ej` = `1ut + ((3*10+2) + (((3ut) + 2ut) + 4ut)*10)`

`Tiempo de ej` = `1ut + ((32ut) + (9ut)*10)`

`Tiempo de ej` = `1ut + ((32ut) + 90ut)`

`Tiempo de ej` = `1ut + (122ut)`

`Tiempo de ej` = `123ut`

## 2) Cuál de las dos opciones consume menos memoria total (memoria estática + memoria dinámica)

| Dato | Memoria |
| ------------- | ------------- |
| Char  | 1 byte  |
| Integer  | 6 byte  |
| Real  | 8 byte  |
| Boolean  | 1 byte  |
| String  | Long + 1 byte  |
| Puntero  | 4 byte  |

### Opción A (lista enlazada)

Código completo: [`memoria-comparacion-opcion-a-lista.pas`](../../codigo/ejemplos/generales/memoria-comparacion-opcion-a-lista.pas) — captura de pantalla original: [`codigo-opcion-a-lista-enlazada.png`](../../recursos/imagenes/generales/codigo-opcion-a-lista-enlazada.png)

```Pas
program opcion_A;
type
    lista = ^nodo;
    nodo = record
        dato:integer;
        sig:lista;
    end;
var
    l,nue:lista;
    i:integer;
begin
    l:=Nil;
    for i:=l to 6 do begin
        new(nue);
        nue^.dato:=i;
        nue^.sig:=l;
        l:=nue;
    end;
end.
```

**Memoria estática:**

```Pas
var
    l,nue:lista; 4b + 4b = 8bytes
    i:integer; 6bytes
```

Memoria Estática = `14 bytes`

**Memoria dinámica:**

```Pas
begin
    l:=Nil;
    for i:=l to 6 do begin
        new(nue); 4bytes + (6bytes) = 10 bytes
        nue^.dato:=i;
        nue^.sig:=l;
        l:=nue;
    end;
    6 * 10b
end.
```

Memoria Dinámica = `(6*10)` = `60 bytes`

**Memoria Total (A)** = `60b + 14b` = `74 bytes`

### Opción B (vector)

Código completo: [`memoria-comparacion-opcion-b-vector.pas`](../../codigo/ejemplos/generales/memoria-comparacion-opcion-b-vector.pas) — captura de pantalla original: [`codigo-opcion-b-vector.png`](../../recursos/imagenes/generales/codigo-opcion-b-vector.png)

```Pas
program opcion_B;
type
    vector = array [1..10] of integer;
var
    v:vector;
    i,dimL:integer;
begin
    dimL:=0;
    for i:=1 to 6 do begin
        dimL:=dimL + 1;
        v[i]:=i;
    end;
end.
```

**Memoria estática:**

```Pas
var
    v:vector; 10*6 = 60 b
    i,dimL:integer; 6 + 6  = 12 b
```

Memoria Estática = `72 bytes`

**Memoria dinámica:**

```Pas
begin
    dimL:=0;
    for i:=1 to 6 do begin
        dimL:=dimL + 1;
        v[i]:=i;
    end;
end.
```

Memoria Dinámica = No tiene :D

**Memoria Total (B)** = `72 bytes`

### Justificación

- La opción **A** es la que ocupa menos memoria, ya que en la opción B, con tan solo la memoria estática, esta ya supera a la A en memoria total.

> [!WARNING]
> El programa de la Opción A tiene un error de tipeo del original: `for i:=l to 6` usa la letra `l` en vez del número `1` (así estaba en el `README.md` original; se preserva tal cual en lugar de "corregirlo" silenciosamente). Además, el nombre del programa difiere levemente entre las dos copias del mismo ejemplo que existían en el repositorio: el bloque de código pegado en el `README.md` (reproducido arriba) dice `program opcion_A;`, mientras que el archivo `.pas` independiente vinculado dice `program opcio_A;` (falta la "n"). Son dos transcripciones manuales del mismo ejemplo con una discrepancia menor entre sí — se documenta en vez de unificarlas en silencio.
