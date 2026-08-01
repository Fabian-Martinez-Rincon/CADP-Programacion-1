---
id: "CADP-PARCIAL-2016-REDICTADO-008"
titulo: "Parcial CADP Redictado 2016 (008) - ventas de un comercio"
slug: "parcial-cadp-2016-redictado-008"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "2016 - CADP Parcial Redictado - 008.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa/Parcial.pas"
---

# Parcial CADP Redictado 2016 (008) — Redictado de CADP 2016 – Parcial 2da Fecha (16/12)

## Enunciado

Un comercio de la ciudad de La Plata necesita un programa para administrar la información de las ventas realizadas durante Noviembre de 2016. El comercio dispone de información sobre los 1000 productos que comercializa. De cada producto se conoce: descripción y precio unitario.

Se debe:

A) Leer y almacenar la información de las ventas. De cada venta se lee: código de venta, DNI de comprador, código del producto comprado (1..1000) y cantidad de unidades del producto adquiridas. La lectura de información finaliza cuando se lee la venta con código de venta 2121, la cual debe procesarse.

B) Una vez leída y almacenada toda la información, calcular e informar:
1. Código de venta y monto total de cada venta.
2. Código y descripción del producto más vendido y del producto menos vendido.
3. Cantidad de ventas con DNI de comprador compuesto por al menos tres dígitos pares.

C) Realizar un módulo que aumente, en la estructura que se dispone, un 15% el precio unitario del producto cuya descripción se recibe como parámetro (dicha descripción puede no existir). *Tener en cuenta que no se repiten las descripciones de los productos en la estructura que se dispone.*

## Solución

[`Programa/Parcial.pas`](Programa/Parcial.pas) intenta resolver el punto A (lectura de ventas) y parte del B (cálculo de monto por venta e identificación de producto más/menos vendido), pero **no compila tal cual está**: declara `venta record ... end;` sin el `=` que exige Pascal antes de `record`, usa `repeat`/`until` con las cláusulas invertidas y mal formadas (`until ... repeat V.codVenta <> 2121`), y hace referencia a `CargarProductos` sin definirla. No implementa el punto B.3 (DNI con dígitos pares) ni el punto C (aumento del 15%). Estado: intento parcial, no compilable, sin verificar.
