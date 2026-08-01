---
id: "CADP-SABADOS-CLASE-01"
titulo: "Sábados — Clase 1: repaso de estructuras condicionales y repetitivas"
slug: "sabados-clase-01"
tipo: "ejercicio"
tema: "estructuras-de-control"
subtemas:
  - "condicionales"
  - "bucles"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "mixto"
codigo_relacionado:
  - "../../codigo/soluciones/sabados/clase-01/ejercicio1.pas"
  - "../../codigo/soluciones/sabados/clase-01/ejercicio2.pas"
  - "../../codigo/soluciones/sabados/clase-01/ejercicio3.pas"
  - "../../codigo/soluciones/sabados/clase-01/ejercicio4.pas"
  - "../../codigo/soluciones/sabados/clase-01/ejercicio5.pas"
  - "../../codigo/soluciones/sabados/clase-01/ejercicio6.pas"
  - "../../codigo/soluciones/sabados/clase-01/ejercicio7.pas"
  - "../../codigo/soluciones/sabados/clase-01/ejercicio8.pas"
---

> [!NOTE]
> Para esta clase no se conservó un enunciado escrito independiente: solo existen los programas ya resueltos en `codigo/soluciones/sabados/clase-01/`. Los enunciados de abajo son una **descripción inferida a partir del código** (`origen: "mixto"`), no una transcripción de una fuente original. Si aparece el enunciado real, reemplazar esta descripción y marcar como `"convertido"`.

## Ejercicio 1 — Mayor de dos números

Leer dos números enteros e informar cuál es mayor, o si son iguales. [`ejercicio1.pas`](../../codigo/soluciones/sabados/clase-01/ejercicio1.pas)

## Ejercicio 2 — Valor absoluto

Leer un número real e informar su valor absoluto. [`ejercicio2.pas`](../../codigo/soluciones/sabados/clase-01/ejercicio2.pas)

## Ejercicio 3 — Leer hasta encontrar el doble de X (sin límite de intentos)

Leer un valor `X`, luego leer números hasta que se ingrese exactamente el doble de `X`. [`ejercicio3.pas`](../../codigo/soluciones/sabados/clase-01/ejercicio3.pas)

## Ejercicio 4 — Leer hasta encontrar el doble de X (máximo 10 intentos)

Misma consigna que el ejercicio 3, pero acotando la búsqueda a un máximo de 10 números leídos; si no aparece, informarlo. [`ejercicio4.pas`](../../codigo/soluciones/sabados/clase-01/ejercicio4.pas)

## Ejercicio 5 — Estadísticas de alumnos

El código trae el comentario original `//CADP Practica 1 - Ejercicio 5`, confirmando que reutiliza un enunciado de la Práctica 1 de la cátedra. Leer legajo y promedio de una secuencia de alumnos (finaliza con legajo -1) e informar: cantidad total de alumnos, cantidad con promedio mayor a 6,5, y porcentaje de "destacados" (promedio > 8,5 y legajo < 2500). [`ejercicio5.pas`](../../codigo/soluciones/sabados/clase-01/ejercicio5.pas)

## Ejercicio 6 — Aumento de precio de productos

Leer código y precio actual/nuevo de una secuencia de productos (finaliza con código `32767`, que también debe procesarse) e informar si el aumento superó el 10% para cada producto. [`ejercicio6.pas`](../../codigo/soluciones/sabados/clase-01/ejercicio6.pas)

> [!NOTE]
> La solución maneja el centinela `32767` duplicando el bloque de procesamiento después del `while` en vez de reestructurar el bucle — es una forma válida pero repetitiva de resolverlo; se preserva tal cual está resuelto, sin "mejorarla" silenciosamente.

## Ejercicio 7 — Tres vocales

Leer tres caracteres e informar si los tres son vocales, usando una función auxiliar `esVocal`. [`ejercicio7.pas`](../../codigo/soluciones/sabados/clase-01/ejercicio7.pas)

## Ejercicio 8 — Acumulador con operación +/-

Leer un operador (`+` o `-`) y luego una secuencia de números (finaliza en 0), acumulando la suma o resta según el operador leído; valida que el operador ingresado sea válido. [`ejercicio8.pas`](../../codigo/soluciones/sabados/clase-01/ejercicio8.pas)
