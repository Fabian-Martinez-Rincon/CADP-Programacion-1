
## Herramientas

---

## Finales Practicos

### Final de febrero

La Organización de Naciones Unidas dispone de una lista con todos los países del mundo. De cada país conoce su código y la población (cantidad de habitantes) de cada uno de sus estados y provincias (a lo sumo 100).

La lista de países se encuentra ordenada por código de país.

- **a)** Realizar un módulo que reciba la población de los estados de un país, y calcule la población total de dicho país.
- **b)** Realizar un módulo que reciba la lista de países, y retorne una estructura de datos con la población total de cada uno de los 100 países con más habitantes.
- **c)** Realizar un programa que imprima la cantidad total de habitantes entre los 100 países con mayor cantidad de habitantes.

---

**Final Conceptos de Algoritmos Datos y Programas**
**TEMA 1**
**02/12/2025**

Apellido y Nombre .....................................................

Por favor, no escribir sobre esta fotocopia, resolver los ejercicios en hojas aparte.

---

**1.**
Una empresa dispone de una estructura de datos con información de sus empleados. De cada empleado conoce su nombre, año de nacimiento y salario, y la información se encuentra ordenada por año de nacimiento. Realizar un programa que informe los 10 años en los que nacieron más empleados, y el monto total destinado al pago de salarios de dichos empleados nacidos en esos 10 años.

---

**2.**
Dado la siguiente declaración y los módulos actualizar1 y actualizar2, indicar para cada caso si son correctos o incorrectos. El objetivo es incrementar en un porcentaje todos los elementos del vector. En ambos casos, justifique su respuesta; en caso de que la solución sea incorrecta, indique todos los errores que encuentre.

```pascal
type
  vector_salarios = array[1..200] of ^real;
```

```pascal
procedure actualizar1(v : vector_salarios; dimL : integer; p : ^real);
var
  i : integer;
begin
  for i := 1 to dimL do
    v[i]^ := v[i]^ + v[i] * p;
end;
```

```pascal
procedure actualizar2(var v : vector_salarios; dimL : integer; p : real);
var
  i : integer;
begin
  for i := 1 to dimL do
    v[i] := v[i] + v[i]^ * p;
end;
```

---

**3.**
Dado el siguiente programa, indique qué imprime en cada sentencia writeln. Justifique su respuesta.

```pascal
program ejercicio3;
var
  c : integer;

procedure sumar(a : integer; var b : integer);
var
  b : integer;
begin
  b := c + a;
  a := b - a;
  if (c > b) then
    c := a + b
  else
    c := a - b;
  writeln('Valor a: ', a, ' Valor B: ', b, ' Valor C: ', c);
end;

var
  a, b : integer;

begin
  c := 8; a := 4; b := 9;
  sumar(b, c);
  writeln('Valor a: ', a, ' Valor B: ', b, ' Valor C: ', c);
end.
```

---

**4. Indique Verdadero o Falso. Justifique en todos los casos:**

- **a)** Cuando se conoce la cantidad máxima de elementos que deben almacenarse, siempre es mejor utilizar un vector en lugar de una lista.
- **b)** Dado un módulo que recibe parámetros, si los recibe todos por valor requerirá más memoria que si los recibe todos por referencia.
- **c)** Un registro que tiene un puntero o una lista en uno de sus campos es una estructura dinámica.
- **d)** Indique la cantidad de memoria estática que requiere el programa cuatro.
- **e)** Indique la cantidad de memoria dinámica que requiere el programa cuatro.
- **f)** Indique el tiempo de ejecución que requiere el programa cuatro.

---

### 📌 Programa cuatro:

```pascal
const
  dimF = 24;

type
  alumno = record
    nacionalidad: string[20];
    promedio: real;
    dni: integer;
  end;

  vector = array [0..dimF] of ^alumno;

  lista = ^nodo;

  nodo = record
    a: alumno;
    sig: lista;
  end;

var
  v: vector;
  l: lista;
  a: alumno;
  i, dimL: integer;

begin
  l := nil;
  dimL := -1;

  readln(a.dni);

  while (a.dni <> -1) and (dimL <= dimF) do
  begin
    readln(a.nacionalidad);
    readln(a.promedio);

    new(v[dimL + 1]);
    v[dimL + 1]^ := a;

    dimL := dimL + 1;

    readln(a.dni);
  end;

  new(l);
  l^.sig := nil;

  if (dimL > dimF) then
  begin
    l^.a := v[0]^;
  end
  else
    l^.a := v[dimL]^;
end.
```

---

### 📌 Tamaños de datos:

* Char → 1 byte
* Integer → 4 bytes
* Real → 10 bytes
* Boolean → 1 byte
* String → longitud + 1 byte
* Puntero → 4 bytes

---


