# Autoevaluaciones

Esta carpeta contiene la transcripción a Markdown de las autoevaluaciones de la cátedra: cuestionarios de autocorrección de la plataforma virtual (LMS), uno por tema, con 5 preguntas de opción múltiple o selección múltiple cada uno. Cada captura de pantalla original muestra el enunciado, a veces un bloque de código Pascal, las opciones de respuesta, cuál o cuáles están marcadas como correctas (check verde) o incorrectas (X roja) y, en algunas preguntas de selección múltiple, el porcentaje de puntaje que aporta cada opción.

Cada archivo `autoevaluacion-NN-tema.md` transcribe fielmente las 5 preguntas de su captura: enunciado, código (si lo hay), opciones y la o las respuestas correctas, indicadas de forma explícita y verificadas contra los checks verdes de la imagen. No se transcribe el bloque final "Resumen de la corrección" de cada captura (puntaje, cantidad de intentos y tiempo insumido): es metadato de un intento individual de un alumno concreto, no conocimiento reutilizable.

Las 9 imágenes originales están en [`recursos/imagenes/autoevaluaciones/`](../../recursos/imagenes/autoevaluaciones/) y no fueron modificadas ni movidas; cada Markdown enlaza a su imagen de origen en el front matter (`fuentes`) y en el cuerpo del documento.

## Índice

| # | Tema | Preguntas | Markdown | Imagen original |
|---|---|---|---|---|
| 01 | Variables, strings y CASE/FOR/SUBRANGO | 5 | [autoevaluacion-01-variables-strings-case.md](autoevaluacion-01-variables-strings-case.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-01-variables-strings-case.png) |
| 02 | *(no existe: no hay captura para este número — no se inventó)* | — | — | — |
| 03 | Funciones y procedimientos | 5 | [autoevaluacion-03-funciones-y-procedimientos.md](autoevaluacion-03-funciones-y-procedimientos.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-03-funciones-y-procedimientos.png) |
| 04 | Funciones y paso de parámetros | 5 | [autoevaluacion-04-funciones-parametros.md](autoevaluacion-04-funciones-parametros.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-04-funciones-parametros.png) |
| 05 | Registros | 5 | [autoevaluacion-05-registros.md](autoevaluacion-05-registros.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-05-registros.png) |
| 06 | Vectores: búsqueda e inserción | 5 | [autoevaluacion-06-vectores-busqueda-insercion.md](autoevaluacion-06-vectores-busqueda-insercion.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-06-vectores-busqueda-insercion.png) |
| 07 | Vectores como parámetro de funciones | 5 | [autoevaluacion-07-vectores-funciones.md](autoevaluacion-07-vectores-funciones.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-07-vectores-funciones.png) |
| 08 | Punteros | 5 | [autoevaluacion-08-punteros.md](autoevaluacion-08-punteros.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-08-punteros.png) |
| 09 | Memoria estática y dinámica | 5 | [autoevaluacion-09-memoria-estatica-dinamica.md](autoevaluacion-09-memoria-estatica-dinamica.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-09-memoria-estatica-dinamica.png) |
| 10 | Listas | 5 | [autoevaluacion-10-listas.md](autoevaluacion-10-listas.md) | [PNG](../../recursos/imagenes/autoevaluaciones/autoevaluacion-10-listas.png) |

Total: 9 autoevaluaciones, 45 preguntas, todas transcriptas completas (estado `completo`; ninguna quedó `pendiente-revision`, ya que las 9 imágenes se pudieron leer con confianza, incluyendo los bloques de código más pequeños ampliándolos para verificarlos).

Cada Markdown enlaza además, en su front matter (`relacionados`), a la unidad de teoría del tema equivalente en [`conocimiento/practicas/`](../practicas/) o [`conocimiento/resumenes/`](../resumenes/), para poder pasar del ejercicio de autocorrección a la explicación completa del tema.

## Sobre `fuentes/autoevaluaciones/`

Junto a las imágenes existe [`fuentes/autoevaluaciones/D.txt`](../../fuentes/autoevaluaciones/D.txt), un archivo de una sola palabra ("cosa"). Se deja constancia de su existencia como fuente preservada; no aporta contenido pedagógico identificable, así que no se le fuerza una interpretación ni se referencia desde ninguna autoevaluación.

## Notas sobre la transcripción

- Las preguntas de selección múltiple de estas autoevaluaciones suelen calificar todo-o-nada: marcar una opción incorrecta además de las correctas anula el puntaje de la pregunta, aunque en la captura se vean casillas individuales con checks o X por alumno. Lo que cada Markdown marca como "respuesta correcta" es siempre la columna "Respuestas correctas" de la imagen (la corrección real), no lo que respondió el alumno de la captura.
- Donde el código de la imagen tiene un comportamiento no evidente a primera vista (aliasing de punteros, orden de operaciones, off-by-one, etc.), se agregó una nota breve `[!NOTE]` con la justificación, derivada del propio código transcripto — no de la imagen — para que la respuesta marcada como correcta se pueda verificar por lectura del código.
