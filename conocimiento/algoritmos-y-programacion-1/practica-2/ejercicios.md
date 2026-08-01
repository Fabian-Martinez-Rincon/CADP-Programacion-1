---
id: "AYP1-P2-EJERCICIOS"
titulo: "Práctica 2 - Introducción a la programación II: enunciados y soluciones"
slug: "practica-2-ejercicios"
tipo: "ejercicio"
unidad: 2
tema: "estructuras-de-control-decision"
subtemas:
  - "char"
  - "boolean"
  - "if-then-else"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-2/Practica 2 - AyP1 - 2026.docx.pdf"
    paginas: "1"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-2/practica-2-parte-2-funciones-procedimientos-parametros.pdf"
    paginas: "1-7"
prerrequisitos:
  - "estructura if"
relacionados:
  - "./README.md"
  - "./teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1c.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1d.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1e.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_2.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_3.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_4.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/prueba.pas"
---

# Práctica 2 — Ejercicios y soluciones

Enunciados transcriptos de `Practica 2 - AyP1 - 2026.docx.pdf` (página 1). Todos los archivos `ejercicio_*.pas` de esta sección compilan sin errores con Free Pascal 3.2.2 (verificado durante la conversión).

## Ejercicio 1a — Mayor de dos números `AYP1-P2-EJ01A`

> Leer 2 números por teclado e imprimir el mayor.

- **Código:** [`ejercicio_1a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1a.pas)
- **Estado:** resuelto
- **Enfoque:** lee `numero_1` y `numero_2`; usa `if/else if/else` para cubrir los tres casos (primero mayor, iguales, segundo mayor).

## Ejercicio 1b — Par y mayor que 10 `AYP1-P2-EJ01B`

> Leer un número desde teclado e imprimirlo si es par y mayor que 10.

- **Código:** [`ejercicio_1b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1b.pas)
- **Estado:** resuelto
- **Enfoque:** una única condición compuesta `(numero mod 2 = 0) and (numero > 10)`; si es verdadera imprime el número (no hay rama `else`, tal como pide el enunciado: solo imprimir "si" cumple la condición).

## Ejercicio 1c — Múltiplo de 3 o de 5 `AYP1-P2-EJ01C`

> Leer un número e imprimirlo si es múltiplo de 3 o múltiplo de 5.

- **Código:** [`ejercicio_1c.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1c.pas)
- **Estado:** resuelto
- **Enfoque:** `(numero mod 3 = 0) or (numero mod 5 = 0)`, mismo patrón que 1b pero con `or`.

## Ejercicio 1d — Clasificación por edad `AYP1-P2-EJ01D`

> Leer la edad de un estudiante e informar 1 si pertenece al preescolar (edad menor a 7), 2 a primaria (entre 7 y 12), 3 a secundaria (entre 13 y 18) y 4 a universitario (mayor que 18).

- **Código:** [`ejercicio_1d.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1d.pas) (programa `ClasificacionEdad`)
- **Estado:** resuelto
- **Enfoque:** cadena `if / else if / else if / else` que cubre los cuatro rangos en orden creciente, delegando el último caso (universitario) al `else` final en vez de repetir la comparación `> 18`.

## Ejercicio 1e — Generación según año de nacimiento `AYP1-P2-EJ01E`

> Leer el año de nacimiento de una persona e informar la generación a la que pertenece: "B" si es Baby Boomer (1946-1964); "X" si es Generación X (1965-1980); "M" si es Millennials (1981-1996), y "Z" si es Generación Z (1997-presente) y "A" si es anterior a 1946.

