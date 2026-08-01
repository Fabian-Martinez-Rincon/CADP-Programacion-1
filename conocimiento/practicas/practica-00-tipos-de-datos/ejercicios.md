---
id: "CADP-P00-EJERCICIOS"
titulo: "Ejercicios — Práctica 0: Introducción a la programación"
slug: "practica-00-tipos-de-datos-ejercicios"
tipo: "ejercicio"
unidad: 0
tema: "tipos-de-datos"
subtemas:
  - "entrada-salida"
  - "expresiones-aritmeticas"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-00-tipos-de-datos/Redictado CADP 2020 - Practica 0 - Introducción.pdf"
    paginas: "1"
relacionados:
  - "teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/Practica1.pas"
  - "../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/2.pas"
  - "../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/3.pas"
  - "../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/4.pas"
  - "../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/5.pas"
  - "../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/6.pas"
---

# Ejercicios — Práctica 0: Introducción a la programación

Los 6 enunciados se transcriben literalmente del PDF fuente (página 1). Los nombres de archivo de las soluciones (`2.pas`, `3.pas`, ...) sugieren una correspondencia directa con el número de ejercicio, pero **no siempre es así** — se verificó cada archivo contra el enunciado antes de vincularlo; las discrepancias encontradas se explican en cada sección.

## Ejercicio 1

**Enunciado:**

> Implemente un programa que lea por teclado dos números enteros e imprima en pantalla los valores leídos en orden inverso. Por ejemplo, si se ingresan los números 4 y 8, debe mostrar el mensaje:
> `Se ingresaron los valores 8 y 4`

**Solución:** [`Practica1.pas`](../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/Practica1.pas) — **estado: resuelto**

El archivo que resuelve el ejercicio 1 no se llama `1.pas` sino `Practica1.pas`; se vinculó por su contenido (el comentario inicial del código copia este mismo enunciado), no por el nombre.

Enfoque: lee `numero_1` y `numero_2` y los imprime invertidos usando dos `writeln` separados (`writeln('Numero 1: ', numero_2)` y `writeln('Numero 2: ', numero_1)`), sin variable auxiliar ni intercambio real de valores — simplemente asocia cada etiqueta con la variable contraria. Es funcionalmente correcto (muestra los valores en el orden pedido), pero el formato del mensaje no coincide con el ejemplo del enunciado (`Numero 1: 8` / `Numero 2: 4` en vez de `Se ingresaron los valores 8 y 4`).

## Ejercicio 2

**Enunciado:**

> Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos números:
> a. Utilizando una variable adicional
> b. Sin utilizar una variable adicional

**Estado: sin-solucion.** No hay, entre los archivos de esta carpeta, una solución que corresponda a este enunciado.

> [!WARNING]
> El archivo [`2.pas`](../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/2.pas) — el nombre "natural" para este ejercicio — **no lo resuelve**. Su código es: `program ocho;` con dos variables `real` y las líneas `Writeln(num1 div num2)` / `Writeln(num1 mod num2)`, comentadas por el propio autor como `// No se puede :D`. No suma nada ni usa variable adicional; parece un experimento aparte sobre `div`/`mod` con reales (ver [`teoria.md`](teoria.md), donde se usa justamente para mostrar que esos operadores no existen entre `real`). Se dejó vinculado desde la teoría por ese valor, pero **no se fuerza como solución de este ejercicio**. Se intentó compilar con Free Pascal 3.2.2: falla con `Error: Operator is not overloaded: "Real" div "Real"` / `"Real" mod "Real"`, confirmando que, tal como está, tampoco es un programa ejecutable.

## Ejercicio 3

**Enunciado:**

> Implemente un programa que lea dos números reales e imprima el resultado de la división de los mismos con una precisión de dos decimales. Por ejemplo, si se ingresan los valores 4,5 y 7,2, debe imprimir:
> `El resultado de dividir 4,5 por 7,2 es 0,62`
>
> Recuerde que para imprimir en pantalla números reales puede utilizar la notación: `writeln(X:Y:Z)`, donde X es el número a imprimir, Y es el ancho (en cantidad de caracteres) que debe ocupar la impresión, y Z es la cantidad de decimales. Por ejemplo, sea el número pi=3.141592654:
> `3.14 => writeln(pi,1,2);`
> ` 3.14 => writeln(pi,8,2);` (observe que hay 4 espacios delante del número 3, necesarios para completar los 8 caracteres de ancho)
> `3,1415 => writeln(pi,1,4);`

**Solución:** [`3.pas`](../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/3.pas) — **estado: resuelto**

Enfoque: lee `numero_1` y `numero_2` (`real`), calcula `resultado := numero_1 / numero_2` e imprime con `resultado:3:2`.

