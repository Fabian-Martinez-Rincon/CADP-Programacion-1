---
id: "CADP-P06-README"
titulo: "Práctica 6 - Listas"
slug: "practica-06-listas"
tipo: "resumen"
unidad: 6
tema: "listas-enlazadas"
subtemas:
  - "listas-enlazadas"
  - "corte-de-control"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "generado"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-06-listas/Redictado CADP 2020 - Práctica 6 - Listas.docx.pdf"
    paginas: "1-5"
prerrequisitos:
  - "../practica-05-punteros/README.md"
relacionados:
  - "./teoria.md"
  - "./vectores-vs-listas.md"
  - "./ejercicios.md"
  - "../practica-04-arreglos/README.md"
---

# Práctica 6 - Listas

Unidad de la vieja secuencia de "Prácticas" (track legado) dedicada a **listas enlazadas**: la misma familia de operaciones vista para vectores en la Práctica 4 (cargar, recorrer, agregar, insertar, borrar, buscar, corte de control), reimplementada sobre una estructura dinámica basada en punteros (Práctica 5).

## Objetivos

- Declarar el tipo recursivo `lista = ^nodo` y recorrerlo con un puntero auxiliar hasta `nil`.
- Agregar un nodo al principio, al final (recorriendo, o manteniendo un puntero al último) y en una posición que preserve el orden de la lista.
- Buscar y eliminar un nodo por valor, distinguiendo el caso "es el primero" del caso general.
- Aplicar `EstáOrdenada`, `Sublista` y otras operaciones de recorrido/filtrado sobre listas.
- Reconocer cuándo una lista enlazada resuelve mejor un problema que un vector (tamaño no acotado de antemano, inserciones/bajas frecuentes) y cuándo no (acceso indexado, búsqueda binaria).
- Aplicar el patrón de corte de control sobre una lista, igual que se hizo sobre un vector en la Práctica 4.

## Prerrequisitos

- [Práctica 5 - Punteros](../practica-05-punteros/README.md): `new`, `dispose`, punteros como parámetros.
- [Práctica 4 - Vectores](../practica-04-arreglos/README.md): las mismas operaciones (cargar, agregar, insertar, borrar, corte de control), para comparar la versión con vector contra la versión con lista.

## Contenidos

| Archivo | Contenido |
|---|---|
| [`teoria.md`](./teoria.md) | Teoría completa de listas (recorrer, buscar, crear vacía, agregar al principio/al final con dos variantes, eliminar, insertar ordenado, corte de control) escrita originalmente por quien cursó la materia. |
| [`vectores-vs-listas.md`](./vectores-vs-listas.md) | Comparación vectores/listas — archivo original inconcluso (sólo título), ver nota dentro del archivo. |
| [`ejercicios.md`](./ejercicios.md) | Los 14 ejercicios de la práctica más los 2 ejercicios adicionales del PDF, cada uno con enunciado, solución vinculada, estado real de compilación y, cuando corresponde, la nota o el borrador original que acompañaba al ejercicio. |

## Fuentes

- `Redictado CADP 2020 - Práctica 6 - Listas.docx.pdf`: fuente primaria de los 14 ejercicios + 2 adicionales (texto completo, legible pese al nombre de archivo que sugiere un `.docx`; es un PDF).
- `AgregarAlUltimo.txt`: nota conceptual real sobre la técnica "agregar al final manteniendo un puntero al último", integrada en [`ejercicios.md`](./ejercicios.md#ejercicio-3).
- `apuntews.txt`: recordatorio personal de una línea ("Si hago el agregar al final siempre uso el 2"), mencionado brevemente en [`ejercicios.md`](./ejercicios.md#ejercicio-3).
- `Dudas Para Juli.txt`: dos dudas personales sobre los ejercicios 9 y 11, mencionadas en sus respectivas secciones de [`ejercicios.md`](./ejercicios.md).
- `7.txt`: mismo contenido que `9 Planteando.txt`/`10 Planteando.txt` de la Práctica 7 (borrador de un ejercicio de cine/críticas de películas); no corresponde a ningún ejercicio de esta práctica. Ver nota en [`ejercicios.md`](./ejercicios.md).
- `11- Listas-Ideas.ppt`, `12- Corrección y Eficiencia-Ideas.ppt`: presentaciones de cátedra en formato binario `.ppt`. No hay herramienta disponible en este entorno para leerlas; se preservan sin procesar con `estado: "pendiente-revision"`.
- `Nuevo documento de texto.txt`: **no es material de esta materia.** Contiene código Assembly (8086) de una subrutina de multiplicación, ajeno por completo al curso de Pascal/CADP. Se deja sin integrar, sólo señalado acá.

## Código relacionado

- [`codigo/soluciones/practicas/practica-06-listas/`](../../../codigo/soluciones/practicas/practica-06-listas/) — 14 soluciones numeradas + 3 archivos adicionales (`Nose.pas`, `ProgramaTeoria.pas`, `adicional1.pas`), ver [`ejercicios.md`](./ejercicios.md).

## Validación ejecutada

Se compilaron los 17 archivos `.pas` de esta unidad con Free Pascal 3.2.2 (`fpc -Se1`), sin ejecutarlos y sin modificar el código fuente. Resultado real: 12 compilan sin errores y 5 fallan (detalle exacto por ejercicio en `ejercicios.md`; el ejercicio 2 falla **a propósito**, porque el enunciado pide "identificar los 9 errores" de un programa roto).