- **Código:** [`ejercicio_1e.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_1e.pas) (programa `GeneracionPersona`)
- **Estado:** resuelto
- **Enfoque:** guarda el resultado en una variable `generacion: char` mediante una cadena `if/else if` que evalúa los rangos en orden (`< 1946`, `1946-1964`, `1965-1980`, `1981-1996`, y el `else` final para `Z`), y recién al final hace un único `writeln`.

## Ejercicio 2 — Carácter numérico `AYP1-P2-EJ02`

> Leer un carácter y almacenar en una variable booleana el valor true, si es un carácter numérico, y el valor false en caso contrario.

- **Código:** [`ejercicio_2.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_2.pas)
- **Estado:** resuelto
- **Enfoque:** `esNumero := (c >= '0') and (c <= '9')`, aprovechando que en la tabla ASCII los dígitos `'0'`-`'9'` son contiguos y comparables como caracteres. Luego usa un `if` solo para mostrar el mensaje (la variable booleana pedida por el enunciado ya quedó calculada antes del `if`).

## Ejercicio 3 — División segura `AYP1-P2-EJ03`

> Leer dos números. Calcular e informar el resultado de la división del primero por el segundo. Tener en cuenta que no se debe realizar la división si el segundo número es cero.

- **Código:** [`ejercicio_3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_3.pas) (programa `DivisionSegura`)
- **Estado:** resuelto
- **Enfoque:** lee `num1, num2: Real`; solo calcula e imprime `num1 / num2` si `num2 <> 0`, y en caso contrario informa un mensaje de error.

## Ejercicio 4 — Entradas de teatro `AYP1-P2-EJ04`

> Un teatro necesita un programa que realice lo siguiente: debe leer el precio de una entrada, la edad del comprador y tipo de función: 'N' (normal) o 'E' (especial). Luego, debe calcular e informar el precio final de cobro de la entrada: si tiene menos de 12 años, obtiene 50% de descuento, y si tiene más de 65 años, obtiene 30% de descuento. Además, si la función es especial ('E'), se suma un recargo del 20% al precio final.

- **Código:** [`ejercicio_4.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/ejercicio_4.pas) (programa `Teatro`)
- **Estado:** resuelto
- **Enfoque:** aplica los dos ajustes de forma **independiente y secuencial** sobre la misma variable `precioEntrada`: primero un `if/else if` para el descuento por edad (`< 12` → `* 0.5`, `> 65` → `* 0.7`), y después un `if` separado que aplica el recargo del 20% (`* 1.2`) si `tipoFuncion = 'E'`. Como son dos bloques `if` independientes, ambos ajustes pueden combinarse sobre el mismo precio (por ejemplo, un menor de 12 años en función especial recibe descuento y recargo).

## Archivo adicional sin numeración

