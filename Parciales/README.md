---
id: "CADP-PARCIALES-INDICE"
titulo: "Archivo de parciales de CADP"
slug: "parciales-indice"
estado: "completo"
origen: "generado"
---

# Parciales de CADP

Catálogo de todos los exámenes parciales (y material de repaso de parciales) conservados en este repositorio. Cada carpeta es un examen o conjunto de exámenes, con su enunciado original (PDF o fotos) y, cuando existe, la carpeta `Programa/` con la solución en Pascal de quien cursó la materia.

Esta carpeta se mantuvo como área propia de nivel superior (no se movió a `fuentes/`, `codigo/` ni `conocimiento/`) porque ya tenía una organización razonable por examen (enunciado + `Programa/`), siguiendo la misma convención que otros repositorios de cursada de este usuario.

## Cómo leer la tabla

- **Enunciado**: "Sí" si hay un PDF, foto o diapositiva legible con el enunciado; el nombre de la carpeta enlaza a `enunciado.md` cuando se generó uno. "No" si no se conservó ningún enunciado (no se inventó ninguno).
- **Solución**: si existe una carpeta `Programa/` (o archivo `.pas` suelto) y si resuelve todo el enunciado, parte de él, o no compila/no aplica. La mayoría de los archivos `.pas` enlazados desde un `enunciado.md` se compilaron realmente con Free Pascal 3.2.2 (copiados a un directorio de trabajo fuera del repositorio, sin alterar ningún original) para verificar si compilan en vez de asumirlo por lectura manual; los resultados reales (compila limpio, compila con advertencias, o errores concretos con número de línea) están detallados en cada `enunciado.md`. Cuando una observación viene sólo de lectura manual (sin compilar), se aclara explícitamente.
- Varias carpetas son fotocopias/fotos que agrupan **más de un enunciado histórico en una misma hoja** (una especie de guía de estudio con exámenes anteriores). Se señalan como "compilación" y se detallan en su propio `enunciado.md`.

## Parciales fechados (2015-2019)

| Carpeta | Año | Tema | Enunciado | Solución |
|---|---|---|---|---|
| [`2015 - CADP Parcial - 002`](<2015 - CADP Parcial - 002/enunciado.md>) | 2015 | Compilación de 4 enunciados: consultora/proyectos, concurso de docentes, alumnos/Smartphones, transferencias bancarias | Sí (4 enunciados) | Parcial — `Programa/Parcial.pas` (proyectos) compila limpio; `Programa/14del11.pas` (alumnos) no compila (3 errores, ver enunciado) |
| [`2015 - CADP Parcial - 003`](<2015 - CADP Parcial - 003/enunciado.md>) | 2015 | Registros y listas enlazadas: concurso de docentes universitarios | Sí | **No para este enunciado** — `Programa/Parcial.pas` de esta carpeta contiene en realidad una solución de cine (compila, con bugs de lógica); ver nota de discrepancia |
| [`2015 - CADP Parcial - 005`](<2015 - CADP Parcial - 005/enunciado.md>) | 2015 | Registros y listas enlazadas: consultora informática, proyectos por lenguaje | Sí | **No para este enunciado** — `Programa/Parcial.pas` de esta carpeta contiene en realidad la solución de docentes de `003` (compila limpio); ver nota de discrepancia |
| [`2015 - CADP Parcial - 014`](<2015 - CADP Parcial - 014/enunciado.md>) | 2015/2016 (rendido 05/02/2016) | Listas ordenadas: cartelera de cine y críticas | Sí | **No para este enunciado** — `Programa/Programa.pas` de esta carpeta contiene en realidad la solución de proyectos de `005`, y además no compila (2 errores); ver nota de discrepancia |
| [`2016 - CADP Parcial - 001`](<2016 - CADP Parcial - 001/enunciado.md>) | 2016 | Vectores/registros: flota de camiones y viajes | Sí | No |
| [`2016 - CADP Parcial Redictado - 008 Hacer`](<2016 - CADP Parcial Redictado - 008 Hacer/enunciado.md>) | 2016 | Listas enlazadas: ventas de un comercio | Sí | Parcial, no compila (`Programa/Parcial.pas`) |
| [`2016 - CADP Parcial Redictado - 012 x2`](<2016 - CADP Parcial Redictado - 012 x2/enunciado.md>) | 2016 (contenido reciclado de 2015) | Compilación: cine + alumnos/Smartphones + transferencias bancarias | Sí (3 enunciados) | Parcial, solo cine, no compila (`Programa/Parcial.pas`) |
| [`2017 - CADP Parcial - 004`](<2017 - CADP Parcial - 004/enunciado.md>) | 2017 | Vectores/registros anidados: empresas agrícolas y cultivos | Sí | No |
| [`2017 - CADP Parcial - 005`](<2017 - CADP Parcial - 005/enunciado.md>) | 2017 | Listas enlazadas: gremio y afiliados | Sí | No |
| [`2017 - CADP Parcial Redictado - 009`](<2017 - CADP Parcial Redictado - 009/enunciado.md>) | 2017 | Listas ordenadas: biblioteca, préstamos por ISBN | Sí (una anotación manuscrita ilegible) | No |
| [`2017 - CADP Parcial Redictado - 010`](<2017 - CADP Parcial Redictado - 010/enunciado.md>) | 2017 | Listas enlazadas: empresa, empleados y sueldos | Sí | No |
| [`2017 - CADP Parcial Redictado - 011`](<2017 - CADP Parcial Redictado - 011/enunciado.md>) | 2017 | Listas/registros anidados: banco, clientes y cuentas | Sí | No |
| [`2018 - CADP Parcial - 006`](<2018 - CADP Parcial - 006/enunciado.md>) | 2018 | Vectores/registros: universidades latinoamericanas | Sí | No |
| [`2018 - CADP Parcial - 007`](<2018 - CADP Parcial - 007/enunciado.md>) | 2018 | Vectores estáticos: concesionaria, ventas de autos por modelo | Sí | No |
| [`2019 - CADP Parcial - 002`](<2019 - CADP Parcial - 002/enunciado.md>) | 2019 | Vectores/registros: editorial, catálogo de libros y ventas | Sí | No |
| [`2019 - CADP Parcial Redictado - 001`](<2019 - CADP Parcial Redictado - 001/enunciado.md>) | 2019 | Vectores/registros: cine, cartelera y espectadores | Sí | No (ver nota sobre `Cine/` más abajo) |

