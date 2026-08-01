# conocimiento/

Esta carpeta es la capa de **conocimiento en Markdown** del repositorio: teoría, ejercicios, soluciones y resúmenes ya convertidos a texto estructurado, listos para leerse sin necesidad de abrir el PDF, PPT, DOCX o imagen original.

## Cómo está organizada

```text
conocimiento/
├── README.md                          este archivo
├── INDICE_GENERAL.md                  índice completo por unidad / tema / tipo
├── algoritmos-y-programacion-1/       cursada actual (2025/2026), práctica 1 a 7
├── practicas/                          cursada histórica, práctica 0 a 7 + repaso
├── sabados/                             clases de repaso adicionales
├── autoevaluaciones/                    cuestionarios de autoevaluación transcriptos
└── resumenes/                           resúmenes y ejemplos que no pertenecen a una sola práctica
```

Cada unidad (`practica-NN-tema/`) sigue, cuando aplica, el mismo patrón:

- `README.md` — objetivos, prerrequisitos, contenido.
- `teoria.md` — conceptos explicados, convertidos desde las fuentes originales.
- `ejercicios.md` — enunciados con su solución vinculada.

No todas las unidades usan las tres piezas: una unidad chica puede ser un único archivo. Eso es intencional (ver `docs/01-ESTRUCTURA-DEL-REPOSITORIO.md` a nivel del workspace).

Los exámenes anteriores (`Parciales/`, `Finales/`) y las entregas de estudiantes (`Estudiantes/`) quedaron como carpetas de nivel superior fuera de `conocimiento/`, no porque tengan menos valor, sino porque ya tenían una estructura propia razonable (enunciado + carpeta `Programa/` con la solución) que no convenía romper. `Parciales/README.md` y `Finales/README.md` cumplen ahí el mismo rol de catálogo/índice.

## Metadatos (front matter)

Todo archivo Markdown educativo empieza con un bloque YAML como este:

```yaml
---
id: "CADP-P04-TEORIA"
titulo: "Arreglos (vectores)"
slug: "practica-04-arreglos-teoria"
tipo: "teoria"
unidad: 4
tema: "arreglos"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-04-arreglos/Redictado CADP 2020 - Práctica 4 - Vectores.pdf"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-04-arreglos/1.pas"
---
```

Campos relevantes para leer el contenido con criterio:

- **`tipo`**: `teoria`, `ejemplo`, `ejercicio`, `solucion`, `parcial`, `resumen`, `glosario` o `proyecto`.
- **`estado`**: `completo`, `parcial`, `pendiente-revision` o `no-verificado` (para teoría/resúmenes); `sin-solucion`, `resuelto`, `parcial`, `posiblemente-incorrecto`, `ambiguo` o `no-verificable` (para ejercicios).
- **`origen`**: de dónde salió el texto —
  - `"original"`: lo escribió una persona (el docente o un estudiante) y solo se le agregaron metadatos, sin reescribir el contenido.
  - `"convertido"`: se transcribió desde un PDF/PPT/DOCX/imagen fuente, preservando el significado.
  - `"generado"`: no existía una solución previa y se creó una nueva (siempre debe poder distinguirse de una solución original).
  - `"corregido"`: existía una solución y se corrigió, conservando la versión original en algún lado (nunca se sobrescribe en silencio).
  - `"mixto"`: combina las anteriores (por ejemplo, un enunciado inferido a partir del código porque no se conservó el enunciado escrito — esto se indica explícitamente en el cuerpo del archivo, no solo en el front matter).
- **`fuentes`**: ruta relativa al PDF/PPT/DOCX/imagen original (y páginas, cuando se pudieron determinar). Permite volver siempre al documento fuente.
- **`codigo_relacionado`** / **`relacionados`**: enlaces relativos al código Pascal o a otro contenido de `conocimiento/` vinculado.

Cuando un fragmento de una fuente no se pudo leer con confianza, en vez de completarlo se usa:

```markdown
> [!WARNING]
> Este fragmento no pudo interpretarse con precisión. Consultar la fuente original, página X.
```

## Cómo usar esta base como contexto para una IA

- El **front matter** es la forma más barata de filtrar: por `tema`, `unidad`, `tipo`, `nivel` o `lenguajes` antes de leer el cuerpo del archivo.
- La cadena de trazabilidad esperada es `fuente → conocimiento → ejercicio → solución → código`. Seguir los campos `fuentes` y `codigo_relacionado` permite verificar cualquier afirmación contra el documento o el código original en vez de confiar solo en el resumen.
- `origen: "generado"` marca contenido que la IA que hizo esta reorganización creó porque no existía (por ejemplo, la solución de un ejercicio que no estaba resuelto). Tratarlo como una propuesta razonable, no como la solución "oficial" del docente, salvo que el propio archivo diga lo contrario.
- Los bloques `> [!WARNING]` marcan honestamente los límites de la conversión (texto ilegible, discrepancias entre fuentes, enunciados sin fuente original). No están para ignorarse: indican dónde conviene volver a la fuente original antes de afirmar algo con seguridad.
- El código Pascal enlazado desde `conocimiento/` es la versión canónica; si un mismo ejercicio aparece resuelto en dos lugares (por ejemplo, distintos años de la cursada), cada `conocimiento/` lo dice explícitamente en vez de asumir que son intercambiables.

## Ver también

- [`INDICE_GENERAL.md`](INDICE_GENERAL.md) — todo el contenido, navegable por unidad/tema/tipo.
- [`GLOSARIO.md`](GLOSARIO.md) — términos clave de la materia.
- `docs/00-PROMPT-INICIAL.md`, `docs/01-ESTRUCTURA-DEL-REPOSITORIO.md`, `docs/02-PROCESO-DE-ORGANIZACION.md` (a nivel del workspace que contiene este repositorio) — el proceso completo que se siguió para esta reorganización.