**Verificado por ejecución real** (Free Pascal 3.2.2, entrada `4.5` / `7.2`): la salida es `El resultado de la division es: 0.63`. El enunciado dice que el resultado esperado es `0,62`; 4,5 / 7,2 = 0,625 exacto, y el redondeo a dos decimales que aplica Pascal da 0.63, no 0.62. Se registra la discrepancia entre el ejemplo del enunciado y el resultado real verificado (ver detalle en `teoria.md`); el código en sí es correcto.

## Ejercicio 4

**Enunciado:**

> Implemente un programa que lea el diámetro D de un círculo e imprima:
> a. El radio (R) del círculo (la mitad del diámetro)
> b. El área del círculo. Para calcular el área de un círculo debe utilizar la fórmula PI x R²
> c. El perímetro del círculo. Para calcular el perímetro del círculo debe utilizar la fórmula D\*PI (o también PI\*R\*2)

**Solución:** [`4.pas`](../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/4.pas) — **estado: posiblemente-incorrecto**

Enfoque: lee `diametro`, calcula `radio := diametro / 2` (correcto) y `perimetro := diametro * pi` (correcto, coincide con `D*PI`).

El área tiene un error: el código calcula `area := pi * (diametro * diametro)`, es decir `PI × D²`, no `PI × R²` como pide el enunciado. Como `D = 2R`, `PI × D² = 4 × (PI × R²)`: el área impresa queda **4 veces más grande** que la correcta. No se modificó el archivo original (fuera del alcance de esta conversión); se deja documentado el error para quien lo use como referencia.

## Ejercicio 5

**Enunciado:**

> Un kiosquero debe vender una cantidad X de caramelos entre Y clientes, dividiendo cantidades iguales entre todos los clientes. Los que le sobren se los quedará para él.
> a. Realice un programa que lea la cantidad de caramelos que posee el kiosquero (X), la cantidad de clientes (Y), e imprima en pantalla un mensaje informando la cantidad de caramelos que le corresponderá a cada cliente, y la cantidad de caramelos que se quedará para sí mismo.
> b. Si cada caramelo tiene un valor de $1.60, imprima en pantalla el dinero que deberá cobrar el kiosquero.

**Solución:** [`5.pas`](../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/5.pas) — **estado: parcial**

Enfoque: lee `caramelos` y `clientes` (`integer`), calcula `promedio := caramelos div clientes` y `sobrantes := caramelos mod clientes`. Resuelve correctamente la parte (a) con `div`/`mod`, el uso de tipo entero adecuado para esta parte. La parte (b) — informar el dinero a cobrar a $1.60 por caramelo — **no está implementada**: no hay ninguna variable ni cálculo relacionado con el precio en todo el archivo.

## Ejercicio 6

**Enunciado:**

> Realice un programa que informe el valor total en pesos de una transacción en dólares. Para ello, el programa debe leer el monto total en dólares de la transacción, el valor del dólar al día de la fecha y el porcentaje (en pesos) de la comisión que cobra el banco por la transacción. Por ejemplo, si la transacción se realiza por 10 dólares, el dólar tiene un valor 20,54 pesos y el banco cobra un 4% de comisión, entonces el programa deberá informar:
> `La transacción será de 213,61 pesos argentinos`
> (resultado de multiplicar 10\*20,54 y adicionarle el 4%)

**Solución:** [`6.pas`](../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/6.pas) — **estado: posiblemente-incorrecto**

Enfoque: lee sólo `dolares` (`real`) y calcula `pesos := (dolares*75.32) + (((dolares*75.32)/100)*4)`.

El enunciado pide leer **tres** valores por teclado (monto en dólares, valor del dólar del día, porcentaje de comisión); el código sólo lee el monto en dólares y deja el valor del dólar (`75.32`) y la comisión (`4`) fijos en el código en lugar de leerlos. La fórmula en sí (monto × cotización, más el porcentaje de comisión sobre ese producto) replica correctamente la lógica del ejemplo, pero al no leer los otros dos datos el programa no cumple el enunciado tal como está escrito. El mensaje de salida tampoco coincide con el formato del ejemplo (imprime dos líneas distintas, ninguna igual a `La transacción será de ... pesos argentinos`).

## Resumen de estados

| Ejercicio | Archivo | Estado |
|---|---|---|
| 1 | `Practica1.pas` | resuelto (mensaje no coincide textualmente) |
| 2 | — | sin-solucion (`2.pas` es un archivo no correspondiente) |
| 3 | `3.pas` | resuelto (verificado por ejecución; el enunciado tiene un redondeo distinto al real) |
| 4 | `4.pas` | posiblemente-incorrecto (área 4 veces más grande de lo debido) |
| 5 | `5.pas` | parcial (falta la parte b) |
| 6 | `6.pas` | posiblemente-incorrecto (no lee 2 de los 3 datos pedidos) |
