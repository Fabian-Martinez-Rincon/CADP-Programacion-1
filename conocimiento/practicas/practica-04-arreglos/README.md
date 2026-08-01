---
id: "CADP-P04-README"
titulo: "Práctica 4 - Vectores"
slug: "practica-04-vectores"
tipo: "resumen"
unidad: 4
tema: "arreglos"
subtemas:
  - "vectores"
  - "corte-de-control"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "generado"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-04-arreglos/Redictado CADP 2020 - Práctica 4 - Vectores.pdf"
    paginas: "1-4"
prerrequisitos:
  - "tipos de datos simples (integer, real, string)"
  - "estructuras repetitivas (for, while)"
  - "modularización con procedimientos y funciones"
relacionados:
  - "./teoria.md"
  - "./ejemplos.md"
  - "./ejercicios.md"
  - "../practica-05-punteros/README.md"
  - "../practica-06-listas/vectores-vs-listas.md"
---

# Práctica 4 - Vectores

Unidad de la vieja secuencia de "Prácticas" (track legado) dedicada a **vectores** (arreglos unidimensionales): declaración, recorridos, carga de datos, agregar/insertar/borrar elementos, búsqueda (lineal, secuencial optimizada y dicotómica) y corte de control.

## Objetivos

- Declarar y usar vectores con dimensión física (`dimF`) y dimensión lógica (`dimL`) diferenciadas.
- Recorrer un vector de forma total o parcial, en cualquier dirección y desde cualquier posición.
- Cargar un vector desde teclado hasta un valor centinela o hasta completar su capacidad.
- Agregar, insertar (en una posición dada o manteniendo un orden) y borrar elementos de un vector.
- Aplicar búsqueda lineal/secuencial y, cuando el vector está ordenado, búsqueda secuencial optimizada y búsqueda dicotómica (binaria).
- Reconocer el patrón de **corte de control** para agrupar datos consecutivos que comparten una clave.
- Combinar vectores con `record` (estructuras heterogéneas) para modelar entidades del mundo real (alumnos, clientes, viajes, galaxias, etc.).

## Prerrequisitos

- Tipos de datos simples (`integer`, `real`, `string`, `boolean`).
- Estructuras repetitivas (`for`, `while`) y condicionales (`if`).
- Modularización: procedimientos y funciones, parámetros por valor y por referencia (`var`).

## Contenidos

| Archivo | Contenido |
|---|---|
| [`teoria.md`](./teoria.md) | Teoría completa de vectores (recorridos, carga, agregar, insertar, borrar, búsquedas, corte de control) escrita originalmente por quien cursó la materia, más un anexo con procedimientos transcritos desde capturas de pantalla de `Resumen Arreglos.docx` y `e.docx`. |
| [`ejemplos.md`](./ejemplos.md) | Ejemplo desarrollado: vector de clientes de un centro de deportes (`CARGAR`/`AGREGAR`/`INSERTARPOS`/`BORRARPOS` aplicados a un caso completo). |
| [`ejercicios.md`](./ejercicios.md) | Los 15 ejercicios de la práctica más los 2 ejercicios adicionales del PDF, cada uno con su enunciado, solución vinculada y estado real de compilación. |
| [`../practica-06-listas/vectores-vs-listas.md`](../practica-06-listas/vectores-vs-listas.md) | Comparación breve entre vectores y listas enlazadas (contenido mínimo, ver nota en ese archivo). |

## Fuentes

- `Redictado CADP 2020 - Práctica 4 - Vectores.pdf`: fuente primaria de los 15 ejercicios + 2 adicionales (texto completo, legible).
- `Resumen Arreglos.docx` y `e.docx`: apuntes propios en formato de capturas de pantalla (sin texto extraíble); transcritos en el anexo de `teoria.md`.
- `7- Arreglos Primera Parte-Ideas.ppt`, `8- Arreglos Segunda Parte-Ideas.ppt`, `9- Arreglos Tercera Parte-Ideas.ppt`: presentaciones de cátedra en formato binario `.ppt` (PowerPoint 97-2003). No hay herramienta disponible en este entorno para leerlas; se preservan sin procesar con `estado: "pendiente-revision"`.
- `Parciales.rar`: archivo comprimido RAR v5. No hay herramienta de extracción disponible en este entorno (se verificó la ausencia de `unrar`/`7z`/`7za`/`rar`); se preserva sin extraer con `estado: "pendiente-revision"`.

## Código relacionado

- [`codigo/soluciones/practicas/practica-04-arreglos/`](../../../codigo/soluciones/practicas/practica-04-arreglos/) — 15 soluciones numeradas + 4 archivos adicionales sin enunciado (`InstarOrdenado.pas`, `InstarOrdenado2.pas`, `ParcialRaro.pas`, `Probando.pas`), ver [`ejercicios.md`](./ejercicios.md).
- [`codigo/ejemplos/practicas/practica-04-arreglos/`](../../../codigo/ejemplos/practicas/practica-04-arreglos/) — programa de ejemplo del "centro de deportes", ver [`ejemplos.md`](./ejemplos.md).

## Validación ejecutada

Se compilaron los 21 archivos `.pas` de esta unidad (soluciones + ejemplos) con Free Pascal 3.2.2 (`fpc -Se1`, disponible en este entorno en `C:\FPC\3.2.2\bin\i386-Win32\fpc.exe`), sin modificar el código fuente. Resultado real: 16 compilan sin errores y 5 fallan (detalle exacto en `ejercicios.md`, por ejercicio). Ningún programa fue **ejecutado** (requeriría preparar entradas por teclado para cada caso); lo verificado es únicamente la compilación.
