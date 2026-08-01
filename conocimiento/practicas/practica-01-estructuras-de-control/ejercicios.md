---
id: "CADP-P01-EJERCICIOS"
titulo: "Ejercicios — Práctica 1: Estructuras de control"
slug: "practica-01-estructuras-de-control-ejercicios"
tipo: "ejercicio"
unidad: 1
tema: "estructuras-de-control"
subtemas:
  - "condicionales-if"
  - "bucles-while"
  - "bucles-for"
  - "bucles-repeat-until"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-01-estructuras-de-control/Redictado CADP 2020 - Practica 1 - Estructuras de control.pdf"
    paginas: "1-4"
prerrequisitos:
  - "tipos-de-datos"
relacionados:
  - "teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/"
---

# Ejercicios — Práctica 1: Estructuras de control

Todos los enunciados se transcriben literalmente del PDF fuente. Las soluciones siguen el patrón `N.pas` para la Parte I y `N.Parte2.pas` para la Parte II; se verificó cada archivo contra su enunciado (no siempre coinciden, ver ejercicio 1 de la Parte II). Todos los archivos se compilaron con Free Pascal 3.2.2 como parte de esta conversión; los errores que se citan textualmente son reales, no supuestos.

## Parte I: If y While

### Ejercicio 1

> Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los dos números es el menor. Si son iguales, se deberá informar en pantalla lo siguiente: "Los números leídos son iguales".

**Solución:** [`1.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/1.pas) — **estado: posiblemente-incorrecto**

El enfoque (dos `if` para detectar cuál es menor, y un tercer `if`/`else` para el caso "iguales") es razonable, pero el archivo **no compila**: hay un `;` de más antes del `else` final. Error real de Free Pascal: `Syntax error, ";" expected but "ELSE" found` (línea 18). Detalle del error en [`teoria.md`](teoria.md#errores-de-sintaxis-reales-encontrados-en-esta-unidad).

### Ejercicio 2

> Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un número X se escribe |X| y se define como: |X| = X cuando X es mayor o igual a cero. |X| = -X cuando X es menor a cero.

**Solución:** [`2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/2.pas) — **estado: resuelto**

Dos `if` independientes (`Numero_Real<0` y `Numero_Real>=0`), sin `else`, cubren ambos casos sin el problema de sintaxis del ejercicio anterior. Compila y su lógica coincide con la definición matemática dada.

### Ejercicio 3

> Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído).

**Solución:** [`3.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/3.pas) — **estado: resuelto**

`while ((DobleReal/2)<>NumeroReal) do read(DobleReal)`. Compila y resuelve la condición de corte pedida.

### Ejercicio 4

> Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X o al leer el décimo número, en cuyo caso deberá informarse: "No se ha ingresado el doble de X".

**Solución:** [`4.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/4.pas) — **estado: parcial**

Agrega el límite de 10 lecturas con un contador (`while (...) and (contador<10)`), pero nunca imprime el mensaje "No se ha ingresado el doble de X" cuando se agota el límite sin encontrarlo — la condición de corte por cantidad está, el aviso pedido no.

### Ejercicio 5

> Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse. Al finalizar la lectura, informar: la cantidad de alumnos leída; la cantidad de alumnos cuyo promedio supera 6.5; el porcentaje de alumnos destacados (promedio mayor a 8.5) cuyo legajo sea menor a 2500.

**Solución:** [`5.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/5.pas) — **estado: posiblemente-incorrecto**

No compila: falta un `;` entre dos `if` consecutivos. Error real: `Syntax error, ";" expected but "IF" found` (línea 35, ver detalle en `teoria.md`). Además, aunque se corrigiera ese punto y coma, la fórmula final (`promedio := (alumnos/100)*destacados`) no calcula el porcentaje pedido (destacados con legajo menor a 2500): esa condición sobre el legajo no se evalúa en ningún lado del código.

### Ejercicio 6

> Realizar un programa que lea una secuencia de caracteres hasta que se ingrese el carácter '\*' (que no debe procesarse). Se pide calcular e informar: la cantidad de 'z' (minúscula) y 'Z' (mayúscula) leídas; el porcentaje de vocales leídas; si aparece la sub-secuencia 'ab' dentro de la secuencia.

**Solución:** [`6.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/6.pas) — **estado: parcial**

