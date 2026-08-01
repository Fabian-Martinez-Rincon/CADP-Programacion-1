---
id: "AYP1-P1-EJERCICIOS"
titulo: "Práctica 1 - Introducción a la programación: enunciados y soluciones"
slug: "practica-1-ejercicios"
tipo: "ejercicio"
unidad: 1
tema: "introduccion-a-la-programacion"
subtemas:
  - "variables"
  - "constantes"
  - "integer"
  - "real"
  - "div-mod"
  - "read-write"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-1/Practica 1 - AyPI - 2026.docx.pdf"
    paginas: "1"
prerrequisitos:
  - "estructura de un programa Pascal"
relacionados:
  - "./README.md"
  - "./teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_1a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_1b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_1c.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_1d.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_2a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_2b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_3.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_4.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/cero.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/yamila.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/yamila2.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/yamita3.pas"
---

# Práctica 1 — Ejercicios y soluciones

Enunciados transcriptos literalmente de la fuente (`Practica 1 - AyPI - 2026.docx.pdf`, página 1). Cada ejercicio enlaza a su solución en `codigo/soluciones/algoritmos-y-programacion-1/practica-1/`. La explicación de "enfoque" describe lo que efectivamente hace el código resuelto, no una solución ideal alternativa.

## Ejercicio 1a — Promedio de dos números `AYP1-P1-EJ01A`

> Calcular e imprimir el promedio de 2 números enteros que se leen del teclado.

- **Código:** [`ejercicio_1a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_1a.pas) (programa `PromedioDosNumeros`)
- **Estado:** resuelto
- **Enfoque:** declara `num1, num2: integer` y `promedio: real`; lee ambos números con `readln`, calcula `promedio := (num1 + num2) / 2` (división real, no `div`) y lo imprime con dos decimales usando el formateador `:0:2`.

## Ejercicio 1b — Área y perímetro de un rectángulo `AYP1-P1-EJ01B`

> Leer base y altura de un rectángulo e imprimir el área y perímetro de este (área = base * altura, perímetro = 2*base + 2*altura).

- **Código:** [`ejercicio_1b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_1b.pas) (programa `Rectangulo`)
- **Estado:** resuelto
- **Enfoque:** declara `base, altura, area, perimetro: Real`, lee base y altura, calcula `area := base * altura` y `perimetro := 2 * base + 2 * altura` tal como indica el enunciado, e imprime ambos resultados.

## Ejercicio 1c — Constante y multiplicación `AYP1-P1-EJ01C`

> Declarar una constante con un valor entre 10 y 20, y leer un número de teclado. Calcular e informar el resultado de la multiplicación entre la constante y el número.

- **Código:** [`ejercicio_1c.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_1c.pas) (programa `Ejercicio1C`)
- **Estado:** resuelto
- **Enfoque:** declara `const VALOR = 15` (dentro del rango 10-20 pedido), lee `numero: Integer` y calcula `resultado := VALOR * numero`.

## Ejercicio 1d — Constante y división `AYP1-P1-EJ01D`

> Declarar una constante con un valor entre 50 y 100, y leer un número de teclado. Calcular e informar el resultado de la división entre la constante y el número.

- **Código:** [`ejercicio_1d.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_1d.pas) (programa `Ejercicio1d`)
- **Estado:** resuelto
- **Enfoque:** declara `const VALOR = 75` (dentro del rango 50-100 pedido). A diferencia del resto de los ejercicios de esta práctica, agrega una validación no pedida explícitamente por el enunciado: solo calcula `resultado := VALOR / numero` (división real) si `numero <> 0`; en caso contrario informa un mensaje de error en vez de dividir por cero.

## Ejercicio 2a — División entera y resto `AYP1-P1-EJ02A`

> Leer dos números enteros de teclado y calcular e informar el resultado de la división entera y el resto.

