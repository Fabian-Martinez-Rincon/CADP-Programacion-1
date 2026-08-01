---
id: "CADP-P05-README"
titulo: "Práctica 5 - Punteros"
slug: "practica-05-punteros"
tipo: "resumen"
unidad: 5
tema: "punteros"
subtemas:
  - "memoria-estatica"
  - "memoria-dinamica"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "generado"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-05-punteros/Redictado CADP 2020 - Práctica 5 - Punteros.pdf"
    paginas: "1-4"
prerrequisitos:
  - "../practica-04-arreglos/README.md"
  - "registros (record)"
relacionados:
  - "./teoria.md"
  - "./ejercicios.md"
  - "../practica-06-listas/README.md"
---

# Práctica 5 - Punteros

Unidad de la vieja secuencia de "Prácticas" (track legado) dedicada a **punteros** y memoria dinámica: la base indispensable para poder construir listas enlazadas en la Práctica 6.

## Objetivos

- Diferenciar memoria estática y memoria dinámica, y saber qué parte de una variable puntero vive en cada una.
- Declarar variables de tipo puntero y usar `new`/`dispose`/`nil` correctamente.
- Calcular con `sizeof` cuánta memoria ocupa una variable, un registro o el dato apuntado por un puntero.
- Entender qué pasa cuando dos punteros quedan apuntando a la misma celda (alias) y qué implica hacer `dispose` sobre una celda compartida.
- Distinguir el comportamiento de un puntero pasado como parámetro **por valor** (se puede modificar el dato apuntado, no a qué apunta el puntero del llamador) de uno pasado **por referencia** (también se puede redirigir el puntero del llamador con `new`).
- Reconocer cuándo conviene una estructura dinámica (vector de punteros) frente al límite de 64 KB de las estructuras estáticas en Pascal.

## Prerrequisitos

- [Práctica 4 - Vectores](../practica-04-arreglos/README.md): dimensión física/lógica, `record`, recorridos.
- Parámetros por valor y por referencia (`var`) en procedimientos y funciones.

## Contenidos

| Archivo | Contenido |
|---|---|
| [`teoria.md`](./teoria.md) | Memoria estática/dinámica, variable puntero, `new`/`dispose`, tabla de `sizeof`, 5 ejemplos de la cátedra sobre punteros como parámetros, diagrama de `agregarAdelante`, cálculo de memoria paso a paso y tres preguntas de repaso con respuesta. |
| [`ejercicios.md`](./ejercicios.md) | Las 5 preguntas de la parte conceptual y los 6 ejercicios de la parte práctica del PDF, con enunciado, solución vinculada y estado real de compilación; más 5 programas de práctica libre sin enunciado numerado. |

## Fuentes

- `Redictado CADP 2020 - Práctica 5 - Punteros.pdf`: fuente primaria (parte conceptual + parte práctica, texto completo y legible).
- `Conceptual.docx`: apunte propio con las respuestas a la parte conceptual y notas adicionales sobre punteros (texto extraíble real, usado como fuente en `teoria.md`).
- `EP6 2020 - Punteros.pptx`: presentación de la cátedra con 5 programas de ejemplo sobre punteros como parámetros (texto extraíble real; las imágenes de diagramas de memoria de las diapositivas no se pudieron recuperar, sólo el texto y el código).
- `10-Punteros-Ideas.ppt`: presentación de cátedra en formato binario `.ppt` (PowerPoint 97-2003). No hay herramienta disponible en este entorno para leerla; se preserva sin procesar con `estado: "pendiente-revision"`.
- Ocho imágenes de apuntes manuscritos/capturas en [`recursos/imagenes/practicas/practica-05-punteros/`](../../../recursos/imagenes/practicas/practica-05-punteros/), todas integradas en `teoria.md` (una de ellas resultó ser, por su contenido real, ajena al tema punteros — ver nota al final de `teoria.md`).

## Código relacionado

- [`codigo/soluciones/practicas/practica-05-punteros/`](../../../codigo/soluciones/practicas/practica-05-punteros/) — 17 archivos: 6 ejercicios numerados (algunos con variantes `a`/`b`/`c`/`d`/`pro`) más 5 programas de práctica libre (`Ejemplo.pas` a `Ejemplo4.pas`, `cosa.pas`). Ver [`ejercicios.md`](./ejercicios.md) para el detalle exacto de qué archivo resuelve qué.

## Validación ejecutada

Se compilaron los 17 archivos `.pas` de esta unidad con Free Pascal 3.2.2 (`fpc -Se1`), sin ejecutarlos y sin modificar el código fuente. Resultado real: **los 17 compilan sin errores**. Ningún programa fue ejecutado (todos requieren entrada por teclado). El detalle por ejercicio está en `ejercicios.md`.