- **[`prueba.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-2/prueba.pas)**: no corresponde a ningún ejercicio del enunciado. Es un programa mínimo (`a := 6+5; writeln('El valor de a es: ', a);`) que parece una prueba de sintaxis/compilador, no una solución.

---

## Material adicional: "Práctica 2 (parte 2) — Funciones, procedimientos y parámetros"

> [!NOTE]
> Esta sección transcribe una guía adicional (`practica-2-parte-2-funciones-procedimientos-parametros.pdf`, CADP 2026) que extiende la Práctica 2 hacia parámetros, funciones y procedimientos — temas que en el resto de la cátedra se ven recién en las prácticas 4 a 6. **No existe ningún archivo `.pas` resuelto en el repositorio para estos enunciados**; se documentan aquí íntegros, por trazabilidad, con `estado: "sin-solucion"`. No se inventan soluciones ni se responden las preguntas de rastreo de código ("¿qué imprime?") porque no hay forma de verificarlas de manera confiable sin ejecutar el código.

### 1. Programa dado — parámetros por valor y por referencia `AYP1-P2B-EJ01`

```pascal
program Ejercicio3;
  procedure suma(num1: integer; var num2:integer);
  begin
    num2 := num1 + num2;
    num1 := 0;
  end;
var
  i, x : integer;
begin
  read(x); { leo la variable x }
  for i:= 1 to 5 do
    suma(i,x);
  write(x); { imprimo las variable x }
end.
```

a. ¿Qué imprime si se lee el valor 10 en la variable `x`?
b. ¿Qué imprime si se lee el valor 10 en la variable `x` y se cambia el encabezado del `procedure` por: `procedure suma(num1: integer; num2:integer);`?
c. ¿Qué sucede si se cambia el encabezado del `procedure` por: `procedure suma(var num1: integer; var num2:integer);`?

### 2. Programa dado — dígitos pares/impares `AYP1-P2B-EJ02`

```pascal
program ejercicio4;
procedure digParesImpares(num : integer; var par, impar : integer);
var
  dig: integer;
begin
  while (num <> 0) do begin
    dig:= num mod 10;
    if((dig mod 2)= 0) then
      par := par + 1
    else
      impar:= impar +1;
    num := num DIV 10;
  end;
end;
var
  dato, par, impar, total, cant : integer;
begin
  par := 0;
  impar := 0;
  repeat
    read(dato);
    digParesImpares(dato,par,impar);
  until (dato = 100);
  writeln('Pares: ',par, 'Ímpares:', impar);
end.
```

a. ¿Qué imprime si se lee la siguiente secuencia de valores? `250, 35, 100`

### 3. Encontrar 6 errores `AYP1-P2B-EJ03`

> Encontrar los 6 errores que existen en el siguiente programa. Utilizar los comentarios entre llaves como guía, indicar en qué línea se encuentra cada error y en qué consiste.

```pascal
1.  program ejercicio5;
2.    { suma los números entre a y b, y retorna el resultado en c }
3.    procedure sumar(a, b, c : integer)
4.    var
5.      suma : integer;
6.    begin
7.
8.      for i := a to b do
9.        suma := suma + i;
10.     c := c + suma;
11.   end;
12.   var
13.     result : integer;
14.   begin
15.     result := 0;
16.     readln(a); readln(b);
17.     sumar(a, b, 0);
18.     write('La suma total es ',result);
19.     { averigua si el resultado final estuvo entre 10 y 30}
20.     ok := (result >= 10) or (result <= 30);
21.     if (not ok) then
22.       write ('La suma no quedó entre 10 y 30');
23.   end.
```

### 4. Programa con 5 errores `AYP1-P2B-EJ04`

> El siguiente programa intenta resolver un enunciado. Sin embargo, el código posee 5 errores. Indicar en qué línea se encuentra cada error y en qué consiste el error.
>
> Enunciado: Realice un programa que lea datos de 130 programadores Java de una empresa. De cada programador se lee el número de legajo y el salario actual. El programa debe imprimir el total del dinero destinado por mes al pago de salarios, y el salario del empleado mayor legajo.

```pascal
1.  program programadores;
2.  procedure leerDatos(var legajo: integer; salario : real);
3.  begin
4.    writeln('Ingrese el nro de legajo y el salario");
5.    read(legajo);
6.    read(salario);
7.  end;
8.  procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario:real; var maxLegajo:integer);
9.  var
10.   maxSalario : real;
11. begin
12.   if (nuevoLegajo > maxLegajo) then begin
13.     maxLegajo:= nuevoLegajo;
14.     maxSalario := nuevoSalario
15.   end;
16. end;
17. var
18.   legajo, maxLegajo, i : integer;
19.   salario, maxSalario : real;
20. begin
21.   sumaSalarios := 0;
22.   for i := 1 to 130 do begin
23.     leerDatos(salario, legajo);
24.     actualizarMaximo(legajo, salario, maxLegajo);
25.     sumaSalarios := sumaSalarios + salario;
26.   end;
27.   writeln('En todo el mes se gastan ', sumaSalarios, ' pesos');
28.   writeln('El salario del empleado más nuevo es ',maxSalario);
29. end.
```

### 5. Módulo doble + conteo de pares `AYP1-P2B-EJ05`

> a. Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de numA.
>
> b. Utilizando el módulo realizado en el inciso a., realizar un programa que lea secuencias de pares de números hasta encontrar el par (0,0), e informe la cantidad total de pares de números leídos y la cantidad de pares en las que numB es el doble de numA.
>
> Ejemplo: si se lee la siguiente secuencia: (1,2) (3,4) (9,3) (7,14) (0,0) el programa debe informar los valores 4 (cantidad de pares leídos) y 2 (cantidad de pares en los que numB es el doble de numA).

### 6. Tienda de ropa modularizada `AYP1-P2B-EJ06`

> Realizar un programa modularizado que lea datos de 100 productos de una tienda de ropa. Para cada producto debe leer el precio, código y tipo (pantalón, remera, camisa, medias, campera, etc.). Informar: código de los dos productos más baratos; código del producto de tipo "pantalón" más caro; precio promedio.

### 7. Dígitos: cantidad y suma `AYP1-P2B-EJ07`

> a. Realizar un módulo que reciba como parámetro un número entero y retorne la cantidad de dígitos que posee y la suma de los mismos.
>
> b. Utilizando el módulo anterior, realizar un programa que lea una secuencia de números e imprima la cantidad total de dígitos leídos. La lectura finaliza al leer un número cuyos dígitos suman exactamente 10, el cual debe procesarse.

### 8. Suma de dígitos pares / cantidad de impares `AYP1-P2B-EJ08`

> Realizar un programa modularizado que lea secuencia de números enteros. La lectura finaliza cuando llega el número 123456, el cual no debe procesarse. Informar en pantalla para cada número la suma de sus dígitos pares y la cantidad de dígitos impares que posee.

### 9. Alumnos de una facultad `AYP1-P2B-EJ09`

> Realizar un programa modularizado que lea información de alumnos de una facultad. Para cada alumno se lee: número de inscripción, apellido y nombre. La lectura finaliza cuando se ingresa el alumno con número de inscripción 1200, que debe procesarse. Se pide calcular e informar: apellido de los dos alumnos con número de inscripción más chico; apellido de los dos alumnos con número de inscripción más grande; porcentaje de alumnos con nro de inscripción par.

### 10. Patrón `A$B#` `AYP1-P2B-EJ10`

> Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón `A$B#`, donde: A es una secuencia de sólo letras vocales; B es una secuencia de sólo caracteres alfabéticos sin letras vocales; los caracteres `$` y `#` seguro existen. Nota: en caso de no cumplir, informar que parte del patrón no se cumplió.

### 11. Patrón `A%B*` `AYP1-P2B-EJ11`

> Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón `A%B*`, donde: A es una secuencia de caracteres en la que no existe el carácter '$'; B es una secuencia con la misma cantidad de caracteres que aparecen en A y en la que aparece a lo sumo 3 veces el carácter '@'; los caracteres `%` y `*` seguro existen. Nota: en caso de no cumplir, informar que parte del patrón no se cumplió.

### 12. Rendimiento de plantaciones de soja `AYP1-P2B-EJ12`

> a. Realizar un módulo que calcule el rendimiento económico de una plantación de soja. El módulo debe recibir la cantidad de hectáreas (ha) sembradas, el tipo de zona de siembra (1: zona muy fértil, 2: zona estándar, 3: zona árida) y el precio en U$S de la tonelada de soja; y devolver el rendimiento económico esperado de dicha plantación. Para calcular el rendimiento económico esperado debe considerar el siguiente rendimiento por tipo de zona:
>
> | Tipo de zona | Rendimiento por ha |
> |---|---|
> | 1 | 6 toneladas por ha |
> | 2 | 2,6 toneladas por ha |
> | 3 | 1,4 toneladas por ha |
>
> b. ARBA desea procesar información obtenida de imágenes satelitales de campos sembrados con soja en la provincia de Buenos Aires. De cada campo se lee: localidad, cantidad de hectáreas sembradas y el tipo de zona (1, 2 ó 3). La lectura finaliza al leer un campo de 900 ha en la localidad 'Saladillo', que debe procesarse. El precio de la soja es de U$S320 por tn. Informar: la cantidad de campos de la localidad Tres de Febrero con rendimiento estimado superior a U$S 10.000; la localidad del campo con mayor rendimiento económico esperado; la localidad del campo con menor rendimiento económico esperado; el rendimiento económico promedio.

### Ejercicios adicionales

> [!WARNING]
> El ejercicio adicional 5 (más abajo) menciona una sección "Práctica 1 - Ejercicios Adicionales" con 3 problemas complejos previos. Esa sección **no existe** en la fuente `Practica 1 - AyPI - 2026.docx.pdf` disponible en este repositorio (que solo tiene los 4 ejercicios documentados en la [Práctica 1](../practica-1/ejercicios.md)). Es una discrepancia entre fuentes que se deja señalada tal cual, sin inventar el contenido faltante.

#### Adicional 1 — Programa dado, intercambio y suma `AYP1-P2B-AD01`

```pascal
program Ejercicio1_ad;
  procedure intercambio(var num1,num2 : integer);
  var
    aux : integer;
  begin
    aux := num1;
    num1 := num2;
    num2 := aux;
  end;
  procedure sumar(num1 : integer; var num2 : integer);
  begin
    num2 := num1 + num2;
  end;
var
  i, num1, num2 : integer;
begin
  read(num1);
  read(num2);
  for i := 1 to 3 do begin
    intercambio(num1,num2);
    sumar(i,num1);
  end;
  writeln(num1);
end.
```

a. ¿Qué imprime si se leen los valores `num1=10` y `num2=5`?
b. ¿Qué imprime si se leen los valores `num1=5` y `num2=10`?

#### Adicional 2 — Suma y producto entre X e Y `AYP1-P2B-AD02`

> Realice un programa modularizado que lea 10 pares de números (X,Y) e informe, para cada par de números, la suma y el producto de todos los números entre X e Y. Por ejemplo, dado el par (3,6), debe informar: "La suma es 18" (obtenido de calcular 3+4+5+6) y "El producto es 360" (obtenido de calcular 3*4*5*6).

#### Adicional 3 — Productos de supermercado `AYP1-P2B-AD03`

> Realizar un programa modularizado que lea información de 200 productos de un supermercado. De cada producto se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla: los códigos de los dos productos más baratos; la cantidad de productos de más de 16 pesos con código par.

#### Adicional 4 — Planetas del Telescopio Kepler `AYP1-P2B-AD04`

> a. Realizar un módulo que reciba como parámetro el radio de un círculo y retorne su diámetro y su perímetro.
>
> b. Utilizando el módulo anterior, realizar un programa que analice información de planetas obtenida del Telescopio Espacial Kepler. De cada planeta se lee su nombre, su radio (medido en kilómetros) y la distancia (medida en años luz) a la Tierra. La lectura finaliza al leer un planeta con radio 0, que no debe procesarse. Informar: nombre y distancia de los planetas que poseen un diámetro menor o igual que el de la Tierra (12.700 km) y mayor o igual que el de Marte (6.780 km); cantidad de planetas con un perímetro superior al del planeta Júpiter (439.264 km).

#### Adicional 5 — Reflexión sobre modularización `AYP1-P2B-AD05`

> En la "Práctica 1 - Ejercicios Adicionales" se resolvieron 3 problemas complejos sin utilizar módulos. Al carecer de herramientas para modularizar, esos programas resultaban difíciles de leer, de extender y de depurar.
>
> a. Analice sus soluciones a dichos problemas, e identifique: ¿qué porciones de su código podrían modularizarse? ¿En qué casos propondría una estructura de módulos anidada? ¿Qué tipo de módulo (función o procedimiento) conviene utilizar en cada caso? ¿Existe algún caso en los que sólo un tipo de módulo es posible? ¿Qué mecanismos de comunicación conviene utilizar entre los módulos propuestos?
>
> b. Implemente nuevamente los 3 programas, teniendo en cuenta los módulos propuestos en el inciso anterior.
