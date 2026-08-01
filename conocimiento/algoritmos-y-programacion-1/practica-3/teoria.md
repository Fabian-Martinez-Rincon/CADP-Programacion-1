---
id: "AYP1-P3-TEORIA"
titulo: "Estructuras repetitivas: while y for"
slug: "estructuras-repetitivas-while-for"
tipo: "teoria"
unidad: 3
tema: "estructuras-repetitivas"
subtemas:
  - "while"
  - "for"
  - "iteracion-precondicional"
  - "repeticion"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-3/Practica 3 -AyP I 2026.pdf"
    paginas: "1"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/teorias/03 - Clase 3.pdf"
    paginas: "1-23"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/teorias/AyP1 - Explicación Práctica 3.pdf"
    paginas: "1-10"
prerrequisitos:
  - "estructura if"
  - "boolean"
relacionados:
  - "./README.md"
  - "./ejercicios.md"
  - "../practica-2/teoria.md"
  - "../practica-4/teoria.md"
---

# Estructuras repetitivas: `while` y `for` (Clase 3 / Práctica 3)

> Conversión de la Clase 3 ("03 - Clase 3.pdf") y del material de apoyo específico "AyP1 - Explicación Práctica 3.pdf". Se preserva el orden de la Clase 3 (mientras que primero se enuncia la iteración en general, luego `for` y luego `while`); al final se agrega la sección de ejemplos de uso dirigidos puntualmente a la Práctica 3.

## Índice

