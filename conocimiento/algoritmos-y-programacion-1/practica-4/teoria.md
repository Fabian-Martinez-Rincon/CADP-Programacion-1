---
id: "AYP1-P4-TEORIA"
titulo: "Modularización: procedimientos y comunicación por parámetros"
slug: "modularizacion-procedimientos-parametros"
tipo: "teoria"
unidad: 4
tema: "modularizacion"
subtemas:
  - "modularizacion"
  - "procedimientos"
  - "parametros-por-valor"
  - "parametros-por-referencia"
  - "alcance-de-modulos"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-4/Practica 4 - Algoritmos y Programación I 2026.docx.pdf CIRO.pdf"
    paginas: "1-2"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/teorias/04 - Clase 4.pptx.pdf CIRO.pdf"
    paginas: "1-39"
prerrequisitos:
  - "estructuras repetitivas while y for"
relacionados:
  - "./README.md"
  - "./ejercicios.md"
  - "../practica-3/teoria.md"
  - "../practica-5/teoria.md"
---

# Modularización: procedimientos y comunicación por parámetros (Clase 4 / Práctica 4)

> Conversión de la Clase 4 ("04 - Clase 4.pptx.pdf CIRO.pdf") y de los objetivos/notas de la Práctica 4. Se preserva el orden de la clase: modularización → procedimientos → comunicación entre módulos (parámetros por valor y por referencia).

## Índice

