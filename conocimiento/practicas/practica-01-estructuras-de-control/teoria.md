---
id: "CADP-P01-TEORIA"
titulo: "Estructuras de control: if, while, for, repeat-until"
slug: "practica-01-estructuras-de-control-teoria"
tipo: "teoria"
unidad: 1
tema: "estructuras-de-control"
subtemas:
  - "condicionales-if"
  - "bucles-while"
  - "bucles-for"
  - "bucles-repeat-until"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-01-estructuras-de-control/Redictado CADP 2020 - Practica 1 - Estructuras de control.pdf"
    paginas: "1-4"
  - archivo: "../../../fuentes/practicas/practica-01-estructuras-de-control/1 - EstructurasDeControl-Ideas (1).ppt"
  - archivo: "../../../fuentes/practicas/practica-01-estructuras-de-control/2 - Tipos de datos definidos por el usuario-Ideas (1).ppt"
prerrequisitos:
  - "tipos-de-datos"
relacionados:
  - "../practica-00-tipos-de-datos/teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/1.pas"
  - "../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/5.pas"
---

# Estructuras de control

> [!WARNING]
> Las dos presentaciones de esta unidad (`1 - EstructurasDeControl-Ideas (1).ppt` y `2 - Tipos de datos definidos por el usuario-Ideas (1).ppt`) están en formato binario PowerPoint 97-2003 y no se pudieron extraer con las herramientas disponibles. Se conservan íntegras en `fuentes/` y quedan `pendiente-revision`. Nada de lo que sigue proviene de ellas; se reconstruyó exclusivamente a partir de la guía de ejercicios (que sí es legible) y del código de las soluciones.

## Estructura de la guía (Práctica 1)

El PDF fuente organiza los ejercicios en dos partes explícitas, que funcionan como mapa temático de la unidad:

- **Parte I: If y While** — 8 ejercicios (decisión simple, lectura con corte por condición).
- **Parte II: For y Repeat-until** — 8 ejercicios (repetición con cantidad conocida de datos, repetición con condición de salida verificada al final).
- **Ejercicios adicionales** — 4 ejercicios sin numerar, al final del documento (página 4), que combinan ambos bloques.

Ver el detalle completo de cada uno en [`ejercicios.md`](ejercicios.md).

## Valor absoluto (definición transcripta del enunciado)

El ejercicio 2 de la Parte I incluye una definición matemática explícita, la única prosa conceptual del documento fuera de los propios enunciados:

> El valor absoluto de un número X se escribe |X| y se define como:
> |X| = X cuando X es mayor o igual a cero.
> |X| = -X cuando X es menor a cero.

## Tipos de datos definidos por el usuario (evidencia indirecta)

La segunda presentación no legible de esta unidad se titula "Tipos de datos definidos por el usuario". Su contenido no puede reconstruirse, pero el patrón que anticipa **sí aparece usado** en varias de las soluciones de esta misma práctica, que declaran subrangos propios en la sección `type` antes de usarlos en `var` — por ejemplo:

```pas
type
    bucle = 0..10;
...
var
    i: bucle;
```

*(fragmento de [`2.Parte2.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/2.Parte2.pas))*

Patrones equivalentes aparecen en `4.pas` (`numeros = 1..10`), `5.Parte2.pas` (`codigos = 0..200`) y `8.pas` (`numero = 0..100`), entre otros. Se deja como referencia cruzada verificable, no como transcripción del contenido de la presentación.

## Errores de sintaxis reales encontrados en esta unidad

Al preparar este material se compiló cada solución `.pas` de esta carpeta con Free Pascal 3.2.2 (ver metodología general en el README de `conocimiento/`). Dos de los errores que aparecieron son ilustrativos de un problema de sintaxis clásico de Pascal — un punto y coma de más antes de `else` — y valen como material didáctico en sí mismos:

**Caso 1 — punto y coma antes de `else`** ([`1.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/1.pas), ejercicio 1 de la Parte I):

```pas
if (numero_1>numero_2) then
    write('El numero menor es: ',numero_2);
else
    write('Los numeros leidos son iguales ');
```

El punto y coma al final de la línea `write(...)` cierra la sentencia `if` antes de que el compilador llegue al `else`, que queda "suelto". Free Pascal lo rechaza con: `Error: Syntax error, ";" expected but "ELSE" found`. Regla general: en Pascal, un `if...then <sentencia> else <sentencia>` es **una sola sentencia**; no debe llevar `;` antes de `else`.

**Caso 2 — punto y coma faltante entre dos `if` consecutivos** ([`5.pas`](../../../codigo/soluciones/practicas/practica-01-estructuras-de-control/5.pas), ejercicio 5 de la Parte I):

```pas
if (nota>6.5)then
    aprobados:=aprobados+1
if(nota>8.5)then
    destacados:=destacados+1;
```

Aquí falta el `;` que debería separar la sentencia `aprobados:=aprobados+1` de la siguiente sentencia (`if(nota>8.5)...`). Free Pascal lo rechaza con: `Error: Syntax error, ";" expected but "IF" found`. Es el error inverso al caso 1: ahí sobraba un `;`, acá falta uno.

Ambos casos, con más detalle sobre el resto de cada archivo, están documentados en [`ejercicios.md`](ejercicios.md).

## Ver también

- [`ejercicios.md`](ejercicios.md) — las 20 consignas de esta práctica con su solución.
- [Práctica 0 — Tipos de datos](../practica-00-tipos-de-datos/teoria.md)
- [Práctica 2 — Funciones y procedimientos](../practica-02-funciones/teoria.md)