Sólo resuelve el primer punto (conteo de `z`/`Z`). No calcula el porcentaje de vocales ni detecta la sub-secuencia `'ab'`.

### Ejercicio 7

> Realizar un programa que lea el código, precio actual y nuevo precio de los productos de un almacén. La lectura finaliza al ingresar el código 32767 (que no debe procesarse). Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un 10% al precio anterior.

**Solución:** [`7.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/7.pas) — **estado: posiblemente-incorrecto**

Calcula el porcentaje de aumento (`aumento := ((precio_nuevo-precio_actual)/precio_actual)*100`) pero nunca lo compara contra 10 ni imprime los mensajes pedidos ("no supera el 10%" / "es superior al 10%"): sólo imprime el número. Además, `codigo` se lee una única vez antes del `while` y nunca se vuelve a leer dentro del bucle, por lo que la condición de corte (`codigo<>32767`) no puede volver a evaluarse en falso: tal como está escrito, el programa no termina.

### Ejercicio 8

> Realizar un programa que lea el DNI, apellido y nombre de los clientes de un banco. La lectura deberá finalizar cuando se ingrese el DNI -1 (que no debe procesarse) o cuando se hayan procesado 1000 clientes. Se pide calcular e informar: si hay algún cliente llamado "Pedro"; la cantidad de clientes de apellido "Gómez"; el porcentaje de clientes de apellido "Hernández" y con DNI par.

**Solución:** [`8.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/8.pas) — **estado: parcial**

Sólo implementa el esqueleto de lectura (`while (dni<>-1) and (clientes<100) do ...`, con el límite en 100 en vez de 1000). No calcula ninguno de los tres resultados pedidos. Además `apellido` y `nombre` se declaran como `char` (un solo carácter), no como cadena — con ese tipo no podrían guardar "Pedro", "Gómez" ni "Hernández" aunque se agregara la lógica faltante.

## Parte II: For y Repeat-until

### Ejercicio 1

> Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
> a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5.

**estado: sin-solucion**

> [!WARNING]
> El archivo con el nombre "natural" para este ejercicio, [`1.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/1.Parte2.pas), **no corresponde a este enunciado**. Su comentario inicial cita correctamente el enunciado de este ejercicio, pero el código que sigue es un programa distinto (`type persona = record nombre, apellido: str20; end;` con un puntero `^persona` y un `procedure intercambiar`), sin relación con sumar 10 números ni contar mayores a 5 — se parece más a un ejercicio de punteros/registros (temas de prácticas posteriores) que quedó pegado en el archivo equivocado. Se deja registrado como discrepancia y no se vincula como solución de este ejercicio.

### Ejercicio 2

> Realizar un programa que lea 10 números e informe cuál fue el mayor número leído.
> a. Modificar el programa anterior para que, además de informar el mayor número leído, se informe el número de orden, dentro de la secuencia, en el que fue leído.

**Solución:** [`2.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/2.Parte2.pas) — **estado: parcial**

Encuentra el mayor número mediante un `for` con una comparación algo enrevesada (usa dos variables, `primer` y `numeros`, reasignándose entre sí en cada vuelta) pero que llega al resultado correcto para el máximo. No implementa la parte (a): en ningún momento se guarda ni se informa la posición en la que se leyó el máximo.

### Ejercicio 3

> Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA. La lectura finaliza cuando se lee el nombre "Zidane Zinedine", que debe procesarse. Al finalizar la lectura informar: la cantidad de alumnos aprobados (nota 8 o mayor); la cantidad de alumnos que obtuvieron un 7 como nota.

