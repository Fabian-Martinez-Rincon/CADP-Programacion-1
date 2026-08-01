---
id: "CADP-P07-README"
titulo: "Práctica 7 - Repaso"
slug: "practica-07-repaso"
tipo: "resumen"
unidad: 7
tema: "repaso"
subtemas:
  - "vectores"
  - "listas-enlazadas"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "generado"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-07-repaso/Redictado CADP 2020 - Practica 7 - Repaso.pdf"
    paginas: "1-4"
prerrequisitos:
  - "../practica-04-arreglos/README.md"
  - "../practica-05-punteros/README.md"
  - "../practica-06-listas/README.md"
relacionados:
  - "./teoria.md"
  - "./ejercicios.md"
  - "../adicionales.md"
---

# Práctica 7 - Repaso

Última unidad de la vieja secuencia de "Prácticas" (track legado): 11 ejercicios integradores que combinan vectores, registros y (sobre todo) listas enlazadas — sin contenido teórico nuevo, es una práctica de repaso antes de exámenes/parciales.

## Objetivos

- Integrar en un mismo programa lectura con centinela, `record`, y una estructura (lista o vector) elegida según convenga al problema.
- Reconocer y reutilizar los patrones ya vistos en las Prácticas 4-6: contar dígitos pares/impares, llevar "los dos mayores/menores" en una pasada, filtrar y reordenar en una estructura nueva.
- Practicar enunciados largos con varios incisos encadenados (algunos incisos usan la estructura generada por un inciso anterior).

## Prerrequisitos

- [Práctica 4 - Vectores](../practica-04-arreglos/README.md)
- [Práctica 5 - Punteros](../practica-05-punteros/README.md)
- [Práctica 6 - Listas](../practica-06-listas/README.md)

## Contenidos

| Archivo | Contenido |
|---|---|
| [`teoria.md`](./teoria.md) | No hay teoría nueva en el PDF de esta práctica: esta página organiza los patrones recurrentes de las Prácticas 4-6 tal como se repiten en los 11 ejercicios de acá. |
| [`ejercicios.md`](./ejercicios.md) | Los 11 ejercicios del PDF, cada uno con enunciado, solución(es) vinculada(s) y estado real de compilación; más 3 problemas "tipo parcial" adicionales (sin respaldo en el PDF, con enunciado tomado de comentarios en el propio código) y una nota sobre "Pepito El Feito" (ver [`../adicionales.md`](../adicionales.md)). |

## Fuentes

- `Redictado CADP 2020 - Practica 7 - Repaso.pdf`: fuente primaria de los 11 ejercicios (texto completo, legible). No hay `.ppt` de cátedra para esta práctica (no existe en `fuentes/practicas/practica-07-repaso/`).
- `9 Planteando.txt` y `10 Planteando.txt`: borradores de planteo. Ambos archivos tienen **el mismo contenido exacto** (un boceto sobre el ejercicio 9, cine/críticas de películas); no hay un borrador distinto para el ejercicio 10. Ver la nota en [`ejercicios.md`](./ejercicios.md#ejercicio-9).
- `apunte-formato-informe-productos-vendidos.png`: pese al nombre, su contenido real no es un formato de informe sino un fragmento de código sobre el patrón "contar dígitos pares/impares". Integrado en [`teoria.md`](./teoria.md#patrón-1-contar-dígitos-pares-vs-impares-de-un-código-o-dni).

## Código relacionado

- [`codigo/soluciones/practicas/practica-07-repaso/`](../../../codigo/soluciones/practicas/practica-07-repaso/) — 11 ejercicios (algunos con más de un intento: `10.pas`/`10PRO.pas`, `11.pas`/`11Pro.pas`) más `Parcial.pas`, `Parcial2.pas`, `Parcial_ISBN.pas` (problemas adicionales tipo examen, sin enunciado en el PDF de esta práctica) y `adicionales/pepito-el-feito.pas` (ver [`../adicionales.md`](../adicionales.md)).

## Validación ejecutada

Se compilaron los 15 archivos `.pas` de la carpeta principal (más `adicionales/pepito-el-feito.pas`) con Free Pascal 3.2.2 (`fpc -Se1`), sin ejecutarlos y sin modificar el código fuente. Resultado real: de los 11 ejercicios numerados, 4 compilan sin errores (**1, 2, 3 y 9**); el resto falla por errores puntuales documentados en `ejercicios.md`, en general typos o identificadores no declarados. Entre los adicionales, `Parcial_ISBN.pas` y `pepito-el-feito.pas` compilan sin errores; `Parcial.pas` y `Parcial2.pas` fallan.
