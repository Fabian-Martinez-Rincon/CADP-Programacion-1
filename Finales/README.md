---
id: "CADP-FINALES-INDICE"
titulo: "Archivo de finales de CADP"
slug: "finales-indice"
estado: "completo"
origen: "generado"
---

# Finales de CADP

Catálogo de todos los exámenes finales (y material de repaso de finales) conservados en este repositorio. A diferencia de los parciales, los finales de CADP combinan siempre un ejercicio de práctica (programación) con varias preguntas de teoría (eficiencia, estructuras de datos, modularización, parámetros, punteros), típicamente vistas página a página o diapositiva a diapositiva en un examen escrito u oral.

Esta carpeta se mantuvo como área propia de nivel superior (no se movió a `fuentes/`, `codigo/` ni `conocimiento/`) por el mismo motivo que `Parciales/`: ya tenía una organización razonable por examen.

## Cómo leer la tabla

- **Enunciado**: "Sí" si hay un PDF o foto legible; el nombre de la carpeta enlaza a `enunciado.md` (o `readme.md`, en la carpeta que ya lo traía) cuando existe.
- **Solución**: si hay código (`.pas`, a veces `.docx` con la respuesta desarrollada) y si resuelve todo, parte, o nada del enunciado. Los archivos `.pas` de esta carpeta se compilaron realmente con Free Pascal 3.2.2 (copiados a un directorio de trabajo fuera del repositorio, sin alterar ningún original); los resultados reales están detallados en cada `enunciado.md`. Ningún archivo se ejecutó (sólo se compiló), así que no hay resultados de ejecución reales que informar, más allá de trazas resueltas a mano que ya traía el material original.

## Exámenes finales fechados (2015-2018)

| Carpeta | Año | Tema | Enunciado | Solución |
|---|---|---|---|---|
| [`2015 - CADP Final - 001`](<2015 - CADP Final - 001/enunciado.md>) | 2015 | Comercio: menor ganancia de un producto + eficiencia + estructuras de datos + parámetros | Sí | No |
| [`2017 - CADP Final - 000`](<2017 - CADP Final - 000/enunciado.md>) | 2017 | Vector de ocurrencias + trace de módulos + listas enlazadas + eficiencia (memoria/tiempo) | Sí (examen ya corregido, con marcas del docente) | Parcial — `cosa.pas` no resuelve ninguno de los 4 puntos; es un ejercicio suelto sobre semántica de punteros |
| [`2017 - CADP Final - 005`](<2017 - CADP Final - 005/enunciado.md>) | 2017 | Inmobiliaria La Plata: inmuebles alquilados + estructuras de datos + módulos/parámetros + eficiencia | Sí | No |
| [`2017 - CADP Final - 006`](<2017 - CADP Final - 006/enunciado.md>) | 2017 | Módulo de repeticiones sobre lista ordenada + modularización + eficiencia + estructuras de datos | Sí | No |
| [`2018 - CADP Final - 002`](<2018 - CADP Final - 002/enunciado.md>) | 2018 | Lista de nombres (agregar/eliminar) + revisión de un procedimiento INSERTAR + teoría general | Sí | No |
| [`2018 - CADP Final - 003`](<2018 - CADP Final - 003/enunciado.md>) | 2018 | Ventas de un comercio por producto + explicar/optimizar un módulo TRES + teoría general | Sí | No |
| [`2018 - CADP Final - 004`](<2018 - CADP Final - 004/enunciado.md>) | Carpeta "2018"; el PDF real es de 2015 (ver nota) | Comercio: menor ganancia de un producto (duplicado exacto de `2015 - CADP Final - 001`) | Sí (con discrepancia de fecha documentada) | Parcial — `Programa.pas` resuelve el punto 1 (Práctica) pero no compila tal cual está |

> [!WARNING]
> `2018 - CADP Final - 004/2018 - CADP Final - 004.pdf` contiene, palabra por palabra, el mismo enunciado que `2015 - CADP Final - 001/2015 - CADP Final - 001.pdf` ("22/9/2015 Examen Final CADP"), pese a estar archivado en una carpeta con nombre de 2018. Es casi seguro un archivo mal clasificado en el origen del repositorio. Siguiendo las reglas de esta organización no se renombró ni se movió ningún archivo; se documentó la discrepancia en el `enunciado.md` de esa carpeta y aquí.

## Otros finales (sin numeración de archivo)

