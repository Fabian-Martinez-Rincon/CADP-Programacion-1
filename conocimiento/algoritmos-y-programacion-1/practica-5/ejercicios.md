---
id: "AYP1-P5-EJERCICIOS"
titulo: "Práctica 5 - Modularización con parámetros II: enunciados y soluciones"
slug: "practica-5-ejercicios"
tipo: "ejercicio"
unidad: 5
tema: "maximos-y-minimos"
subtemas:
  - "maximo"
  - "minimo"
  - "modularizacion"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-5/practica 5.pdf"
    paginas: "1"
prerrequisitos:
  - "procedimientos y parametros"
relacionados:
  - "./README.md"
  - "./teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio1a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio1b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio2a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio2b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio3.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio4a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio4b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio5.pas"
---

# Práctica 5 — Ejercicios y soluciones

Enunciados transcriptos de `practica 5.pdf` (página 1). Los 8 archivos de esta carpeta compilan sin errores con Free Pascal 3.2.2 (verificado durante la conversión).

## Ejercicio 1 — Mayor temperatura de la semana `AYP1-P5-EJ01`

> a. Realice un módulo que lea la temperatura media de cada uno de los últimos 7 días, y retorne cuál fue la mayor temperatura leída.
> b. Modifique el ejercicio anterior para que, además de retornar la mayor temperatura leída, se retorne el día en que se registró.
> c. Implemente el programa principal que invoque el módulo e informe la mayor temperatura leída y el día en que se registró.

- **Código base (a):** [`ejercicio1a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio1a.pas) (programa `MayorTemperatura`)
- **Código modificado (b + c):** [`ejercicio1b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio1b.pas) (programa `MayorTemperaturaConDia`)
- **Estado:** resuelto
- **Enfoque:** ambos siguen el patrón de la teoría: `procedure maximo(tempActual: real; var max: real)` en la versión a), y `procedure maximo(tempActual: real; diaActual: integer; var max: real; var diaMax: integer)` en la versión b), invocada dentro de un `for i := 1 to 7 do`. La versión b) ya resuelve también el inciso c) (es el programa principal completo que informa temperatura y día).

## Ejercicio 2 — Dos mínimos `AYP1-P5-EJ02`

> a. Realizar un módulo que lea 1000 números enteros desde teclado. Retornar los dos números mínimos leídos.
> b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el número 0.

- **Código base (a):** [`ejercicio2a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio2a.pas) (programa `DosMinimos`)
- **Código modificado (b):** [`ejercicio2b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio2b.pas) (programa `DosMinimosCorte`)
- **Estado:** resuelto
- **Enfoque:** `procedure minimos(num: integer; var min1, min2: integer)` desplaza `min1` a `min2` cuando encuentra un valor menor (mismo patrón que "Dos máximos simultáneos" de la teoría, pero para mínimos: `if num < min1 then (min2:=min1; min1:=num) else if num < min2 then min2:=num`). **La versión a) usa `for i := 1 to 3 do` en lugar de `for i := 1 to 1000 do`** — la lógica del módulo es correcta y no depende de la cantidad, pero el bucle de prueba lee solo 3 valores en vez de los 1000 pedidos. La versión b) reemplaza el `for` por el patrón `while (num <> 0)` con lectura inicial y al final del cuerpo, y agrega mensajes de diagnóstico (`writeln`) dentro del procedimiento para mostrar cuándo se actualiza cada mínimo.

## Ejercicio 3 — Productos más vendidos y de menor recaudación `AYP1-P5-EJ03`

> Realizar un programa que lea números que representan códigos de productos correspondientes a juegos para consolas. La secuencia finaliza al ingresar el código 0. Para cada código de producto se lee además la cantidad total vendida y el precio por unidad. Informar el código de producto que se vendió más veces y el código de producto que menos recaudó. Modularizar la solución.

- **Código:** [`ejercicio3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio3.pas) (programa `Productos`)
- **Estado:** resuelto
- **Enfoque:** dos procedimientos independientes, cada uno con su propia inicialización de "sentinela" (`maxCant := -1` y `minRec := 999999`): `maxVentas(cod, cant, var maxCant, var codMax)` actualiza cuando `cant > maxCant`, y `minRecaudacion(cod, rec, var minRec, var codMin)` actualiza cuando `rec < minRec` (con `rec := cantidad * precio` calculado en el programa principal antes de invocar ambos módulos).

## Ejercicio 4 — Máxima tasa de inflación `AYP1-P5-EJ04`

> a. Informar la máxima tasa de inflación registrada en un mes (leyendo por teclado los valores de los últimos 12 meses).
> b. Agregar al inciso a) el código necesario para informar el mes en que se produjo la máxima tasa de inflación.

- **Código base (a):** [`ejercicio4a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio4a.pas) (programa `InflacionMaxima`)
- **Código modificado (b):** [`ejercicio4b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio4b.pas) (programa `InflacionMaximaMes`)
- **Estado:** resuelto
- **Enfoque:** mismo patrón que el ejercicio 1 (máximo simple → máximo con dato asociado), aplicado a `for i := 1 to 12 do` en vez de a 7 días.

## Ejercicio 5 — Ventas del mes en un local de ropa `AYP1-P5-EJ05`

> Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee: para cada día del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se lee el monto 0. Se asume un mes de 31 días. Calcular e Informar: a. La cantidad de ventas para cada día. b. El monto total acumulado en ventas de todo el mes. c. El día en el que se realizó la mayor cantidad de ventas. Modularizar la solución.

- **Código:** [`ejercicio5.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-5/ejercicio5.pas) (programa `VentasMes`)
- **Estado:** resuelto
- **Enfoque:** dos procedimientos: `procesarDia(var cantVentas: integer; var totalDia: real)` lee los montos de un día con `while (monto <> 0)` y devuelve ambos resultados por referencia; `maximo(cant, dia: integer; var maxCant, diaMax: integer)` sigue el patrón de "máximo con dato asociado" para llevar el día de mayor cantidad de ventas. El programa principal recorre `for dia := 1 to 31 do`, invoca `procesarDia` (que ya resuelve el inciso a, imprimiendo la cantidad de ese día), acumula `totalMes` (inciso b) e invoca `maximo` (inciso c).
