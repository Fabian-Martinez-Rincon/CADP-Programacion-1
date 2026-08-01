---
id: "AYP1-P4-EJERCICIOS"
titulo: "Práctica 4 - Modularización con parámetros I: enunciados y soluciones"
slug: "practica-4-ejercicios"
tipo: "ejercicio"
unidad: 4
tema: "modularizacion"
subtemas:
  - "procedimientos"
  - "parametros-por-valor"
  - "parametros-por-referencia"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-4/Practica 4 - Algoritmos y Programación I 2026.docx.pdf CIRO.pdf"
    paginas: "1-2"
prerrequisitos:
  - "estructuras repetitivas while y for"
relacionados:
  - "./README.md"
  - "./teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio1_a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio_2.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio_3.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio_4.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio_5.pas"
---

# Práctica 4 — Ejercicios y soluciones

Enunciados transcriptos de `Practica 4 - Algoritmos y Programación I 2026.docx.pdf CIRO.pdf` (páginas 1-2). Los 5 archivos de esta carpeta compilan sin errores con Free Pascal 3.2.2 (verificado durante la conversión).

## Ejercicio 1 — Suma de dos enteros mediante un módulo `AYP1-P4-EJ01`

> a. Realice un módulo que reciba dos números enteros y retorne la suma de los mismos.
> b. Implemente un programa que lea dos números enteros e informe la suma, invocando al módulo del inciso a.

- **Código:** [`ejercicio1_a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio1_a.pas)
- **Estado:** resuelto
- **Enfoque:** resuelve el inciso a) con una **función** `sumar(a, b: integer): integer` (no un procedimiento con parámetro `var`) que retorna `a + b`; el inciso b) lee `num1`/`num2` e invoca `resultado := sumar(num1, num2)`.

## Ejercicio 2 — Contar impares hasta un negativo `AYP1-P4-EJ02`

> a. Realice un módulo que lea de teclado números enteros hasta que llegue un valor negativo y retorne la cantidad de números impares.
> b. Implemente un programa que invoque al módulo del inciso a, e informe el valor retornado.

- **Código:** [`ejercicio_2.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio_2.pas)
- **Estado:** resuelto
- **Enfoque:** el archivo declara **dos** implementaciones del módulo del inciso a) —una función `contarImpares_1: integer` y un procedimiento `contarImpares_2(var cantidad: integer)`— pero el programa principal solo invoca la segunda (`contarImpares_2(cantidad)`, con `cantidad` inicializada en 0 y pasada por referencia para acumular el resultado). `contarImpares_1` queda declarada pero sin usar; ambas comparten la misma lógica de lectura (`while num >= 0 do ... readln(num)`).

## Ejercicio 3 — Promedio de alturas `AYP1-P4-EJ03`

> a. Escriba un procedimiento que lea la altura de una cantidad de personas y retorne el promedio de éstas. La cantidad de personas se recibe como parámetro.
> b. Escriba un programa que procese la altura de 30 personas utilizando el módulo desarrollado en a) e informe el resultado.

