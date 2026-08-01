---
id: "CADP-REDICTADO2020-EJ05"
titulo: "Redictado 2020 - Repaso Práctica 5 (Punteros)"
slug: "redictado-2020-practica-05"
tipo: "ejercicio"
unidad: 5
tema: "repaso-redictado-2020"
subtemas:
  - "punteros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
prerrequisitos:
  - "../practica-05-punteros/ejercicios.md"
relacionados:
  - "../practica-05-punteros/ejercicios.md"
  - "./README.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-05/"
---

# Redictado 2020 - Repaso Práctica 5 (Punteros)

Mismos enunciados que [`../practica-05-punteros/ejercicios.md`](../practica-05-punteros/ejercicios.md) (verificado contra el texto embebido en cada `.pas`, que coincide palabra por palabra con el PDF). No hay fuente `.docx`/`.pptx` con texto extraíble para esta sub-carpeta (a diferencia de `ejercicios-practica-04`): sólo hay código.

> [!NOTE]
> **Validación real ejecutada**: los 6 archivos `.pas` de esta carpeta se compilaron con Free Pascal 3.2.2 (`fpc -Se1`); 4 compilan sin errores y 2 fallan. No se ejecutó ninguno. No se modificó ningún archivo fuente.

## Ejercicio 1

Mismo enunciado que [Ejercicio 1 de la Práctica 5](../practica-05-punteros/ejercicios.md#ejercicio-1) (trazado de `sizeof` sobre un puntero a `string[50]`).

- **Solución**: [`1.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-05/1.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: en vez de trazar un único puntero, declara cinco (`puntero1`..`puntero5`, uno por cada tipo básico: `integer`, `real`, `boolean`, `string[10]`, `char`) y repite el mismo trazado de `sizeof` para los cinco — una generalización del ejercicio original que no estaba en el PDF, útil como tabla de referencia rápida de tamaños.

## Ejercicio 2

Mismo enunciado que [Ejercicio 2 de la Práctica 5](../practica-05-punteros/ejercicios.md#ejercicio-2) (trazado de `sizeof` sobre un puntero a `record producto`).

- **Solución**: [`2.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-05/2.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: a diferencia de la versión original (que dejaba comentado todo el bloque posterior al primer `new`), acá el trazado completo queda activo, aunque el `record` de este archivo omite el campo `precio: real` que sí tiene el enunciado (queda sólo `codigo` y `descripcion`).

## Ejercicio 3

Mismo enunciado que [Ejercicio 3 de la Práctica 5](../practica-05-punteros/ejercicios.md#ejercicio-3) (trazado de `sizeof` sobre un puntero a `array[1..10000] of integer`).

- **Solución**: [`3.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-05/3.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: agrega un `writeln(sizeof(n))` extra al final (el tamaño del puntero en sí, que sigue siendo 4 bytes), además de los `sizeof(n^)` que ya pedía el enunciado.

## Ejercicio 4

Mismo enunciado que [Ejercicio 4 de la Práctica 5](../practica-05-punteros/ejercicios.md#ejercicio-4) (cuatro variantes a-d sobre orden de `new`/asignación/`dispose`).

- **Solución**: [`4.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-05/4.pas)
- **Estado**: `sin-solucion` — no compila (`Fatal: Syntax error, "BEGIN" expected but "end of file" found`)
- **Contenido real**: los cuatro programas (a-d) están escritos, pero **los cuatro enteros dentro de bloques de comentario** `{ ... }`, con anotaciones sueltas al margen (ej. *"Te tira un error ya que es necesario que alla un new antes de poder usarlo"* en a; *"Tira error ya que al liberar la memoria, lo unico que tenemos que Hacer es volver a guardar la memoria"* en b). Son respuestas conceptuales correctas, pero el archivo no tiene ningún código Pascal activo fuera de esos comentarios, así que no compila como programa.

## Ejercicio 5

Mismo enunciado que [Ejercicio 5 de la Práctica 5](../practica-05-punteros/ejercicios.md#ejercicio-5) (`Alocacion_Dinamica`, cálculo de memoria).

- **Solución**: [`5.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-05/5.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: agrega `WriteLn(sizeof(alguien))` y `WriteLn(sizeof(PtrEmpleado))` explícitos para verificar en ejecución los valores (72 y 4 respectivamente) que la versión de la práctica original sólo dejaba en comentarios.

## Ejercicio 6

Mismo enunciado que [Ejercicio 6 de la Práctica 5](../practica-05-punteros/ejercicios.md#ejercicio-6) (vector de punteros para 2500 nombres de ciudad).

- **Solución**: [`6.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-05/6.pas)
- **Estado**: `sin-solucion` — no compila (`Fatal: Syntax error, "BEGIN" expected but "end of file" found`, fin de archivo en la línea 16)
- **Contenido real**: sólo tiene la declaración de tipos (`Nombre`, `Puntero`, `ArrPunteros`) y la variable `Punteros`, con un comentario `// 127.500 bytes` calculando a mano el tamaño (`2500 × 51 bytes` por el `string[50]+1` de cada nombre — nota: ese cálculo correspondería a la estructura **estática** del inciso a, no al vector de punteros del inciso b, que ocuparía `2500 × 4 = 10.000 bytes` de por sí, más lo que se reserve dinámicamente por cada nombre). No hay `begin`/`end` ni módulos: no llega a ser un programa.
