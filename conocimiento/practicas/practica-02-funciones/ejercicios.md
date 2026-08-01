---
id: "CADP-P02-EJERCICIOS"
titulo: "Ejercicios — Práctica 2: Funciones y procedimientos"
slug: "practica-02-funciones-ejercicios"
tipo: "ejercicio"
unidad: 2
tema: "funciones-y-procedimientos"
subtemas:
  - "procedimientos"
  - "funciones"
  - "parametros-por-valor"
  - "parametros-por-referencia"
  - "alcance-de-variables"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-02-funciones/Redictado CADP 2020 - Practica 2 - Funciones y procedimientos.pdf"
    paginas: "1-7"
  - archivo: "../../../fuentes/practicas/practica-02-funciones/1.txt"
  - archivo: "../../../fuentes/practicas/practica-02-funciones/2.txt"
prerrequisitos:
  - "estructuras-de-control"
  - "tipos-de-datos"
relacionados:
  - "teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-02-funciones/"
---

# Ejercicios — Práctica 2: Funciones y procedimientos

Los ejercicios 1 y 2 se transcriben desde `1.txt` y `2.txt` (texto plano, coinciden con el PDF); el resto, del PDF. Todas las soluciones se compilaron con Free Pascal 3.2.2; algunas además se ejecutaron con entradas concretas para verificar el resultado real (se indica explícitamente cuándo).

## Ejercicio 1 — Alcance de variables

**Enunciado** (`1.txt`):

> Dado el siguiente programa, indicar qué imprime.
> ```pas
> program alcance1;
> var a,b: integer;
>  procedure uno;
>  	var b: integer;
>  	begin
> 	  b := 3;
> 	  writeln(b);
>  	end;
> 	begin
>  	 a:= 1;
> 	 b:= 2;
>     	 uno;
>  	 writeln(b, a);
> 	end.
> ```

**Respuesta registrada en la fuente** (anotada por el propio estudiante al final de `1.txt`): "Imprime 3 y despues imprime 2,1".

**Estado: resuelto — verificado por ejecución real.** Se compiló y ejecutó este mismo programa con Free Pascal 3.2.2 (no requiere entrada por teclado). Salida real:

```
3
21
```

