---
id: "CADP-P00-TEORIA"
titulo: "Tipos de datos e introducción a la programación en Pascal"
slug: "practica-00-tipos-de-datos-teoria"
tipo: "teoria"
unidad: 0
tema: "tipos-de-datos"
subtemas:
  - "entrada-salida"
  - "expresiones-aritmeticas"
  - "formato-de-salida-writeln"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-00-tipos-de-datos/Redictado CADP 2020 - Practica 0 - Introducción.pdf"
    paginas: "1"
  - archivo: "../../../fuentes/practicas/practica-00-tipos-de-datos/0 - Conceptos-TiposdeDatos-Ideas (1).ppt"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/3.pas"
  - "../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/4.pas"
---

# Tipos de datos e introducción a la programación

> [!WARNING]
> El material conceptual original de esta unidad es la presentación `0 - Conceptos-TiposdeDatos-Ideas (1).ppt`, en formato binario PowerPoint 97-2003. No hay en este entorno una herramienta capaz de extraer su texto, por lo que su contenido **no se transcribió y no se adivinó**. El archivo se conserva íntegro en `fuentes/practicas/practica-00-tipos-de-datos/` y queda marcado como `pendiente-revision`. A juzgar por su nombre, la presentación cubría los conceptos de tipo de dato — probablemente con más detalle del que puede reconstruirse a partir de los ejercicios.

## De dónde sale esta teoría

El único documento legible de esta unidad, `Redictado CADP 2020 - Practica 0 - Introducción.pdf`, es en realidad **la guía de 6 ejercicios** (ver [`ejercicios.md`](ejercicios.md)), no una presentación teórica. Dentro de esa guía hay, sin embargo, un fragmento explicativo real (no un enunciado de ejercicio) que se transcribe a continuación tal como aparece. El resto de esta sección es un inventario de qué tipos de datos, operaciones y formas de entrada/salida aparecen efectivamente usadas en los 6 ejercicios — no una lección tomada de la fuente, sino una observación directa y verificable de la guía y de las soluciones en Pascal asociadas.

## Formato de salida de números reales: `writeln(X:Y:Z)`

Transcripción literal del recuadro explicativo del ejercicio 3 (única prosa teórica del documento fuente, página 1):

> Recuerde que para imprimir en pantalla números reales puede utilizar la notación: `writeln(X:Y:Z)`, donde X es el número a imprimir, Y es el ancho (en cantidad de caracteres) que debe ocupar la impresión, y Z es la cantidad de decimales.

Ejemplo del documento, para `pi = 3.141592654`:

| Llamada | Resultado | Nota |
|---|---|---|
| `writeln(pi,1,2)` | `3.14` | |
| `writeln(pi,8,2)` | `    3.14` | 4 espacios delante, para completar los 8 caracteres de ancho |
| `writeln(pi,1,4)` | `3,1415` | así figura en el PDF (con coma decimal); en la sintaxis Pascal real el separador es un punto (`3.1415`) |

> [!WARNING]
> El propio documento fuente escribe el separador decimal unas veces con coma (`3,1415`, siguiendo la convención numérica en español) y otras con punto (`3.14`, sintaxis real de Pascal). Es una inconsistencia del original, no un error de conversión; se conserva tal cual para no ocultar la discrepancia.

### Verificación real (ejecutado con Free Pascal 3.2.2)

El ejercicio 3 (ver `ejercicios.md`) pide dividir 4,5 por 7,2 e imprimir el resultado con dos decimales, y el enunciado afirma que el resultado es `0,62`. Se compiló y ejecutó la solución [`3.pas`](../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/3.pas) con esos valores como entrada real: la salida real fue **0.63**, no 0.62 (4,5 / 7,2 = 0,625 exacto, y `writeln(...:3:2)` lo redondea hacia arriba). Se deja registrado como una discrepancia real entre el ejemplo del enunciado y el resultado verificado, sin corregir el PDF original.

## Tipos de datos que aparecen en los ejercicios de esta práctica

Inventario de los tipos usados en los 6 ejercicios y sus soluciones (no es una lista cerrada de "todos los tipos de Pascal", sólo los que efectivamente se ejercitan aquí):

- **`integer`**: cantidades enteras — números a invertir (ejercicio 1), cantidad de caramelos y de clientes (ejercicio 5).
- **`real`**: cantidades con decimales — división de dos números (ejercicio 3), diámetro/radio/área/perímetro de un círculo (ejercicio 4), montos en dólares y pesos (ejercicio 6).

## Entrada y salida de datos

Los 6 ejercicios comparten el mismo patrón de E/S:

- Lectura por teclado con `read`/`readln` (por ejemplo `read(numero_1)`, `read(diametro)`).
- Escritura en pantalla con `write`/`writeln`, combinando texto literal entre comillas simples con el valor de una variable: `writeln('El resultado de la division es: ', resultado:3:2)`.

## Expresiones aritméticas y la diferencia `integer` / `real`

Los ejercicios 5 y 6 usan `div` y `mod` (división entera y resto) sobre variables `integer` — por ejemplo `promedio := caramelos div clientes` y `sobrantes := caramelos mod clientes` en el ejercicio 5. Esto es relevante porque **`div` y `mod` sólo están definidos entre operandos enteros**: no existen como operadores para `real` en Pascal.

Esto no es una afirmación genérica de manual: se verificó directamente en esta unidad. El archivo [`2.pas`](../../../codigo/soluciones/practicas/practica-00-tipos-de-datos/2.pas) de esta misma carpeta de soluciones declara dos variables `real` y prueba `num1 div num2` / `num1 mod num2` (con el comentario del propio autor `// No se puede :D`, anticipando el error). Se intentó compilar con Free Pascal 3.2.2 y el resultado real fue:

```
2.pas(8,15) Error: Operator is not overloaded: "Real" div "Real"
2.pas(9,15) Error: Operator is not overloaded: "Real" mod "Real"
```

Es decir, el propio compilador confirma la regla. Ver [`ejercicios.md`](ejercicios.md) para la aclaración de por qué este archivo no es, pese a su nombre, una solución al ejercicio 2.

## Ver también

- [`ejercicios.md`](ejercicios.md) — los 6 ejercicios de esta práctica con su solución.
- [Práctica 1 — Estructuras de control](../practica-01-estructuras-de-control/teoria.md), donde se empieza a usar `if`, `while`, `for` y `repeat...until` sobre estos mismos tipos de datos.