1. [Iteración](#1-iteración)
2. [Iteración precondicional: `while`](#2-iteración-precondicional-while)
3. [Repetición: `for`](#3-repetición-for)
4. [Reglas del `for`](#4-reglas-del-for)
5. [Ejemplos de uso dirigidos a la Práctica 3](#5-ejemplos-de-uso-dirigidos-a-la-práctica-3)

## 1. Iteración

Puede ocurrir que se desee ejecutar un bloque de instrucciones desconociendo el número exacto de veces que se ejecutan. Para estos casos existen, en la mayoría de los lenguajes de programación estructurada, las **estructuras de control iterativas condicionales**. Como su nombre lo indica, las acciones se ejecutan dependiendo de la evaluación de la condición.

## 2. Iteración precondicional: `while`

Evalúan la condición y, si es verdadera, se ejecuta el bloque de acciones. Dicho bloque se puede ejecutar 0, 1 o más veces.

> **Importante**: el valor inicial de la condición debe ser conocido o evaluable antes de la evaluación de la condición (es decir, la/s variable/s involucradas en la condición deben tener un valor asignado —típicamente mediante una lectura previa— antes de llegar al `while`).

Sintaxis:

```pascal
while (condición) do
  accion;

{ más de una acción }
while(condición) do
  begin
    acción 1;
    acción 2;
  end;
```

### Ejemplo — contar edades pares hasta un centinela

*"Realizar un programa que lea edades de personas hasta leer una edad igual a 50. Al finalizar informe la cantidad de las edades pares."* Los pasos a resolver son: cómo leo una edad, cómo veo si es par, cuál es la condición de fin, y cómo muestro el resultado.

### Errores típicos al usar `while`

La clase compara dos variantes de un mismo programa para mostrar un error común de ubicación del `read`:

```pascal
{ Program uno: tiene un error. ¿Cuál? }
Program uno;
var
  resto,edad:integer;
  total:integer;
begin
  total:=0;
  while (edad <> 50)do
    begin
      read(edad);
      resto:= edad MOD 2;
      if (resto = 0)then
        total:= total + 1;
    end;
  write (total);
end.
```

El problema es que `edad` se evalúa en la condición del `while` **antes** de haber sido leída la primera vez (no tiene un valor conocido al entrar al ciclo). La corrección agrega una lectura inicial antes del `while` (y otra al final del cuerpo, para volver a evaluar la condición con el siguiente valor):

```pascal
Program dos;
var
  edad,resto:integer;
  total:integer;
begin
  total:=0;
  read (edad);
  while (edad <> 50)do
    begin
      resto:= edad MOD 2;
      if (resto = 0)then
        total:= total + 1;
      read (edad);
    end;
  write (total);
end.

{ Alternativa equivalente, sin usar la variable resto: }
Program tres;
var
  edad:integer;
  total:integer;
begin
  total:=0;
  read (edad);
  while (edad <> 50)do
    begin
      if (edad MOD 2 = 0)then
        total:= total + 1;
      read (edad);
    end;
  write (total);
end.
```

Este patrón —**leer antes del `while`, procesar, volver a leer al final del cuerpo del `while`**— es el que se usa sistemáticamente en las lecturas con condición de corte (centinela) de esta práctica.

### Segundo ejemplo — promedio de precios hasta el 0

*"Realizar un programa que lea precios de productos hasta leer un precio igual a 0. Al finalizar informar el promedio de los precios leídos."*

```pascal
Program promedioPrecios;
var precio, prom, suma: real;
    cant: integer;
begin
   cant:=0; suma:= 0;
   read (precio);
   while (precio <> 0) do begin
     suma:= suma + precio;
     cant:= cant + 1;
     read (precio);
   end;
   if (cant = 0)
     then write ('No se leyeron precios')
     else begin
       prom:= suma/cant;
       write ('Promedio de precios: ', prom);
     end;
end.
```

Una variante equivalente evita la variable auxiliar `prom` y calcula el promedio directamente dentro del `write`:

```pascal
Program promedioPreciosOtraAlternativa;
var precio, suma: real;
    cant: integer;
begin
   cant:=0;
   read (precio); suma:= 0;
   while (precio <> 0) do begin
     suma:= suma + precio;
     cant:= cant + 1;
     read (precio);
   end;
   if (cant = 0)
     then write ('No se leyeron precios')
     else write ('Promedio de precios: ', suma/cant);
end.
```

Nótese la guarda `if (cant = 0)`: es necesaria porque, si no se leyó ningún precio antes del 0, dividir `suma/cant` sería una división por cero.

## 3. Repetición: `for`

Es una extensión natural de la secuencia. Consiste en repetir **N** veces un bloque de acciones. A diferencia del `while`, el número de veces que se deben ejecutar las acciones es **fijo y conocido de antemano**.

Sintaxis:

```pascal
for variable_indice :=  valor_inicial to valor_final do
  accion 1;

{ más de una acción }
for variable_indice :=  valor_inicial to valor_final do
  begin
    accion 1;
    accion 2;
  end;
```

Ejemplos de encabezados de `for` y el tipo/valores que toma el índice:

```pascal
{ Ejemplo 1: índice integer, toma los valores 1,2,...,10 }
For i := 1 to 10 do
  accion;

{ Ejemplo 2: índice char, toma los valores 'A','B',...,'H' }
For i := 'A' to 'H' do
  accion;

{ Ejemplo 3: índice boolean, toma los valores False, True }
For i:= False to True do
  accion;

{ Ejemplo 4: rango descendente escrito con "to" — el cuerpo NO se ejecuta ninguna vez }
For i := 20 to 18 do
  accion;

{ Ejemplo 5: para recorrer en sentido descendente se usa "downto" }
For índice := 20 downto 18 do
  begin
    accion;
    accion;
  end;
```

## 4. Reglas del `for`

- La variable índice debe ser de tipo **ordinal**.
- La variable índice **no puede modificarse** dentro del cuerpo del `for`.
- La variable índice se incrementa (`to`) o decrementa (`downto`) automáticamente.
- Cuando el `for` termina, la variable índice **no tiene valor definido**.

### Ejemplo — suma de precios de 10 productos

*"Realizar un programa que lea precios de 10 productos que vende un almacén. Al finalizar el programa debe informar la suma de todos los precios leídos."*

```pascal
Program uno;
var
    precio,total:real;
    i:integer;
begin
    total := 0;
    for i:= 1 to 10 do
      begin
          read (precio);
          total:= total + precio;
      end;
    write ('La suma de los precios de los
            productos del almacén es: ',total);
end.
```

Si además se pide informar el precio del quinto producto leído, se agrega una variable auxiliar que se completa dentro del `for` cuando el índice vale 5:

```pascal
Program uno;
var
    quinto,precio,total:real;
    i:integer;
begin
    total := 0;
    for i:= 1 to 10 do
      begin
          read (precio);
          if (i=5) then
              quinto:= precio;
          total:= total + precio;
      end;
    write ('La suma de los precios de los
            productos del almacén son: ',total);
    write ('El precio del quinto producto es: ',quinto);
end.
```

### Combinando `for` y `while`

Cuando la cantidad de repeticiones internas es fija pero la cantidad de veces que se repite todo el proceso depende de una condición de corte, se anida un `for` dentro de un `while`:

*"Realizar un programa que lea las notas de exámenes de alumnos, leyendo su legajo, hasta ingresar el legajo 0. De cada alumno se leen sus tres notas y se debe informar para cada uno de ellos su promedio."*

```pascal
Program uno;
var
    i, legajo, nota, suma:integer;
Begin
  read(legajo);
  while (legajo <> 0) do
  begin
      suma:= 0;
      for i:= 1 to 3 do
      begin
        read (nota);
        suma:= suma + nota;
      end;
      write ('Promedio ', suma / 3);

      read(legajo);
  end;
end.
```

## 5. Ejemplos de uso dirigidos a la Práctica 3

Esta sección corresponde al material "AyP1 - Explicación Práctica 3.pdf", pensado específicamente como guía de la Práctica 3.

### `while`: contar números leídos hasta el 0

*"Realice un programa que lea de teclado números enteros hasta que se ingrese el 0 (cero) e informe la cantidad de números leídos."*

```pascal
Program numeros;
Var
  numero, cant: integer;
Begin
  cant:= 0;
  readln(numero);
  while (numero <> 0) do begin
    cant:= cant +1;
    readln(numero);
  end;
  writeln('La cantidad de números leídos es: ',cant);
End.
```

Variante propuesta como ejercicio de refuerzo — contar solo los menores a 100:

```pascal
Program ejercicioExp1;
var
  numero, cant: integer;
begin
  cant := 0;
  readln(numero);
  while(numero <> 0) do begin
    if(numero < 100) then
      cant:= cant + 1;
    readln(numero);
  end;
  writeln('La cantidad de números menores que 100 es', cant);
end.
```

### `for`: sumar 10 números leídos

*"Realice un programa que lea de teclado 10 números enteros e informe el resultado de la suma."*

```pascal
Program suma;
Var
  i, numero, res: integer;
Begin
  res := 0;
  for i:= 1 to 10 do begin
    readln(numero);
    res:= res + numero;
  end;
  writeln('La suma es:', res);
End.
```

### Preguntas de repaso sobre `for` (para resolver)

- ¿Qué imprime el siguiente código?

  ```pascal
  program queImprime;
  var
    i: integer;
  begin
    for i:= 1 to 5 do
      writeln(i);
  end.
  ```

- El índice de un `for` no debe modificarse. ¿Qué pasa si se ejecuta el siguiente código?

  ```pascal
  program infinito;
  var
    i: integer;
  begin
    for i:= 1 to 5 do begin
      writeln(i);
      i:= 1;
    end;
    readln();
  end.
  ```

- ¿Qué imprime el siguiente código (que combina `for` con `if`)?

  ```pascal
  Program queImprime2;
  Var
    i: integer;
  Begin
    for i:= 1 to 5 do
      if ((i mod 2) = 0) then
        writeln(i);
  End.
  ```

> [!NOTE]
> El material fuente plantea estas tres preguntas como ejercicios de rastreo de código ("para resolver") sin publicar la respuesta en la propia diapositiva. No se completan aquí las respuestas para no inventar un resultado no verificado en el documento original; quedan como ejercicio de repaso.
