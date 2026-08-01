---
id: "AYP1-P3-EJERCICIOS"
titulo: "Práctica 3 - Introducción a la programación III: enunciados y soluciones"
slug: "practica-3-ejercicios"
tipo: "ejercicio"
unidad: 3
tema: "estructuras-repetitivas"
subtemas:
  - "while"
  - "for"
  - "porcentajes"
  - "acumuladores"
  - "contadores"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-3/Practica 3 -AyP I 2026.pdf"
    paginas: "1"
prerrequisitos:
  - "estructura if"
relacionados:
  - "./README.md"
  - "./teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio1.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio1b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio2.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio2b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio3.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio4.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio5.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio6.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio5practica3.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/yamila1.pas"
---

# Práctica 3 — Ejercicios y soluciones

Enunciados transcriptos de `Practica 3 -AyP I 2026.pdf` (página 1). Todos los archivos de esta carpeta compilan sin errores con Free Pascal 3.2.2 (verificado durante la conversión), aunque uno de ellos —ver Ejercicio 2— tiene un problema de lógica en tiempo de ejecución que se documenta más abajo.

## Ejercicio 1 — Suma de 15 números `AYP1-P3-EJ01`

> Realizar un programa que lea 15 números enteros e informe la suma total de los números leídos.
> ○ Modifique el ejercicio para que además informe la cantidad de números mayores a 10.

- **Código base:** [`ejercicio1.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio1.pas)
- **Código modificado:** [`ejercicio1b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio1b.pas)
- **Estado:** resuelto
- **Enfoque:** ambos usan `for i := 1 to 15 do` (cantidad fija y conocida → `for`, no `while`) acumulando `suma := suma + numero` en cada vuelta. La versión modificada agrega un contador `cantMayores10` que se incrementa dentro del mismo `for` cuando `numero > 10`, sin recorrer la entrada dos veces.

## Ejercicio 2 — Contar reales hasta el 0 `AYP1-P3-EJ02`

> Realizar un programa que lea números reales hasta que se ingrese uno cuyo valor sea 0. Informar la cantidad de números leídos.
> ○ Modifique el ejercicio para que se lean a lo sumo 10 números reales. La lectura deberá finalizar al ingresar un valor que sea 0, o al leer el décimo número, en cuyo caso deberá informarse "No se ha ingresado el 0".

- **Código base:** [`ejercicio2.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio2.pas)
- **Código modificado:** [`ejercicio2b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio2b.pas)
- **Estado:** resuelto (código base con una falla de lógica — ver advertencia)

> [!WARNING]
> **`ejercicio2.pas` compila correctamente pero, tal como está escrito, entra en bucle infinito si el primer valor ingresado no es 0.** El cuerpo del `while (numero <> 0) do` solo incrementa `cant` y vuelve a mostrar el cartel de "Ingrese numeros reales…"; le falta el `readln(numero)` que debería volver a leer el dato dentro del ciclo (el patrón correcto es el mismo que usa `ejercicio2b.pas` y que se explica en la [teoría](./teoria.md#2-iteración-precondicional-while): leer antes del `while` y de nuevo al final del cuerpo). Esto se determinó leyendo el código, no ejecutándolo (ejecutarlo se evitó deliberadamente para no bloquear un proceso en un bucle sin fin); no se modificó el archivo original, conforme a las reglas de esta conversión.

El código modificado (`ejercicio2b.pas`), en cambio, sí vuelve a leer dentro del `while`, controla con `(cant < 10) and (numero <> 0)` y al finalizar distingue con un `if` si se cortó por el 0 o por alcanzar el máximo de 10 lecturas.

## Ejercicio 3 — Ventas semanales `AYP1-P3-EJ03`

> Un negocio registra las ventas de los 7 días de la semana. Realizar un programa que lea el monto total vendido cada día e informe: el monto total vendido en la semana y el promedio de ventas diarias.

- **Código:** [`ejercicio3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio3.pas)
- **Estado:** resuelto
- **Enfoque:** `for i := 1 to 7 do` acumula `total`; el promedio se calcula una sola vez al final como `total / 7` (constante conocida, no necesita `if` de división por cero).

## Ejercicio 4 — Mayores y menores de edad `AYP1-P3-EJ04`

> Realizar un programa que lea 15 edades de personas. Informar cuántas corresponden a personas mayores de edad (18 o más) y cuántas a menores de edad.

- **Código:** [`ejercicio4.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio4.pas)
- **Estado:** resuelto
- **Enfoque:** `for i := 1 to 15 do` con un `if/else` que incrementa `mayores` o `menores` según `edad >= 18`.

## Ejercicio 5 — Porcentaje de pares e impares `AYP1-P3-EJ05`

> Realizar un programa que lea 50 números enteros. Informar el porcentaje de números pares y el porcentaje de números impares.

- **Código:** [`ejercicio5.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio5.pas)
- **Estado:** resuelto
- **Enfoque:** el programa está parametrizado con una variable `cantidadNumeros`, pero **su valor está fijado en 5, no en 50** — el propio código lo deja explícito con el comentario `// Cambiar a 50 para el caso real`. La lógica (contar pares/impares con `mod 2` y calcular `(cant * 100) / cantidadNumeros`) es correcta y generalizable; solo el valor de la constante de prueba difiere del enunciado.

## Ejercicio 6 — Porcentaje de positivos y negativos hasta el 0 `AYP1-P3-EJ06`

> Realizar un programa que lea números enteros. La lectura finaliza cuando se ingresa el número 0. Informar el porcentaje de números positivos y el porcentaje de números negativos.

- **Código:** [`ejercicio6.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio6.pas)
- **Estado:** resuelto
- **Enfoque:** `while (numero <> 0)` (aquí sí, con el `readln` dentro del ciclo tanto al inicio como al final del cuerpo) acumulando `cantPositivos`/`cantNegativos`; al final protege la división con `if (total > 0)` antes de calcular los porcentajes.

## Intentos adicionales / soluciones alternativas

- **[`ejercicio5practica3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/ejercicio5practica3.pas)** (programa `porcentajeParesImpares`): variante independiente del ejercicio 5, con la misma idea (contar pares e impares con `mod 2`) pero usando `cantidadNumeros := 10` en lugar de 50, nombres de variable distintos, y la lógica de la comparación invertida (`if not (numero mod 2 = 0) then ... impar ... else ... par`).
- **[`yamila1.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-3/yamila1.pas)** (programa `sumar15`): variante independiente del ejercicio 1, con `N = 5` en lugar de 15, que combina en un solo `for` tanto la suma total como el conteo de números mayores a 10 (equivalente a resolver 1 y su modificación en un único programa).