Coincide con la respuesta registrada (3, y luego los valores 2 y 1 uno junto al otro — `writeln` sin formato de ancho no separa los valores con espacio). Ver la explicación de por qué en [`teoria.md`](teoria.md#alcance-scope-de-variables-una-variable-local-oculta-a-la-global-con-el-mismo-nombre).

## Ejercicio 2 — Alcance de variables (variable inexistente)

**Enunciado** (`2.txt`):

> Dado el siguiente programa, indicar cuál es el error y su causa.
> ```pas
> program alcance;
> 	var a: integer;
>  	procedure uno;
>  	var b: integer;
>  	begin
>  		b:= 2;
> 		 writeln(b);
>  	end;
> 	begin
> 		 a:= 1;
>  		uno;
> 		 writeln(a, b);
> 	end.
> ```

**Respuesta registrada en la fuente**: "Que la variable b no esta declarada de forma global, solo adentro de 'uno'".

**Estado: resuelto — verificado por ejecución real.** Se intentó compilar exactamente este programa con Free Pascal 3.2.2: falla con `Error: Identifier not found "b"` en la línea `writeln(a, b)`. Coincide con la respuesta registrada en la fuente.

## Ejercicio 3 — Parámetros por valor y por referencia

**Enunciado:**

> Dado el siguiente programa:
> ```pas
> program Ejercicio1;
> procedure suma(num1: integer; var num2:integer);
> begin
>  num2 := num1 + num2;
>  num1 := 0;
> end;
> var
>  i, x : integer;
> begin
>  read(x); { leo la variable x }
>  for i:= 1 to 5 do
>  suma(i,x);
>  write(x); { imprimo las variable x }
> end.
> ```
> a. ¿Qué imprime si se lee el valor 10 en la variable x?
> b. ¿Qué imprime si se lee el valor 10 en la variable x y se cambia el encabezado del procedure por: `procedure suma(num1: integer; num2:integer);`?
> c. ¿Qué sucede si se cambia el encabezado del procedure por: `procedure suma(var num1: integer; var num2:integer);`?

**Solución:** [`4.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/4.pas) — **estado: resuelto (parcialmente, como material de verificación)**

El archivo no reescribe un programa nuevo: retoma el programa del enunciado y anota, en comentarios, las tres respuestas: "a. ... Imprime 25 / b. ... 10 / c. ... Se reinicia infinitas veces el bucle". Más abajo reescribe el programa con el encabezado de la parte (b) (`num1, num2` ambos por valor) para verificarlo, aunque en esa reescritura cambia la línea final por `write('Hola mundo')` en vez de `write(x)` — es decir, el código que sigue a los comentarios no reproduce fielmente el enunciado, sólo sirvió como banco de pruebas de sintaxis. La respuesta (a) es consistente con la semántica de parámetros por valor/referencia explicada en `teoria.md`: como `num2` es `var`, cada llamada de `suma(i,x)` deja `x := x + i`, y con `x` inicial en 10 y `i` de 1 a 5, el resultado es `10+1+2+3+4+5 = 25`.

## Ejercicio 4 — Trazado de un procedimiento con `while`

**Enunciado:**

> Dado el siguiente programa: [`digParesImpares`, cuenta dígitos pares e impares de una secuencia de números que termina en 100]. a. ¿Qué imprime si se lee la siguiente secuencia de valores? 250, 35, 100

**Solución:** [`4 Cantidad de digitos pares e inpares.pas`](<../../../codigo/soluciones/practicas/practica-02-funciones/4 Cantidad de digitos pares e inpares.pas>) — **estado: resuelto — verificado por ejecución real**

El archivo reproduce el programa del enunciado sin modificarlo (agrega sólo un comentario propio). Se compiló y ejecutó con la secuencia exacta que pide el enunciado (250, 35, 100 — el 100 se procesa antes de cortar el `repeat...until`). Salida real:

```
Pares: 4Ímpares:4
```

Es decir, 4 dígitos pares y 4 impares en total entre los tres números (250 aporta 2 pares y 1 impar; 35 aporta 0 pares y 2 impares; 100 aporta 2 pares y 1 impar). El comentario del propio archivo sólo decía, de forma cualitativa, "lee la cantidad de digitos pares la cantidad de digitos inpares", sin el resultado numérico — se completa acá con el valor verificado.

## Ejercicio 5 — Encontrar los 6 errores

**Enunciado:** Dado un programa que suma los números entre `a` y `b` y retorna el resultado en `c`, encontrar sus 6 errores.

**Solución:** [`5.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/5.pas) — **estado: parcial**

El archivo conserva el programa del enunciado casi sin cambios y anota, en un comentario sobre la línea `sumar(a, b, 0);`, uno de los seis errores: `// no podes pasar un valor por parametro "0"` (no se puede pasar una constante donde el parámetro es `var`). No anota los otros cinco errores por escrito. De hecho, el propio programa (tal como está, con el error del enunciado que falta un `;` después del encabezado `procedure sumar(a, b, c: integer)`) no compila: `Syntax error, ";" expected but "VAR" found` — ese error de sintaxis es, en sí mismo, **uno de los 6 que había que encontrar** (el enunciado da el código roto a propósito).

## Ejercicio 6 — Encontrar los 5 errores (nómina de programadores)

**Enunciado:** Programa que lee legajo y salario de 130 programadores e informa el total a pagar y el salario del empleado de mayor legajo; el enunciado dice que tiene 5 errores.

**Solución:** [`6.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/6.pas) — **estado: resuelto (como respuesta en prosa)**

Este archivo **no contiene código Pascal**: es enteramente un bloque de comentario con la respuesta, numerando 6 puntos (el enunciado pedía encontrar 5):

> 1: Falta inicializar todas las variables menos la de "sumaSalarios"
> 2: A salario en la funcion principal lo declaro como real, y en la funcion leerDatos esta declarado como entero (No se puede cambiar el tipo de datos de una variable en una funcion)
> 3: En legajo inicializo como entero y en la funcion lo cambio a real.
> 4: Se considera mala practica, leer un dato dentro de una funcion
> 5: Tengo maxlegajo declarada como entero y en la funcion actualizarMaximo lo declaro como real
> 6: Falta inicializar MaxSalario ya que es la variable local de tipo real

Como no hay código ejecutable en el archivo, no se intentó compilar (no aplica). Se transcribe la respuesta tal cual la dejó el estudiante, incluyendo la diferencia entre "5 errores" (enunciado) y "6 puntos" (respuesta).

## Ejercicio 7 — Módulo: ¿es el doble?

**Enunciado:**

> a. Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de numA.
> b. Utilizando el módulo del inciso a., leer secuencias de pares hasta (0,0), e informar la cantidad total de pares leídos y la cantidad de pares en las que numB es el doble de numA.

**Solución:** [`7.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/7.pas) — **estado: parcial**

Resuelve la parte (a) de forma simplificada: en vez de que el módulo "retorne" el resultado (por ejemplo con un parámetro `var` booleano o como `function`), el procedimiento `cosa` imprime directamente el mensaje desde adentro. La parte (b) no está implementada: el programa principal lee un único par y llama a `cosa` una sola vez; no hay bucle, no hay centinela (0,0) y no se cuentan pares.

## Ejercicio 8 — Productos de una tienda de ropa

**Enunciado:**

> Realizar un programa modularizado que lea datos de 100 productos de una tienda de ropa (precio, código, tipo). Informar: código de los dos productos más baratos; código del producto de tipo "pantalón" más caro; precio promedio.

**Solución:** [`8.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/8.pas) — **estado: resuelto**

Tres procedimientos (`leerProductos`, `pantalonCaro`, `productosBatatos` [sic]) resuelven, respectivamente, la lectura y los dos rastreos pedidos (mantener los dos precios más bajos con su código; mantener el precio más alto entre los de tipo `'pantalon'`), más el promedio acumulado. El enfoque de "mantener el primero y el segundo mejor" con dos variables comparadas en cascada es correcto. El bucle usa `numero:=3` (3 productos) en lugar de 100 — ajuste manual para probar, no afecta la lógica.

## Ejercicio 9 — Cantidad y suma de dígitos

**Enunciado:**

> Realizar un módulo que reciba un número entero y retorne la cantidad de dígitos que posee y la suma de los mismos.
> a. Usando ese módulo, leer una secuencia de números e imprimir la cantidad total de dígitos leídos. La lectura finaliza al leer un número cuyos dígitos suman exactamente 10, el cual debe procesarse.

**Solución:** [`9.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/9.pas) — **estado: posiblemente-incorrecto**

El módulo base (`digitos_CantidadYSuma`, sin la parte a) es correcto: cuenta dígitos y los suma con `mod 10` / `div 10`. La parte (a) pide un **total acumulado a lo largo de toda la secuencia**, pero el programa principal reinicia `cantidad_numeros:=0` y `suma_numeros:=0` en cada vuelta del `repeat`, antes de leer el siguiente número — por lo tanto sólo informa la cantidad de dígitos del **último** número leído, no el total de la secuencia.

## Ejercicio 10 — Dígitos pares e impares hasta 123456

**Enunciado:**

> Realizar un programa modularizado que lea una secuencia de números enteros. La lectura finaliza cuando llega el número 123456, el cual no debe procesarse. Informar para cada número la suma de sus dígitos pares y la cantidad de dígitos impares que posee.

**Solución:** [`10.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/10.pas) — **estado: posiblemente-incorrecto**

La condición de corte está bien resuelta (`while numeros <> 123456`, no procesa el centinela). El error está en qué se calcula: el enunciado pide la **suma** de los dígitos pares, pero el módulo sólo lleva la **cantidad** de dígitos pares (`digitos_ParesF:=digitos_ParesF+1`, un contador, no un acumulador de valores). El segundo mensaje impreso además dice "La suma de todos sus digitos es" pero en realidad imprime la cantidad de dígitos impares — la etiqueta no coincide con lo que calcula.

## Ejercicio 11 — Alumnos de una facultad

**Enunciado:**

> Realizar un programa modularizado que lea nro de inscripción, apellido y nombre de alumnos, hasta el nro de inscripción 1200 (que debe procesarse). Informar: apellido de los dos alumnos con nro más chico; nombre de los dos con nro más grande; porcentaje de alumnos con nro par.

**Solución:** [`11.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/11.pas) — **estado: posiblemente-incorrecto**

La estructura general (tres procedimientos para las dos comparaciones de "mantener el top-2" más el conteo de pares, y un `repeat...until` que procesa el 1200) es sólida y coherente con el resto de la práctica. El problema es de datos: la lectura de `apellido` está deshabilitada (`//readln(apellido);` y `//apellido:String;` quedaron comentadas), así que el programa nunca lee ese campo y usa `nombre` tanto para "los dos con nro más chico" como para "los dos con nro más grande" — cuando el enunciado pide **apellido** para el primer caso y **nombre** para el segundo.

## Ejercicio 12 — Patrón A$B#

**Enunciado:**

> Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón A$B#, donde A es sólo vocales, B es sólo alfabéticos sin vocales, y los caracteres $ y # seguro existen.

**Solución:** [`12.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/12.pas) — **estado: parcial**

Implementa dos procedimientos (`A` y `B`) que leen mientras se cumple el patrón de cada tramo. La condición del `while` de la parte `A` combina `or` y `and` sin paréntesis (`(v='a') or (v='e') or ... or (v='u') and (signo_dinero<>false)`); en Pascal `and` tiene más prioridad que `or`, así que sólo la última comparación (`v='u'`) queda condicionada por `signo_dinero` — probablemente no es la intención. No se ejecutó con casos concretos para confirmar el efecto exacto; se deja señalado como punto a revisar en vez de afirmar un resultado no verificado.

## Ejercicio 13 — Patrón A%B\*

**Enunciado:**

> Realizar un programa modularizado que lea una secuencia de caracteres y verifique el patrón A%B\*, donde A no contiene '$', B tiene la misma cantidad de caracteres que A y a lo sumo 3 '@'.

**Solución:** [`13.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/13.pas) — **estado: resuelto**

El tramo `A` corta la lectura al encontrar `'$'` o `'%'`, y sólo marca `cumpleAf` si terminó en `'%'` — por lo que un `'$'` intermedio hace fallar correctamente esa parte. El tramo `B` cuenta caracteres hasta igualar el largo de `A` o encontrar `'*'`, limitando la cuenta de `'@'` a 3. Compila sin advertencias; no se probó con una secuencia concreta.

## Ejercicio 14 — Rendimiento de una plantación de soja

**Enunciado:**

> a. Realizar un módulo que calcule el rendimiento económico de una plantación de soja, según hectáreas, tipo de zona (1/2/3) y precio de la tonelada. b. Procesar campos de la provincia de Bs. As. hasta un campo de 900 ha en 'Saladillo' (que se procesa); informar cantidad de campos de "Tres de Febrero" con rendimiento > U\$S 10.000, localidad de mayor y menor rendimiento, y el rendimiento promedio.

**Soluciones:** [`14.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/14.pas) (parte a) y [`14.B.pas`](<../../../codigo/soluciones/practicas/practica-02-funciones/14.B.pas>) (parte b) — **estado: resuelto**

`14.pas` implementa el módulo pedido en (a) con un `case` sobre el tipo de zona y las tres tasas de rendimiento (6, 2.6 y 1.4 toneladas/ha) tal como las da la tabla del enunciado. `14.B.pas` retoma ese cálculo como `function`, agrega localidad y hectáreas, y lleva los tres resultados pedidos (contador de Tres de Febrero, mayor/menor rendimiento con su localidad, acumulador para el promedio) con un `repeat...until (Hectarias=900) and (localidad='Saladillo')` que procesa correctamente el registro centinela.

## Ejercicios adicionales

### 1. Trazado: intercambio y suma en un `for`

**Enunciado:**

> ```pas
> program Ejercicio2;
> procedure intercambio(var num1,num2 : integer);
> ...
> procedure sumar(num1 : integer; var num2 : integer);
> ...
> for i := 1 to 3 do begin
>  intercambio(num1,num2);
>  sumar(i,num1);
> end;
> writeln(num1);
> ```
> a. ¿Qué imprime si se leen num1=10 y num2=5? b. ¿Qué imprime si se leen num1=5 y num2=10?

**Solución:** [`Adicional1.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/Adicional1.pas) — **estado: posiblemente-incorrecto (respuesta anotada no coincide con la ejecución real)**

El archivo reproduce el programa del enunciado y anota, paso a paso en comentarios, un trazado manual con la conclusión "a)13 b)8". Se compiló y ejecutó el programa real con ambas entradas (Free Pascal 3.2.2):

| Entrada | Salida real |
|---|---|
| `num1=10, num2=5` | `9` |
| `num1=5, num2=10` | `14` |

Es decir, la ejecución real da **9 y 14**, no 13 y 8 como anota el comentario del archivo. Se registra la discrepancia entre el trazado manual del estudiante y el resultado verificado por ejecución, sin corregir el archivo original.

### 2. Suma y producto entre dos números

**Enunciado:**

> Realice un programa modularizado que lea 10 pares de números (X,Y) e informe, para cada par, la suma y el producto de todos los números entre X e Y. Por ejemplo, dado (3,6): "La suma es 18" (3+4+5+6) y "El producto es 360" (3\*4\*5\*6).

**Solución:** [`Adicional2.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/Adicional2.pas) — **estado: posiblemente-incorrecto — verificado por ejecución real**

El programa sólo lee **un** par (no 10) pese al nombre del procedimiento de lectura (`Leer_Diez_Pares`). Además, se ejecutó con el mismo par de ejemplo del enunciado (3,6) para verificar el resultado: la salida real fue "La suma de todos los numeros entre x e y son : **9**" y "El producto ... son : **20**", en vez de 18 y 360. La causa es visible en el código: los bucles `for numero1:=numero1+1 to numero2-1` excluyen ambos extremos (empiezan en X+1 y terminan en Y-1), mientras que el ejemplo del enunciado los incluye (3+4+5+6, no 4+5).

### 3. Productos de un supermercado (200)

**Enunciado:**

> Realizar un programa modularizado que lea información de 200 productos (código y precio, código entre 1 y 200). Informar: códigos de los dos productos más baratos; cantidad de productos de más de 16 pesos con código par.

**Solución:** [`Adicional3.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/Adicional3.pas) — **estado: resuelto**

Resuelve ambos puntos con el patrón de "mantener el primero y segundo más barato" y un contador condicional. El bucle recorre 6 productos en vez de 200 (ajuste manual para probar); la lógica en sí es correcta para cualquier cantidad.

### 4. Círculo y planetas (Kepler)

**Enunciado:**

> Realizar un módulo que reciba el radio de un círculo y retorne su diámetro y perímetro. a. Usándolo, analizar planetas (nombre, radio, distancia a la Tierra) hasta un radio 0 (no se procesa). Informar nombre y distancia de los que tengan diámetro entre el de Marte y el de la Tierra, y la cantidad con perímetro mayor al de Júpiter.

**Soluciones:** [`Adicional4.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/Adicional4.pas) (sólo el módulo) y [`Adicional4a.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/Adicional4a.pas) (parte a completa)

- `Adicional4.pas` — **estado: posiblemente-incorrecto**. El propio compilador advierte `Warning: Variable "radio" does not seem to be initialized` sobre la variable global `radio`, que nunca se lee antes de pasarla al módulo (el módulo sí lee un valor con `ReadLn(radiof)`, así que en la práctica funciona, pero de un modo que el compilador no puede verificar como seguro). Aparte de esa advertencia, la fórmula del diámetro está invertida: calcula `diametrof := radiof/2` (la mitad del radio) en vez de `radiof*2` (el doble del radio, que es la definición de diámetro).
- `Adicional4a.pas` — **estado: parcial**. Retoma el módulo (con la misma fórmula de diámetro invertida) y agrega la lectura de planetas con centinela radio=0. Sólo implementa el segundo punto pedido (cantidad de planetas con perímetro mayor al de Júpiter); el primer punto (nombre y distancia de los planetas entre el diámetro de Marte y el de la Tierra) está comentado como pendiente (`//Diametro_Menor_Igual_Tierra(...)`, procedimiento que nunca se llegó a escribir).

## Archivo que no corresponde a ningún ejercicio de esta guía

[`ex.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/ex.pas) (`program ultimo;`) no tiene enunciado ni comentario que lo vincule a ningún ejercicio de esta práctica: es un programa corto que multiplica con una `function` dentro de un `for`. Se detectó además que, tal como está escrito, `total` se usa como acumulador y como uno de los factores de la propia multiplicación en la misma expresión (`total := total + multiplicar(i,total)`), y arranca en 0 — por lo que, siguiendo la lógica del código, el resultado se mantiene en 0 en cada vuelta (0 más "algo por 0"). Se preserva como archivo suelto, sin forzarlo dentro de la numeración de la guía.