**Solución:** [`3.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/3.Parte2.pas) — **estado: resuelto**

`repeat ... until (nombre='Zidane Zinedine')` procesa correctamente el registro centinela (el cuerpo del `repeat` se ejecuta antes de evaluar la condición, así que el alumno "Zidane Zinedine" sí se cuenta, tal como pide el enunciado). Cuenta `aprobados` (nota ≥ 8) y `siete` (nota = 7) correctamente.

### Ejercicio 4

> Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son los dos números mínimos leídos.
> a. Modificar para que la lectura finalice al leer el número 0, el cual **debe** procesarse.
> b. Modificar para que la lectura finalice al leer el número 0, el cual **no debe** procesarse.

**Solución:** [`4.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/4.Parte2.pas) — **estado: posiblemente-incorrecto**

Declara `numero_uno` y `numero_dos` para guardar los dos mínimos, pero nunca los usa: Free Pascal lo marca explícitamente (`Note: Local variable "numero_uno" is assigned but never used`, ídem `numero_dos`). En su lugar, la comparación reutiliza la variable de lectura `chico` tanto para el dato entrante como para uno de los acumuladores, lo que hace que el resultado no sea confiable. Tampoco implementa ninguna de las dos variantes (a/b) de corte por el número 0; el bucle es un `for` fijo de 11 iteraciones.

### Ejercicio 5

> Realizar un programa que lea información de 200 productos de un supermercado. De cada producto se lee código y precio. Informar en pantalla: los códigos de los dos productos más baratos; la cantidad de productos de más de 16 pesos con código par; el precio promedio.

**Solución:** [`5.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/5.Parte2.pas) — **estado: parcial**

Calcula correctamente el precio promedio y la cantidad de productos de más de 16 pesos con código par. No implementa el primer punto pedido (códigos de los dos productos más baratos: no hay ninguna variable que guarde un precio mínimo). El bucle recorre 10 productos en lugar de 200 (probablemente para probar manualmente).

### Ejercicio 6

> Realizar un programa que lea información de una cartelera de cine (título y duración en minutos). La lectura finaliza cuando se ingresa "El hombre araña", que debe procesarse. Informar: el nombre de la película más larga; el porcentaje de películas que duran entre 90 y 120 minutos; la cantidad de películas que duran menos de 90 minutos.

**Solución:** [`6.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/6.Parte2.pas) — **estado: posiblemente-incorrecto**

Bug confirmado por el propio compilador: `Note: Local variable "duracion" is assigned but never used`. En vez de comparar las duraciones (`minutos`) para encontrar la película más larga, el código compara los **títulos** como cadenas (`if pelicula > pelicula_larga`, orden alfabético), que no es lo que pide "más larga". El porcentaje entre 90 y 120 minutos y la cantidad de menos de 90 minutos no se calculan.

### Ejercicio 7

> Realizar un programa que lea desde teclado información de autos de carrera (piloto y tiempo total). Participaron 100 autos. Informar: los nombres de los dos pilotos que finalizaron en los dos primeros puestos; los nombres de los dos pilotos que finalizaron en los dos últimos puestos.

**Solución:** [`7.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/7.Parte2.pas) — **estado: resuelto**

Lleva, con `if`/`else` anidados, el primer y segundo mejor tiempo (y su piloto) y el primer y segundo peor tiempo (y su piloto), en un único recorrido — es el enfoque típico de "mantener el top-2" visto también en la Práctica 2. El bucle usa 4 iteraciones en lugar de 100 (ajuste manual para probar), pero el algoritmo en sí es correcto y completo para los cuatro datos pedidos.

### Ejercicio 8

> Un local de ropa desea analizar las ventas del último mes. Se lee por cada día del mes los montos de las ventas, hasta un monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día y el monto total acumulado del mes.
> a. Modificar para que además informe el día en el que se realizó la mayor cantidad de ventas.

**Soluciones:** [`8.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/8.Parte2.pas) (base) y [`8a.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/8a.Parte2.pas) (intento de la parte a)

- `8.Parte2.pas` — **estado: parcial**. Resuelve el conteo de ventas por día y el acumulado del mes (`cant_dia`, `cant_mes`) correctamente en su estructura (`for` externo por día, `while` interno hasta monto 0), aunque recorre 4 días en vez de 31 (ajuste manual). No incluye la parte (a).
- `8a.Parte2.pas` — **estado: posiblemente-incorrecto**. Agrega una variable `mayor_ventas` para la parte (a), pero termina guardando la **cantidad** de ventas del día procesado, no el **número de día** en que ocurrió esa cantidad (confunde "cuántas ventas" con "qué día"): `dia:=cant_dia` dentro del `while` interno y luego `if(dia>mayor_ventas) then mayor_ventas:=dia`, sin relacionar nunca ese valor con el índice `i` del `for` externo.

## Ejercicios adicionales

### 1. Tres números en orden descendente

> Realizar un programa que lea 3 números enteros y los imprima en orden descendente. Por ejemplo: si se ingresan los valores 4, -10 y 12; deberá imprimir: 12 4 -10.

**Solución:** [`Add1.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/Add1.pas) — **estado: resuelto**

