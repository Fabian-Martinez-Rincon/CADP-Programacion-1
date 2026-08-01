---
id: "CADP-REDICTADO2020-README"
titulo: "Redictado 2020 - Repaso de Prácticas 4, 5 y 6"
slug: "redictado-2020-repaso"
tipo: "resumen"
tema: "repaso-redictado-2020"
subtemas:
  - "vectores"
  - "punteros"
  - "listas-enlazadas"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "generado"
prerrequisitos:
  - "../practica-04-arreglos/README.md"
  - "../practica-05-punteros/README.md"
  - "../practica-06-listas/README.md"
relacionados:
  - "./ejercicios-practica-04.md"
  - "./ejercicios-practica-05.md"
  - "./ejercicios-practica-06.md"
  - "../practica-04-arreglos/ejercicios.md"
  - "../practica-05-punteros/ejercicios.md"
  - "../practica-06-listas/ejercicios.md"
---

# Redictado 2020 - Repaso de Prácticas 4, 5 y 6

Este es un **segundo intento** de los mismos ejercicios de las Prácticas 4 (Vectores), 5 (Punteros) y 6 (Listas), hecho durante el redictado 2020 como repaso. No hay un enunciado propio: los enunciados son **los mismos** que en `practica-04-arreglos`, `practica-05-punteros` y `practica-06-listas` (se verificó comparando el texto de los comentarios embebidos en cada `.pas` contra el PDF de cada práctica original, y coinciden palabra por palabra). Por eso acá no se retranscriben los enunciados completos: cada ejercicio enlaza al enunciado ya transcripto en la práctica original y se concentra en señalar qué tiene de distinto esta segunda resolución.

## Por qué existe esta carpeta separada

`fuentes/practicas/practica-repaso-redictado-2020/` sólo trae una fuente con texto extraíble (`ejercicios-practica-04/1.docx`, la traza de respuestas del ejercicio 1). Para los ejercicios 5 y 6 no hay ningún documento fuente en `fuentes/` más allá del propio código: sólo existen las carpetas de soluciones `.pas`. Aun así, cada `.pas` de esta carpeta es una **resolución independiente** (variables, nombres de tipos y hasta el enfoque cambian respecto de la versión de la práctica original), así que se documenta por separado en vez de fusionarla con la práctica original.

## Contenidos

| Archivo | Contenido |
|---|---|
| [`ejercicios-practica-04.md`](./ejercicios-practica-04.md) | 15 ejercicios (falta el 6) + el primer ejercicio adicional, comparados contra [`../practica-04-arreglos/ejercicios.md`](../practica-04-arreglos/ejercicios.md). |
| [`ejercicios-practica-05.md`](./ejercicios-practica-05.md) | Los 6 ejercicios de la parte práctica, comparados contra [`../practica-05-punteros/ejercicios.md`](../practica-05-punteros/ejercicios.md). |
| [`ejercicios-practica-06.md`](./ejercicios-practica-06.md) | Ejercicios 1 a 11 (de los 14 + 2 adicionales de la práctica original), comparados contra [`../practica-06-listas/ejercicios.md`](../practica-06-listas/ejercicios.md). Incluye la única solución completa del ejercicio 3, inciso b) ("agregar al final manteniendo un puntero al último"), que en la carpeta original de la Práctica 6 no está resuelto. |

## Validación ejecutada

Se compilaron los 32 archivos `.pas` de esta carpeta (`ejercicios-practica-04/`: 15 archivos, `ejercicios-practica-05/`: 6 archivos, `ejercicios-practica-06/`: 11 archivos) con Free Pascal 3.2.2 (`fpc -Se1`), sin ejecutarlos y sin modificar el código fuente. Resultado real: 21 compilan sin errores y 11 fallan. El detalle exacto, archivo por archivo, está en cada uno de los tres `ejercicios-practica-0N.md`.
