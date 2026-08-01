# Práctica 3 — Registros

## Objetivos

- Definir tipos de dato estructurados con `record` (`type ... = record campo1: tipo; ... end;`).
- Distinguir las operaciones permitidas sobre la variable `record` completa (sólo asignación `:=`) de las permitidas sobre cada campo individual (las de su propio tipo, incluyendo `read`/`write`).
- Leer e imprimir un registro modularizando por campo (y, para registros anidados, por sub-registro).
- Usar `with` para abreviar el acceso repetido a los campos de un mismo registro.
- Reconocer un registro anidado (un campo que es, a su vez, de tipo `record`) y cómo cambia el acceso (`.` encadenado).

## Prerrequisitos

- [Práctica 2 — Funciones y procedimientos](../practica-02-funciones/README.md): esta unidad resuelve todo modularizando con `procedure`/`function`.
- [Práctica 1 — Estructuras de control](../practica-01-estructuras-de-control/README.md)
- [Práctica 0 — Tipos de datos](../practica-00-tipos-de-datos/README.md)

## Qué contiene

- [`teoria.md`](teoria.md) — conversión completa de la presentación teórica de esta unidad (30 diapositivas, extraídas de texto y verificadas), la única de las cuatro prácticas de este bloque cuya presentación **sí** se pudo leer.
- [`ejercicios.md`](ejercicios.md) — 8 consignas numeradas (con sub-partes a/b/c) más 3 ejercicios adicionales, con su solución vinculada cuando existe.

## Fuentes de esta unidad

- `Redictado CADP 2020 - Práctica 3 - Registros.pdf` — legible, 4 páginas; guía de ejercicios.
- `5-6-Estructuras-De-Datos-Registros-Ideas.pptx` — legible (formato `.pptx` moderno): se extrajo su texto completo (30 diapositivas) con un script y se usó como fuente principal de `teoria.md`. Es una extracción mecánica del texto de cada diapositiva (sin números de diapositiva ni formato), fiel al contenido original pero sin el diseño visual.

## Código relacionado

[`codigo/soluciones/practicas/practica-03-registros/`](../../../codigo/soluciones/practicas/practica-03-registros/). Varios ejercicios tienen más de un archivo (por ejemplo `1.pas`/`1.b.pas` para las partes a/b), y uno de los archivos (`8.pas`) resultó ser una copia del ejercicio 7 en vez de una solución del ejercicio 8 — ver la nota en `ejercicios.md`.

## Navegación

- [Práctica 2 — Funciones y procedimientos](../practica-02-funciones/README.md)
- Práctica 4 — Arreglos (fuera del alcance de este agente; ver `conocimiento/practicas/practica-04-arreglos/`)
