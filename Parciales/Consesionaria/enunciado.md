---
id: "CADP-PARCIAL-CONSESIONARIA"
titulo: "Parcial CADP - Concesionaria La Plata: ventas de autos por modelo"
slug: "parcial-cadp-consesionaria"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "Concesionaria.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa/consesionaria.pas"
relacionados:
  - "../2018 - CADP Parcial - 007/enunciado.md"
---

# Parcial CADP - Concesionaria (La Plata, febrero 2020)

> [!NOTE]
> Esta carpeta se llama `Consesionaria` (con "s") en el repositorio, mientras que la carpeta `Parciales 1ra Fecha/Concecionarias` (con "c") usa otra grafía distinta. Son dos carpetas distintas y no relacionadas entre sí (la segunda no tiene enunciado disponible); ambos nombres se conservan tal como están en el repositorio.

## Enunciado

Una concesionaria de la ciudad de La Plata necesita un programa para administrar información de ventas de autos efectuadas en febrero de 2020. Para ello, se debe leer la información de las ventas realizadas. De cada venta se lee: código de venta, modelo de auto, DNI del cliente al que se vendió el auto, día de la venta (1..28). La información de las ventas se lee de manera ordenada por modelo de auto y finaliza cuando se ingresa el modelo 'ZZZ' (que no debe procesarse).

Se pide:

A) Generar una estructura que contenga, para cada modelo de auto, la cantidad de veces que fue vendido. Esta estructura debe quedar ordenada por modelo de auto.
B) Calcular e informar el día del mes en que se realizaron más ventas a clientes con DNI impar.
C) Calcular e informar el porcentaje de ventas con código par.

(El PDF fuente incluye a continuación las instrucciones administrativas de entrega por correo electrónico propias del examen remoto de 2020; no se transcriben.)

Es un examen distinto, aunque del mismo dominio (concesionaria de autos), que [`../2018 - CADP Parcial - 007/enunciado.md`](../2018%20-%20CADP%20Parcial%20-%20007/enunciado.md); no se combinan.

## Solución

[`Programa/consesionaria.pas`](Programa/consesionaria.pas) (`program Concesionaria`) carga las ventas ordenadas por modelo en una lista enlazada (`Insertar`) y arma una segunda lista con modelo + cantidad vendida (**punto A**, `agregarAtras`/`ImprimirListaNueva`). También lleva un vector contador `VC` por día (1..28) y una función `esPar` que se usan para intentar resolver los puntos B y C, pero:

> [!WARNING]
> Se compiló este archivo con Free Pascal 3.2.2 (fuera del repositorio, sin alterar el original): compila, pero con una advertencia real del compilador sobre `esPar` — **la función nunca asigna su propio valor de retorno** (falta la sentencia `esPar := cumple;` al final); tal como está, el valor que devuelve queda indefinido. Además tiene un bucle sin condición de avance garantizada: en el `while (dni <> 0) and (cumple = False)` nunca se ejecuta `dni := dni div 10`, por lo que si el primer dígito analizado no cumple la condición de corte, el bucle no termina. Y, pese a su nombre, la comparación que hace (`dig mod 2 = 1`) identifica dígitos **impares**, al revés de lo que su nombre sugiere.

El programa acumula conteos por día (`VC[V.diaVenta]`) y un porcentaje (`PorcentajePar`) dentro del ciclo de carga, pero nunca informa cuál es el día con más ventas (no hay una búsqueda de máximo sobre `VC` ni un `writeln` final de ese resultado) ni imprime el porcentaje calculado. Estado: resuelve el punto A; B y C quedan con los datos parcialmente acumulados pero sin informar el resultado pedido, y contienen el error de `esPar` señalado arriba.