Tres bloques `if` (uno por cada número que podría ser el mayor), cada uno con un `if`/`else` interno para ordenar los dos restantes. Cubre correctamente las seis permutaciones posibles.

### 2. Tres caracteres, ¿todos vocales?

> Realizar un programa que lea tres caracteres e informe si los tres eran letras vocales o si al menos uno de ellos no lo era.

**Solución:** [`Add2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/Add2.pas) — **estado: posiblemente-incorrecto**

El contador de vocales se declara con el tipo `contar = 0..1` (subrango de 0 a 1), pero necesita llegar hasta 3 (una por cada vocal encontrada). Free Pascal lo detecta en la propia compilación: `Warning: Comparison might be always false due to range of constant and expression` y `Warning: unreachable code`, exactamente sobre el `if(contador=3)` que debería identificar "las tres son vocales". El tipo del contador es demasiado angosto para lo que el programa necesita contar.

### 3. Sumar o restar una secuencia

> Realizar un programa que lea un carácter ('+' o '-'; otro carácter es error). Luego leer una secuencia de enteros que finaliza con 0 (no se procesa). Aplicar la operación leída a la secuencia e imprimir el resultado final.

**Solución:** [`Add3.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/Add3.pas) — **estado: posiblemente-incorrecto**

El procedimiento `Numeros` lee la secuencia correctamente hasta el 0, pero en cada vuelta del bucle sólo vuelve a **imprimir el símbolo** (`write(signo2)`, es decir '+' o '-' repetido), sin sumar ni restar ningún valor a un acumulador. El resultado numérico final que pide el enunciado nunca se calcula ni se imprime.

### 4. Máximo, mínimo y suma hasta el 100

> Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se ingrese el número 100, el cual debe procesarse. Informar: el número máximo leído, el mínimo leído, la suma total.

**Solución:** [`Add4.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/Add4.pas) — **estado: parcial**

Los tres procedimientos auxiliares (`max`, `min`, `suma`) están bien planteados y son correctos en su lógica. Sin embargo, el programa principal usa `for i:=1 to 10` (10 lecturas fijas) en lugar de terminar al leer el número 100: no implementa la condición de corte pedida por el enunciado.

## Archivos que no corresponden a ningún ejercicio de esta guía

Dos archivos de esta carpeta no están vinculados a ningún enunciado:

- [`Examen.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/Examen.pas): programa de tres líneas sin declaración de variables (`numero:=9; write('el numero es', numero);`); no compila (`Error: Identifier not found "numero"`, dos veces). No tiene enunciado asociado ni comentario que lo vincule a un ejercicio.
- [`Probando.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/Probando.pas): lleva pegado, por arrastre, el comentario del enunciado del ejercicio 5 de la Parte II (200 productos de supermercado), pero el código es un fragmento de prueba de tres líneas sobre paridad (`if (numero mod 2 <> 0) then writeln('Hola mundo') else write('algo')`) sin relación con ese enunciado. Compila, pero no resuelve nada del enunciado que cita.

Ambos parecen archivos de prueba/scratch del propio estudiante (nombres "Examen" y "Probando"), preservados tal cual junto con el resto de la carpeta, sin forzarlos dentro de la numeración de la guía.
