---
id: "CADP-SABADOS-CLASE-02"
titulo: "Sábados — Clase 2: For y Repeat-until"
slug: "sabados-clase-02"
tipo: "ejercicio"
tema: "estructuras-de-control"
subtemas:
  - "for"
  - "repeat-until"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "convertido"
fuentes:
  - archivo: "../../fuentes/sabados/clase-02/CADP-2026---P1-2---For-y-Repeat.pdf"
    paginas: "1-2"
codigo_relacionado:
  - "../../codigo/soluciones/sabados/clase-02/ejercicio1.pas"
  - "../../codigo/soluciones/sabados/clase-02/ejercicio2.pas"
  - "../../codigo/soluciones/sabados/clase-02/ejercicio4.pas"
  - "../../codigo/ejemplos/sabados/clase-02-prueba.pas"
  - "../../codigo/auxiliares/sabados/fabosistemas.pas"
relacionados:
  - "clase-01.md"
---

# Sábados — Clase 2: For y Repeat-until

Guía oficial "CADP 2026 — Práctica 1 (parte 2) — Estructuras de control: For y Repeat-until" (8 enunciados). Se resolvieron en clase los ejercicios 1, 2 y 4 — el resto (3, 5, 6, 7, 8) queda como guía sin resolver en esta clase.

Las soluciones de esta clase usan el módulo auxiliar [`fabosistemas.pas`](../../codigo/auxiliares/sabados/fabosistemas.pas) (procedimientos `Header`/`Resultado`/`Footer` para dar formato a la salida por consola) y [`clase-02-prueba.pas`](../../codigo/ejemplos/sabados/clase-02-prueba.pas) es un ejemplo mínimo ("Hola mundo") que muestra cómo usar la unidad `crt`.

## Ejercicio 1 — Suma total y cantidad de números mayores a 5

> Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
> **a.** Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5.

Solución: [`ejercicio1.pas`](../../codigo/soluciones/sabados/clase-02/ejercicio1.pas) — `estado: resuelto`.

> [!NOTE]
> El enunciado original pide leer 10 números; la solución de clase usa `MAX = 5` como constante (practicaron con una secuencia más corta). La lógica es la misma, solo cambia la cantidad de datos leídos.

## Ejercicio 2 — Mayor número leído

> Realice un programa que lea 10 números e informe cuál fue el mayor número leído.

Solución: [`ejercicio2.pas`](../../codigo/soluciones/sabados/clase-02/ejercicio2.pas) — `estado: resuelto` (resuelve el enunciado base; no incluye la variante 2.a que además pide informar la posición en la que se leyó el máximo). Misma nota sobre `MAX = 5` que en el ejercicio 1.

## Ejercicio 4 — Los dos números mínimos leídos

> Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son los dos números mínimos leídos.

Solución: [`ejercicio4.pas`](../../codigo/soluciones/sabados/clase-02/ejercicio4.pas) — `estado: resuelto` (resuelve el enunciado base con `MAX = 5` en vez de 1000; no incluye las variantes 4.a/4.b con lectura centinela en 0).

> [!WARNING]
> Discrepancia menor entre fuentes: el archivo se llama `ejercicio4.pas`, pero el código fuente declara `program ejercicio2;` (probablemente un copy-paste desde el ejercicio 2 que no se renombró). Se preserva el archivo tal cual está — el nombre de archivo es la referencia correcta para saber qué ejercicio resuelve.

## Ejercicios sin resolver en esta clase

Los enunciados 3, 5, 6, 7 y 8 de la guía quedan pendientes (`estado: sin-solucion`) — ver el PDF original para el texto completo: [`CADP-2026---P1-2---For-y-Repeat.pdf`](../../fuentes/sabados/clase-02/CADP-2026---P1-2---For-y-Repeat.pdf).