> [!WARNING]
> **Los archivos de código de `003`, `005` y `014` están rotados entre sí** (probablemente un error al archivar el material original): el `.pas` que aparece en cada una de esas tres carpetas resuelve el enunciado de **otra** de las tres, no el propio. Se verificó compilando los tres con Free Pascal 3.2.2 fuera del repositorio. El detalle completo, con qué carpeta tiene la solución real de cada enunciado, está en el `enunciado.md` de cada una de las tres. No se movió ni renombró ningún archivo para corregirlo.

## Parciales con nombre propio (sin numeración de archivo)

| Carpeta | Año | Tema | Enunciado | Solución |
|---|---|---|---|---|
| [`Amazon Books`](<Amazon Books/enunciado.md>) | 2020 (examen remoto) | Listas enlazadas: editorial de libros "Planeta Libros" | Sí | Parcial, dos intentos con bugs documentados |
| [`Biblioteca`](<Biblioteca/enunciado.md>) | 2020 (examen remoto) | Listas enlazadas: biblioteca UNLP, préstamos por ISBN | Sí | Parcial, solo el punto A de 3 |
| [`Cine`](<Cine/Programa/Cine.pas>) | Sin fecha | Vectores/registros: cartelera de cine y espectadores (tema inferido del código, no hay enunciado) | **No disponible** | Sí, los 4 incisos de un problema de cine (no se pudo confirmar a qué examen puntual corresponde) |
| [`Consesionaria`](<Consesionaria/enunciado.md>) | 2020 (examen remoto) | Listas enlazadas: concesionaria La Plata, ventas de autos por modelo | Sí | Parcial, con bug de bucle infinito documentado |
| [`Parcial CADP`](<Parcial CADP/Parcial.pas>) | Sin fecha | Listas enlazadas: alumnos, notas y mejores promedios (tema inferido del código, no hay enunciado) | **No disponible** | Sí, calcula los dos mejores promedios entre alumnos ingresados desde 2015 |
| [`Youtube`](<Youtube/enunciado.md>) | 2020 (examen remoto) | Listas enlazadas: canal de videos "Paulina Cocina" | Sí | Parcial, con dos bugs documentados |

`Cine/` y `Parcial CADP/` son las dos carpetas que sólo tienen el archivo `.pas` de solución, sin ningún enunciado conservado (ni PDF ni foto). Por eso no tienen `enunciado.md`: no se inventó un enunciado para ellas, tal como indican las instrucciones de organización.

## Parciales 1ra Fecha (bundle de 4 problemas de repaso)

La carpeta `Parciales 1ra Fecha/` agrupa material de una sesión de repaso con **cuatro problemas independientes**, cada uno en su propia subcarpeta con enunciado y/o `Programa/` propios. Se catalogan como 4 filas separadas, sin combinarlos ni renombrarlos (incluida la carpeta `Concecionarias`, que conserva esa grafía distinta de la carpeta `Consesionaria` de la sección anterior — son carpetas no relacionadas).