| Carpeta | Año | Tema | Enunciado | Solución |
|---|---|---|---|---|
| [`Final`](<Final/enunciado.md>) | Sin fecha (formato oral/virtual, grabado, 5 preguntas) | Agregar al final de una lista + parámetros por referencia (traza) + verdadero/falso + vector de posiciones impares + memoria y tiempo | Sí (6 capturas: pautas + 5 preguntas) | Parcial — `5.pas` intenta la pregunta 4 (no la 5), con un error de lógica documentado |
| [`Final-Escrito-Diciembre-2025`](<Final-Escrito-Diciembre-2025/readme.md>) | 2025 (Tema 1, 02/12/2025) + un apunte sin fecha de un "Final de febrero" | Empleados/salarios (10 años con más nacimientos) + punteros en un vector (revisión de código) + traza de un módulo con parámetros + verdadero/falso + programa dado (memoria/tiempo) + ONU: población por país | Sí (`readme.md` original, con las 2 fotos de origen) | No |
| [`Preparando Final1`](<Preparando Final1/enunciado.md>) | 2020 (2do turno, febrero) | Publicaciones WICC por autor/tipo + memoria estática + traza de un módulo + arreglo (buscar/insertar) + tiempo de ejecución + estructuras de selección + refactor for/while | Sí | Parcial — 3 de 7 puntos con desarrollo (`1.pas`, `3.docx`, `4.docx`) |

`Final-Escrito-Diciembre-2025/readme.md` es contenido original preexistente (se le agregó únicamente el front matter, sin tocar su texto). Ya incluye, escrito a mano por quien lo creó, tanto la transcripción del examen fotografiado (Tema 1, 02/12/2025) como un apunte adicional de un "Final de febrero" (países de la ONU y población) del que no se conserva una foto de origen en esta carpeta.

## `material-general/` (archivos sueltos, sin carpeta propia)

| Archivo | Año | Descripción |
|---|---|---|
| [`material-general/Estudiando.pas`](material-general/Estudiando.pas) | Sin fecha | Programa suelto de práctica: declaración de tipos (`record`, arreglo indexado por letra `'A'..'D'`) y accesos/asignaciones de ejemplo. No resuelve ningún enunciado conservado; no tiene enunciado propio. |
| [`material-general/Probando.pas`](material-general/Probando.pas) | Sin fecha | Reimplementación ejecutable (con `writeln` de depuración agregados) del programa `prueba` del punto 3 de [`Preparando Final1/enunciado.md`](<Preparando Final1/enunciado.md>) — ver ese archivo para el enunciado y la traza esperada. |
| [`material-general/final-04-06-2019.png`](material-general/final-04-06-2019.png) | 2019 (04/06/2019) | Foto de un examen final completo y sin resolver: práctica (ventas de productos, lista ordenada por código de producto) + diferencias for/while/repeat + eficiencia + revisión/optimización de un módulo TRES que elimina ocurrencias en un vector ordenado + tipo Vector + tipo puntero + modularización. Sin solución conservada. |
| [`material-general/final-09-10-2018.jpg`](material-general/final-09-10-2018.jpg) | 2018 (9/10/2018) | Foto de otro examen final completo y sin resolver: práctica (vector de caracteres ordenados, contar repeticiones) + definiciones (programa, módulo, variable, parámetro, alcance) + estructura de datos + corrección de programas + lista simplemente enlazada (caracterización, insertar ordenada, insertar en posición) + tiempo de ejecución. Sin solución conservada. |

Estos cuatro archivos no tienen una carpeta de examen propia, así que no se les creó un `enunciado.md` individual: se catalogan aquí, en `material-general/`, tal como indican las instrucciones de organización (dos programas sueltos sin enunciado propio y dos fotos de examen sin carpeta propia).

## Resumen

- 10 instancias de examen con carpeta propia, más 4 archivos sueltos en `material-general/` (2 programas `.pas` sin enunciado propio, 2 fotos de examen sin carpeta propia).
- Las 10 carpetas tienen enunciado legible conservado; ninguna carece de enunciado (a diferencia de `Parciales/`, donde sí hay carpetas sin ningún enunciado).
- 9 de esas 10 carpetas recibieron un `enunciado.md` nuevo; `Final-Escrito-Diciembre-2025` ya tenía `readme.md` propio y sólo se le agregó front matter.
- 1 discrepancia de fuente detectada y documentada explícitamente: el PDF de `2018 - CADP Final - 004` es en realidad el examen de `2015 - CADP Final - 001` (mismo texto).
- No se detectó texto manuscrito ilegible en los finales (a diferencia de 2 casos en `Parciales/`); sí hay una diapositiva con una tabla de tamaños de tipo inusual (`Integer = 6 bytes`) documentada como observación, no como ilegibilidad.