1. [Modularización](#1-modularización)
2. [Ventajas de la modularización](#2-ventajas-de-la-modularización)
3. [Procedimientos](#3-procedimientos)
4. [Comunicación entre módulos: parámetros](#4-comunicación-entre-módulos-parámetros)
5. [Parámetro por valor](#5-parámetro-por-valor)
6. [Parámetro por referencia](#6-parámetro-por-referencia)
7. [Reglas de coincidencia de parámetros](#7-reglas-de-coincidencia-de-parámetros)
8. [Ejemplo integrador: IMC](#8-ejemplo-integrador-imc)

## 1. Modularización

Los problemas del mundo real implican complejidad, extensión y modificaciones. Se tratan de resolver con **abstracción**, **descomposición** e **independencia funcional**.

**Modularizar** significa dividir un problema en partes funcionalmente independientes, que encapsulen operaciones y datos.

- ❌ No se trata simplemente de subdividir el código de un sistema de software en bloques con un número de instrucciones dado.
- ✔️ Se trata de separar en funciones lógicas con datos propios y datos de comunicación perfectamente especificados.

Al modularizar:

- cada subproblema está al mismo nivel de detalle;
- cada subproblema puede resolverse independientemente;
- las soluciones de los subproblemas pueden combinarse para resolver el problema original.

Un **módulo** es una tarea específica bien definida; los módulos se comunican entre sí adecuadamente y cooperan para conseguir un objetivo común. Encapsula acciones o tareas. En cada uno de ellos se puede representar alguno de los objetivos principales del problema a resolver (por ejemplo, dentro de un sistema de "Gestión de Bases de Datos" se podrían separar los módulos "Gestión de Usuarios" y "Gestión de Cuentas", y dentro de cada uno de ellos, sub-módulos como Agregar/Baja/Modificación).

## 2. Ventajas de la modularización

- **Mayor productividad**: al dividir un sistema de software en módulos funcionalmente independientes, un equipo de desarrollo puede trabajar simultáneamente en varios módulos, reduciendo el tiempo de desarrollo global del sistema.
- **Reusabilidad**: un objetivo fundamental de la modularización es la posibilidad de utilizar repetidamente parte del desarrollo en el mismo o en otros problemas.
- **Facilidad de crecimiento**: los sistemas de software reales crecen (aparecen con el tiempo nuevos requerimientos del usuario). La modularización permite disminuir los riesgos y costos de incorporar nuevas prestaciones a un sistema en funcionamiento.
- **Legibilidad**: un efecto de la modularización es una mayor claridad para leer y comprender el código fuente. El ser humano maneja y comprende con mayor facilidad un número limitado de instrucciones directamente relacionadas.

## 3. Procedimientos

Un **procedimiento** es un conjunto de instrucciones que realizan una tarea específica y retorna 0, 1 o más valores.

```pascal
procedure nombre(...);
var
  ....           { Variables locales }
begin
  ....           { Código del procedimiento }
end;
```

Se ubica en la sección de módulos del programa (entre `type`/`const` y `var` del programa principal):

```pascal
Program nombre;
type
  ...
  procedure nombre(...);
    var ...
    begin
      ...
    end;
var ...
begin
  ...
end.
```

**Invocación**: un procedimiento se invoca por su nombre.

```pascal
program uno;
Const
  ....
Type
  ....
procedure auxiliar(...);
Var ...
begin
  ...
end;

Var
  ....
Begin
  auxiliar(...);
End.
```

## 4. Comunicación entre módulos: parámetros

Los datos compartidos entre módulos se deben especificar como **parámetros** que se transmiten de un módulo a otro. El uso de parámetros implica que los datos exclusivos de un módulo NO son ni "visibles" ni utilizables por otros módulos (ocultamiento).

Forma de trabajo:

1. Se analiza para cada módulo: ¿cuáles son los datos propios? y ¿cuáles son los datos compartidos?
2. Los datos propios se declaran locales al módulo.
3. Los datos compartidos se declaran como parámetros: **por valor** o **por referencia**.

## 5. Parámetro por valor

Un dato de entrada por valor se utiliza para enviarle valores a un módulo. Éste recibe sobre una variable local la **copia** del valor proveniente de otro módulo (o del programa principal). Con él puede realizar operaciones y/o cálculos. Si lo modifica, no producirá ningún cambio ni tampoco tendrá incidencia fuera del módulo.

```pascal
procedure uno (nombre1: tipo; nombre2: tipo);
var
  ...
Begin
  Uso de los parámetros con nombre1 y nombre2
End;
```

Ejemplo — el cambio dentro del procedimiento **no** se refleja afuera:

```pascal
Program porValor;
procedure uno (num: integer);
Begin
    if (num = 7)  then
      num:= num + 1;
    write (num);
end;
var
    x: integer;
begin
  x:= 7;
  uno (x);
  write (x);
end.
```

Al invocar `uno(x)` con `x = 7`, dentro del procedimiento `num` copia el valor de `x`. El procedimiento imprime `8` (porque modificó su copia local `num`), pero al volver al programa principal `x` sigue valiendo `7` — el `write(x)` final imprime `8` y luego `7`. Esto no cambia aunque el parámetro y la variable del programa tengan el mismo nombre (`num` en ambos lados): siguen siendo variables distintas en memoria.

## 6. Parámetro por referencia

La comunicación por referencia implica que el módulo comparte la memoria de otra variable conocida en otros módulos del sistema. Puede operar con ella y su valor original dentro del módulo, y las modificaciones que se produzcan se reflejan en los demás módulos que comparten la variable. Se declara anteponiendo la palabra reservada `var` al nombre del parámetro.

```pascal
procedure uno (var nombre1: tipo; var nombre2: tipo);
var
  ...
Begin
  Uso de los parámetros con nombre1 y nombre2
End;
```

Ejemplo — el cambio dentro del procedimiento **sí** se refleja afuera, porque `num` comparte la dirección de memoria con `x`:

```pascal
Program porReferencia;
procedure uno (var num: integer);
Begin
    if (num = 7)  then
      num:= num + 1;
    write (num);
end;
var
    x: integer;
begin
  x:= 7;
  uno (x);
  write(x);
end.
```

Acá el `write(x)` final imprime `8`: como `num` es `var`, comparte memoria con `x`, y el `num := num + 1` dentro del procedimiento modificó directamente a `x`.

## 7. Reglas de coincidencia de parámetros

- El número y tipo de los argumentos utilizados en la invocación a un módulo deben coincidir con el número y tipo de parámetros del encabezamiento del módulo.
- Un parámetro por valor debiera ser tratado como una variable de la cual el módulo hace una copia y la utiliza localmente. Algunos lenguajes permiten la modificación local de un parámetro por valor, pero toda modificación realizada queda en el módulo en el cual el parámetro es utilizado.
- **Solo puede pasarse una variable (no una constante ni una expresión) como argumento de un parámetro `var`.** La clase lo ilustra con un programa que no compila porque intenta invocar `ejemplo(15, c)` cuando el primer parámetro del procedimiento es `var a: integer` — no se puede pasar el literal `15` por referencia. La versión que sí compila invoca `ejemplo(x, 'p')`, pasando una variable `x` como argumento del parámetro `var`.

## 8. Ejemplo integrador: IMC

Programa que combina un `for`, parámetros por valor (`peso`, `altura`) y un parámetro por referencia (`imc`, el resultado a devolver) en un mismo procedimiento:

```pascal
Program IMC;

procedure calcularIMC(var imc: real; peso, altura: real);
Begin
    imc:= peso / (altura * altura);
end;

var
    peso, altura, imc: real;      i: integer;
begin
for i:= 1 to 10 do begin
   read (peso); read (altura);
   calcularIMC(imc, peso, altura);
   write(imc);
   end;
end.
```

## Ejercicio guiado de la clase: ¿es múltiplo de 10?

*"Escriba un programa que lea una serie de números enteros (hasta ingresar el valor -1) e imprima para cada número si múltiplo de 10. Modularice la solución."*

```pascal
program multiplos;
procedure esMultiplo (num:integer; var resultado:boolean);
var
  resto: integer;
Begin
  resto:= num mod 10;

  if resto = 0 then
      resultado:= true
    else
      resultado:= false;
end;
Var
 valor:integer; multiplo: boolean;
Begin
  read (valor);
  while valor <> -1 do begin
    esMultiplo(valor, multiplo);
    write ('¿El valor ', valor, ' es multiplo de 10?', multiplo);
    read(valor);
  end;
End.
```

Nótese cómo `num` (parámetro por valor) copia el contenido de `valor`, mientras que `resultado` (parámetro por referencia) comparte la memoria con `multiplo` para poder devolver el resultado calculado.