| Carpeta | Año | Tema | Enunciado | Solución |
|---|---|---|---|---|
| [`Parciales 1ra Fecha/Amazon`](<Parciales 1ra Fecha/Amazon/enunciado.md>) | Sin fecha (material de repaso) | Listas enlazadas: canal de videos / editorial de libros (diapositiva con dos problemas en paralelo) | Sí (diapositiva explicativa, no el enunciado original en limpio) | No — `Programa/Amazon.pas` está vacío; el desarrollo quedó solo en 11 capturas de pantalla |
| [`Parciales 1ra Fecha/Concecionarias`](<Parciales 1ra Fecha/Concecionarias/Programa/Conce.pas>) | Sin fecha | Sin datos suficientes para inferir el tema (el código no tiene relación clara con una concesionaria) | **No disponible** (no hay carpeta `Fotos/`) | No — `Programa/Conce.pas` tiene 4 líneas, el mismo encabezado que `PaulaMe` (de `PaulaCocina`), sin lógica propia |
| [`Parciales 1ra Fecha/ISBN`](<Parciales 1ra Fecha/ISBN/enunciado.md>) | 2020 (Redictado, material de repaso explicado) | Listas enlazadas: biblioteca UNLP, préstamos por ISBN (mismo enunciado que `Biblioteca/`) | Sí (diapositiva explicativa con el enunciado completo) | Sí, dos intentos que resuelven los 3 incisos (más completos que `Biblioteca/`) |
| [`Parciales 1ra Fecha/PaulaCocina`](<Parciales 1ra Fecha/PaulaCocina/programa/PaulaBien.pas>) | Sin fecha | Listas enlazadas: canal de videos "Paulina Cocina" (mismo problema que `Youtube/`) | **No disponible en esta carpeta** (no hay `Fotos/`; el enunciado equivalente está en `Youtube/enunciado.md`) | Sí — `PaulaBien.pas` resuelve el problema completo; `PaulaLaFea.pas` es una versión con errores (no compila) |

## Material de Sergio

| Carpeta | Año | Tema | Enunciado | Solución |
|---|---|---|---|---|
| [`Sergio`](<Sergio/Parcial_Sergio.md>) | Sin fecha | Teoría (búsqueda eficiente en vectores, elección de estructuras, memoria de módulos) + código de práctica (eliminar ocurrencias de un valor en un vector) | Parcial — 3 fotos con preguntas teóricas de análisis de código (`pregunta-1-busqueda-en-vector.jpg`, `pregunta-2-eleccion-de-estructura.jpeg`, `pregunta-3-memoria-modificar-estructura.jpeg`), sin transcripción a Markdown independiente; y un `Parcial_Sergio.md` original que **no** transcribe esas 3 fotos, sino un ejercicio distinto | El propio `Parcial_Sergio.md` trae el código resuelto de su propio ejercicio (eliminar ocurrencias de un valor en un vector); las 3 preguntas teóricas no tienen una solución desarrollada en este repositorio |

`Parcial_Sergio.md` es contenido original preexistente (se le agregó únicamente el front matter, sin tocar su texto). Las 3 fotos de preguntas teóricas conviven en la misma carpeta pero son un contenido distinto del que trae el `.md`; se dejan documentadas aquí para que no queden fuera del catálogo, sin forzar una transcripción o vínculo que el propio archivo no tiene.

## Resumen

- 27 instancias de examen catalogadas (24 carpetas de primer nivel; `Parciales 1ra Fecha/` se desglosa en 4 filas porque agrupa 4 problemas independientes).
- 23 tienen enunciado legible conservado (PDF, foto o diapositiva); 4 no tienen ningún enunciado disponible (`Cine`, `Parcial CADP`, `Parciales 1ra Fecha/Concecionarias`, y — solo para las 3 preguntas teóricas, no para el código — parcialmente `Sergio`).
- 22 de esas 23 recibieron un `enunciado.md` nuevo dentro de su propia carpeta; `Sergio` ya tenía Markdown propio y sólo se le agregó front matter.
- 2 enunciados presentan texto manuscrito parcialmente ilegible, documentado con bloques `[!WARNING]` (`2015 - CADP Parcial - 002`, `2017 - CADP Parcial Redictado - 009`).
- Se compilaron con Free Pascal 3.2.2 (fuera del repositorio, en una copia de trabajo temporal, sin alterar ningún archivo original) los 22 archivos `.pas` enlazados como `codigo_relacionado` desde los `enunciado.md` nuevos, para verificar realmente si compilan en vez de asumirlo por lectura manual. Los resultados reales están documentados en cada `enunciado.md` correspondiente.
- Esa compilación reveló, además, que los archivos de código de `2015 - CADP Parcial - 003`, `005` y `014` están **rotados entre sí**: cada uno contiene la solución de otro enunciado de esas mismas tres carpetas, no la propia (ver la nota `[!WARNING]` en la sección de arriba y en cada `enunciado.md`). Se documentó la discrepancia; no se movió ni renombró ningún archivo.