- **Código:** [`ejercicio_2a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_2a.pas) (programa `DivisionEntera`)
- **Estado:** resuelto
- **Enfoque:** lee `num1, num2: Integer` y calcula `cociente := num1 div num2` y `resto := num1 mod num2`, usando directamente los operadores enteros presentados en la teoría.

## Ejercicio 2b — Minutos a horas `AYP1-P1-EJ02B`

> Leer un número entero que representa una cantidad de minutos. Calcular e informar la cantidad de horas que representa y los minutos restantes. Ej.: 185 minutos son 3 horas y 5 minutos.

- **Código:** [`ejercicio_2b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_2b.pas) (programa `MinutosAHoras`)
- **Estado:** resuelto
- **Enfoque:** `horas := minutos div 60` y `minutosRestantes := minutos mod 60`, mismo patrón `div`/`mod` que el ejercicio 2a aplicado a la conversión de unidades.

## Ejercicio 3 — Círculo `AYP1-P1-EJ03`

> Implemente un programa que lea el diámetro D de un círculo e imprima: a. El radio (R) del círculo (la mitad del diámetro). b. El área del círculo (PI * R², PI = 3,14). c. El perímetro del círculo (D*PI, o también PI*R*2).

- **Código:** [`ejercicio_3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_3.pas) (programa `Circulo`)
- **Estado:** resuelto
- **Enfoque:** resuelve los tres incisos (a, b y c) en un único programa. Declara `const PI = 3.14`, lee el diámetro, calcula `radio := diametro / 2`, `area := PI * radio * radio` y `perimetro := PI * diametro` (usa la variante `D*PI` sugerida por el enunciado en vez de `PI*R*2`), e imprime los tres valores con dos decimales.

## Ejercicio 4 — Transacción en dólares `AYP1-P1-EJ04`

> Realice un programa que informe el valor total en pesos de una transacción en dólares. Para ello, el programa debe leer: el monto total en dólares de la transacción, el valor del dólar al día de la fecha y el porcentaje (en pesos) de la comisión que cobra el banco por la transacción. Por ejemplo, si la transacción se realiza por 10 dólares, el dólar tiene un valor 1425 pesos y el banco cobra un 4% de comisión, entonces el programa deberá informar: La transacción será de 14820 pesos argentinos (resultado de multiplicar 10*1425 y adicionarle el 4%).

- **Código:** [`ejercicio_4.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/ejercicio_4.pas) (programa `TransaccionDolares`)
- **Estado:** resuelto
- **Enfoque:** lee `montoDolares`, `valorDolar` y `porcentajeComision` (los tres como `Real`); calcula `totalPesos := montoDolares * valorDolar`, luego `comision := totalPesos * (porcentajeComision / 100)` y finalmente suma la comisión al total. Con los valores del ejemplo del enunciado (10, 1425, 4) el cálculo reproduce el resultado esperado (14820).

## Intentos adicionales / soluciones alternativas

Estos cuatro archivos conviven en la carpeta `practica-1/` junto a los `ejercicio_*.pas` numerados pero no forman parte de la secuencia oficial del enunciado. Parecen intentos paralelos de un mismo estudiante (los tres últimos llevan el nombre "yamila"/variantes) y se documentan aquí por trazabilidad, sin forzarlos dentro de la numeración anterior.

- **[`cero.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/cero.pas)** (programa `calculoPromedio`): variante del ejercicio 1a. Lee dos enteros y calcula el promedio con `div` (división entera), a diferencia de `ejercicio_1a.pas` que usa `/` (división real) — con `div`, un promedio con resto se trunca en vez de mostrar decimales.
- **[`yamila.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/yamila.pas)** (programa `yami`): ejercicio no numerado en el enunciado. Lee 5 números enteros con un `for` y cuenta cuántos son iguales a 10, usando una constante `MAX = 5`.
- **[`yamila2.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/yamila2.pas)** (programa `sacarAbsoluto`): intento de calcular el valor absoluto de un número real. El código tiene un problema: pide por pantalla "Ingrese un numero real" pero nunca llama a `readln`; en cambio asigna `numero := -20` de forma fija, por lo que el resultado impreso (`20.00`) no depende de ninguna entrada del usuario pese al mensaje mostrado.
- **[`yamita3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-1/yamita3.pas)** (programa `mayorDeLosDos`): lee dos enteros e informa cuál es mayor (o si son iguales). Es conceptualmente el mismo problema que el ejercicio 1a de la Práctica 2 ("Leer 2 números por teclado e imprimir el mayor"), resuelto aquí de forma anticipada con una estructura `if/else if/else`.
