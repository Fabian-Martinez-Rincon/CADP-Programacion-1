---
id: "AYP1-P7-TEORIA"
titulo: "Tipo de dato string y estructura de datos registro"
slug: "string-y-registro"
tipo: "teoria"
unidad: 7
tema: "registros-y-strings"
subtemas:
  - "string"
  - "tipos-de-datos-estructurados"
  - "registro"
  - "record"
  - "tipos-definidos-por-el-usuario"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-7/Práctica 7 - Ayp1 - 2026.pdf"
    paginas: "1-3"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/teorias/programacion clase 7.pdf"
    paginas: "1-21"
prerrequisitos:
  - "funciones"
  - "alcance de variables"
relacionados:
  - "./README.md"
  - "./ejercicios.md"
  - "../practica-6/teoria.md"
---

# Tipo de dato `string` y estructura de datos registro (Clase 7 / Práctica 7)

> Conversión de la Clase 7 ("programacion clase 7.pdf"). Se preserva el orden de la clase: primero `string`, luego la clasificación general de tipos de datos estructurados, y por último el tipo `record` (registro).

## Índice

1. [Tipo de dato `string`](#1-tipo-de-dato-string)
2. [Tipos de datos estructurados: clasificación](#2-tipos-de-datos-estructurados-clasificación)
3. [Tipos de datos definidos por el programador](#3-tipos-de-datos-definidos-por-el-programador)
4. [Registro (`record`)](#4-registro-record)
5. [Acceso y asignación de los campos de un registro](#5-acceso-y-asignación-de-los-campos-de-un-registro)
6. [Módulos que leen, imprimen y comparan registros](#6-módulos-que-leen-imprimen-y-comparan-registros)
7. [Ejercitación: corte de lectura por condición sobre un campo](#7-ejercitación-corte-de-lectura-por-condición-sobre-un-campo)

## 1. Tipo de dato `string`

Un tipo de dato `string` es una sucesión de caracteres de longitud fija, que se almacenan en un área contigua de la memoria. Existe en la mayoría de los lenguajes como un tipo predefinido.

- Es un tipo de dato **compuesto**, ordinal.
- Los valores son de la forma: `'algo'`, `'Algo'`, `'Código: 45GVF&dd#FR'`, `'"Hola mundo!!!!"'`, `'$ 5000'`.
- Operador de concatenación: `+`.
- Operadores de comparación: `<`, `<=`, `>`, `>=`, `=`, `<>` (mismos operadores que `char`, comparando según el orden ASCII carácter a carácter).

```pascal
Program uno;
var
  nombre: string; apellido: string;
  nombre_y_apellido: string;
begin
  nombre:= 'Rosa';    apellido:= 'Gonzalez';
  nombre_y_apellido:= apellido + ', ' + nombre;
  write(nombre_y_apellido);          { Gonzalez, Rosa }

  read(nombre);
  if(nombre = 'Rosa') then
    write('Hola Rosita, amiga mia')
  else
    write('Hola ' + nombre);
end.
```

```pascal
Program dos;
var
  dato1, dato2, dato3: string;
begin
  dato1:= 'Rosa';
  dato2:= 'ROSA';
  dato3:= '54.3 %';

  writeln(dato1 < dato2);    { ¿qué imprime? }
  writeln(dato1 > dato3);
  writeln(dato2 >= dato3);
end.
```

## 2. Tipos de datos estructurados: clasificación

Una **estructura de datos** permite al programador definir un tipo al que se asocian diferentes datos que tienen valores lógicamente relacionados y asociados bajo un nombre único. Se clasifican según cuatro criterios:

| Criterio | Valores | Significado |
|---|---|---|
| Elementos | Homogénea / Heterogénea | si los elementos que la componen son del mismo tipo o no |
| Tamaño | Estática / Dinámica | si el tamaño de la estructura puede variar durante la ejecución del programa |
| Acceso | Secuencial / Directo | si para acceder a un elemento hace falta pasar por los anteriores, o se puede acceder directamente (p. ej. referenciando una posición) |
| Linealidad | Lineal / No lineal | si cada elemento tiene un único sucesor y un único predecesor (lineal), o puede tener 0, 1 o más (no lineal) |

## 3. Tipos de datos definidos por el programador

Hasta este punto de la cátedra se trabajó con tipos de datos incorporados en el lenguaje. Un **tipo de dato definido por el usuario (TDDU)** es aquel que no existe en la definición del lenguaje, y el programador es el encargado de su especificación. Esto aumenta la riqueza expresiva del lenguaje (mejores posibilidades de abstracción de datos), da mayor seguridad respecto de las operaciones que se realizan sobre cada clase de datos, y permite establecer límites preestablecidos sobre los valores posibles.

```pascal
program tddu;
Const
  ...
Type
  identificador = ... {tipo};
{Módulos}
Var
  x: identificador;
  ...
Begin
  ...
End.
```

## 4. Registro (`record`)

Supongamos que se quiere representar la información de los distintos inmuebles con los que trabaja una inmobiliaria (tipo de propiedad, cantidad de habitaciones, cantidad de baños, precio de alquiler, localidad). Hasta ahora no se conoce una forma de agrupar toda esa información en una sola variable.

Un **registro** es uno de los tipos de datos estructurados que permiten agrupar diferentes clases de datos en una estructura única bajo un sólo nombre. Un registro está compuesto por **campos** que representan cada uno de los datos que lo forman.

Clasificación del registro, según los criterios de la sección 2: **heterogéneo** (los campos pueden ser de distinto tipo, aunque también puede haber registros con todos los campos del mismo tipo), **estático** (el tamaño no cambia durante la ejecución, se calcula en tiempo de compilación) y de **acceso directo** (se accede a cada campo mediante notación puntual).

```pascal
Program registros;
Const
  ....
Type
  nombre = record
    campo1: ... {tipo};
    campo2: ... {tipo};
    ...
  end;
Var
  variable: nombre;
```

Ejemplo concreto — el registro `inmueble` de la inmobiliaria:

```pascal
Program inmobiliaria;
Const
  ....
Type
  inmueble = record
    tipo: string;
    cantHab: integer;
    cantBaños:integer;
    precio: real;
    localidad: string;
  end;
Var
  inmu1, inmu2: inmueble;
```

> [!NOTE]
> **La única operación permitida directamente entre dos variables de tipo registro es la asignación entre variables del mismo tipo** (`inmu2 := inmu1;`). No existen operadores de comparación (`inmu1 = inmu2` no compila) ni se puede leer/escribir un registro completo con `read`/`write` (`read(inmu1)` y `write(inmu1)` tampoco compilan) — para eso hace falta trabajar campo por campo, o a través de módulos, como se ve en la sección 6.

## 5. Acceso y asignación de los campos de un registro

La única forma de acceder a los campos de un registro es con notación `variable.nombreCampo` (por ejemplo, `inmu1.cantHab`).

```pascal
Begin
  inmu1.tipo:='Casa';
  inmu1.cantHab:= 2;
  inmu1.cantBaños:= 1;
  inmu1.precio:= 15.500;
  inmu1.localidad:= 'La Plata';
End.
```

- **No es obligatorio** asignar (ni leer) los campos en el mismo orden en que fueron declarados.
- Si no se le da valor a algún campo, ese campo queda con dato "basura" (indeterminado).

## 6. Módulos que leen, imprimen y comparan registros

Como no se puede hacer `read(inmu1)` ni `write(inmu1)` directamente, se modulariza la lectura y la escritura campo por campo. El registro completo se pasa como parámetro **por referencia** al módulo de lectura (para poder completarlo) y **por valor** al módulo de impresión (solo necesita consultarlo):

```pascal
Procedure leer (var i:inmueble);
Begin
  read(i.tipo);
  read(i.cantHab);
  read(i.cantBaños);
  read(i.precio);
  read(i.localidad);
end;
```

```pascal
Procedure imprimir (i:inmueble);
Begin
  write(i.tipo);
  write(i.cantHab);
  write(i.cantBaños);
  write(i.precio);
  write(i.localidad);
end;
```

Tampoco existen los campos en el orden en que se leen o se imprimen — puede ser cualquier orden, siempre que sea consistente con cómo se ingresan los datos. Estos módulos, al igual que con cualquier otro parámetro, también podrían implementarse como **función** en lugar de procedimiento (una función que retorne un dato de tipo `inmueble` es válido, tal como se explica en la Práctica 6 para tipos simples).

**Comparar dos registros** tampoco puede hacerse con `=` directamente: hace falta comparar campo por campo, típicamente encapsulado en una función:

```pascal
function iguales (i1,i2:inmueble):boolean;
Begin
    iguales:= ((i1.tipo = i2.tipo) and
      (i1.cantHab = i2.cantHab) and
      (i1.cantBaños = i2.cantBaños) and
      (i1.precio = i2.precio) and
      (i1.localidad = i2.localidad));
end;
```

```pascal
Begin
  leer (inmu1);
  leer (inmu2);
  if (iguales (inmu1,inmu2))
  then write ('Los registros son iguales')
  else write ('Los registros no son iguales');
End.
```

## 7. Ejercitación: corte de lectura por condición sobre un campo

*"Escriba un programa que lea inmuebles hasta leer un inmueble cuya localidad es 'XXX'. Al finalizar informe de los inmuebles en la localidad de 'La Plata' cuántos tienen al menos 2 habitaciones."*

Un punto clave: **al leer la localidad `'XXX'` (la condición de fin) no hace falta leer todos los demás campos del registro** — el módulo de lectura corta apenas identifica el centinela:

```pascal
procedure leer (var i:inmueble);
Begin
  read(i.localidad);
  if (i.localidad <> `XXX`) then
   begin
     read(i.cantHab);
     read(i.cantBaños);
     read(i.precio);
     read(i.tipo);
   end;
end;
```

Programa principal, con el mismo patrón mostrado en la Práctica 3 (leer antes del `while`, procesar, volver a leer al final del cuerpo), y una función `cumple` que encapsula la condición a verificar sobre cada inmueble:

```pascal
Program inmobiliaria;
Const ...
Type
  inmueble = record
    tipo: string;
    cantHab: integer;
    cantBaños:integer;
    precio: real;
    localidad: string;
  end;
// módulos: leer, cumple

Var
  inmu1, inmu2: inmueble;
  cant: integer;
Begin
  cant:=0;
  leer (inmu);
  while (inmu.localidad <> `XXX`) do
  begin
    if (cumple (inmu1) = true) then
      cant:= cant + 1;
    leer (inmu);
  end;
  write (`La cantidad es`, cant);
End.
```

```pascal
function cumple(i:inmueble): boolean;
Var
 ok:boolean;

begin
 if (i.localidad = `La Plata`) and
    (i.cantHab >= 2) then
  ok:= true
 else
  ok:= false;
 cumple:= ok;
end;

{ Otra opción, más concisa }
function cumple(i:inmueble): boolean;
begin
 cumple:= (i.localidad = `La Plata`)
           and (i.cantHab >= 2);
end;
```
