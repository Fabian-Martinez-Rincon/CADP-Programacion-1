---
id: "CADP-PARCIAL-2016-REDICTADO-012"
titulo: "Parcial CADP Redictado 2016 (012 x2) - compilación: cine, alumnos y transferencias"
slug: "parcial-cadp-2016-redictado-012"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "2016 - CADP Parcial Redictado - 012.pdf"
    paginas: "1-2"
codigo_relacionado:
  - "Programa/Parcial.pas"
relacionados:
  - "../2015 - CADP Parcial - 014/enunciado.md"
  - "../2015 - CADP Parcial - 002/enunciado.md"
---

# Parcial CADP Redictado 2016 (012 x2)

> [!NOTE]
> Al igual que en [`../2015 - CADP Parcial - 002/`](../2015%20-%20CADP%20Parcial%20-%20002/enunciado.md), el PDF de esta carpeta es una fotocopia que reúne varios enunciados de fechas distintas (aquí, escaneados con inclinación y calidad más baja). Los dos enunciados que trae **son idénticos en texto** a los ya transcriptos en `2015 - CADP Parcial - 014` (cine) y `2015 - CADP Parcial - 002` (alumnos / transferencias); no se duplica aquí el texto completo, se referencia y se resume. El nombre de la carpeta ("x2") es del archivo original y no se modifica.

## Página 1 — CADP Redictado 2015 – Parcial Tercera Fecha – Viernes 05/02/2016 (cine)

Mismo enunciado que [`../2015 - CADP Parcial - 014/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20014/enunciado.md): un cine con lista de películas (código, nombre, género, puntaje promedio); se pide actualizar el puntaje según críticas leídas por teclado (ordenadas por código de película), informar el género con más puntaje, informar críticos con igual cantidad de dígitos pares e impares en el DNI, y un módulo para eliminar una película por código.

## Página 2 — enunciados Redictado 2015, Primera Fecha (14/11, alumnos) y Segunda Fecha (04/12, transferencias)

Mismos dos enunciados que las páginas 2 de [`../2015 - CADP Parcial - 002/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20002/enunciado.md): gestión de inscripción de alumnos a una capacitación de Smartphones (enunciado 3 de esa carpeta) y administración de transferencias bancarias a terceros (enunciado 4 de esa carpeta). La imagen incluye una anotación manuscrita "como nuestro" junto al enunciado de alumnos, indicando que se usó como modelo/referencia de estudio.

## Solución

[`Programa/Parcial.pas`](Programa/Parcial.pas) es un intento de solución del enunciado de **cine** (declara `pelicula`, `critica`, `ListaPeliculas`), pero está incompleto y no compila: el procedimiento `actualizar` usa una asignación `while actual:=c.codigo do` en lugar de una comparación, llama a una función `LeerC` que no está definida (la definida se llama `LeerCritica`), y el bloque principal invoca `cargarPeliculas(lp,pri)` y `actualizar(lp,pri)` con dos parámetros cuando los procedimientos correspondientes no están definidos así (o no están definidos en absoluto, caso de `cargarPeliculas`). No resuelve los incisos b), c) ni d) del enunciado de cine, y no hay ninguna solución para los enunciados de alumnos o transferencias en esta carpeta. Estado: intento parcial, no compilable, sin verificar.