- **Código:** [`ejercicio_3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio_3.pas)
- **Estado:** resuelto
- **Enfoque:** `procedure calcularPromedio(cant: integer; var promedio: real)` recibe la cantidad por valor y devuelve el promedio por referencia, leyendo `cant` alturas con un `for` interno. **El programa principal invoca `calcularPromedio(3, prom)` en lugar de `calcularPromedio(30, prom)`**: el módulo es correcto y genérico (funciona para cualquier cantidad recibida por parámetro), pero la invocación usa 3 personas en vez de las 30 pedidas por el enunciado — probablemente para simplificar la prueba manual por teclado.

## Ejercicio 4 — Preguntas sobre paso de parámetros `AYP1-P4-EJ04`

> Responda las preguntas en relación al siguiente programa:
> ```pascal
> program Ejercicio3;
>   procedure suma(num1: integer; var num2:integer);
>   begin
>     num2 := num1 + num2;
>     num1 := 0;
>   end;
> var
>   i, x: integer;
> begin
>   read(x); { leo la variable x }
>   for i:= 1 to 5 do
>     suma(i,x);
>   write(x); { imprimo las variable x }
> end.
> ```
> a. ¿Qué imprime si se lee el valor 10 en la variable `x`?
> b. ¿Qué imprime si se lee el valor 10 en la variable `x` y se cambia el encabezado del `procedure` por: `procedure suma(num1: integer; num2:integer);`?
> c. ¿Qué sucede si se cambia el encabezado del `procedure` por: `procedure suma(var num1: integer; var num2:integer);`?

- **Código:** [`ejercicio_4.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio_4.pas)
- **Estado:** resuelto (parcialmente, como exploración — ver detalle)
- **Enfoque:** este es un ejercicio de análisis ("¿qué imprime?"), no de escribir un programa desde cero, y el archivo lo refleja como una **exploración anotada** más que como una respuesta estructurada a, b, c:
  - El encabezado de `suma` que usa (`procedure suma(num1: integer; num2:integer);`, ambos por valor) corresponde a la variante del inciso **b)**, no a la original del enunciado (que tiene `num2` por referencia).
  - Dentro de `suma` agrega instrucciones que no están en el programa dado (`WriteLn` de diagnóstico, y reasigna `num1` dos veces) para observar el comportamiento con parámetros por valor.
  - En el programa principal agrega una línea `i:= 0;` después del `for`, que se ejecuta una vez terminado el bucle (no dentro de él, porque el cuerpo del `for` es una única sentencia `suma(i,x);` delimitada por el `;`).
  - Al final del archivo, **después** del `end.` que cierra el programa, deja dos líneas de texto libre (no son comentarios Pascal válidos ni fueron compiladas — Free Pascal se detiene en el `end.` de la línea 18) a modo de nota: *"Illegal assignment to for-loop variable 'i' / Estás modificando la variable del for (i) dentro del procedimiento."* Esa nota corresponde conceptualmente a la respuesta del inciso **c)**: si ambos parámetros pasaran a ser `var`, la invocación `suma(i, x)` compartiría memoria entre `num1` y la propia variable de control `i` del `for`, y modificarla desde dentro del procedimiento mientras el `for` todavía está iterando es una situación inválida en Pascal.
  - Verificado con Free Pascal 3.2.2: el archivo tal como está escrito (variante b, con `i:=0` fuera del `for`) **compila sin errores**. No se ejecutó el programa para determinar el valor impreso exacto (no hay forma de verificarlo sin inventar un resultado), por lo que las respuestas a los incisos a) y b) quedan como ejercicio de rastreo de código para quien use este material.

## Ejercicio 5 — Ingresos de personas `AYP1-P4-EJ05`

> Realice un programa que procese información de personas. De cada persona se lee el dni, la edad y estado civil ('s' soltero/a, 'c' casado/a, 'd' divorciado/a, 'v' viudo/a). Se leen los datos de las personas hasta que llega el dni igual a -1. Además, de cada persona se leen los ingresos de los últimos 12 recibos de sueldo. Se pide calcular e informar:
> a. El ingreso promedio de las personas.
> b. La cantidad de personas mayores de 30 años o con estado civil casado.
> c. El porcentaje de personas con ingreso promedio menor a 500.000.
> Modularizar la solución.
>
> Nota: **Retornar**: el valor tiene que ser devuelto a quien invocó el módulo. No se debe informar en el módulo. **Recibir como parámetro**: el valor se recibe en el módulo como parámetro por valor o por referencia. No se debe leer en el módulo, ni declararlo como variable local.

- **Código:** [`ejercicio_5.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-4/ejercicio_5.pas)
- **Estado:** resuelto
- **Enfoque:** modulariza en dos procedimientos: `leerPersona(var dni, var edad, var estadoCivil)` (lee los tres datos de una persona, cortando la lectura de edad/estado civil si `dni = -1`) y `calcularIngresoPromedio(var promedio)` (lee los 12 recibos con un `for` interno y calcula el promedio antes de retornar). El programa principal usa un `while dni <> -1` con lectura inicial + lectura al final del cuerpo (mismo patrón que la Práctica 3), acumulando `totalPersonas`, `sumaIngresosPromedio`, `cantMayores30OCasados` (con `(edad > 30) or (estadoCivil = 'c')`) y `cantIngresoMenor500000`, y protege la división final con `if totalPersonas > 0`.
