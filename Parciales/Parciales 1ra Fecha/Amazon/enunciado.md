---
id: "CADP-PARCIAL-1RAFECHA-AMAZON"
titulo: "Parcial 1ra Fecha - Amazon: lineamientos generales canal/editorial (material de repaso)"
slug: "parcial-1ra-fecha-amazon"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "pendiente-revision"
origen: "mixto"
fuentes:
  - archivo: "Fotos/03-lineamientos-generales-canal-y-editorial.png"
codigo_relacionado:
  - "Programa/Amazon.pas"
relacionados:
  - "../../Youtube/enunciado.md"
  - "../../Amazon Books/enunciado.md"
  - "../PaulaCocina/programa/PaulaBien.pas"
---

# Parcial 1ra Fecha - Amazon (material de repaso)

> [!NOTE]
> A diferencia de `Parciales 1ra Fecha/ISBN`, esta subcarpeta no tiene una foto numerada `00-enunciado-*`; sus fotos van de `01` a `12`. La foto más cercana a un enunciado es `03-lineamientos-generales-canal-y-editorial.png`, una diapositiva didáctica (no el enunciado original en limpio) que resume en dos columnas paralelas los requisitos de **dos** problemas: uno de canal de videos y otro de editorial de libros. Se transcribe esa diapositiva íntegra abajo. El resto de las fotos (`01`, `02`, `04`-`12`) son capturas de pantalla del armado paso a paso, en código, del módulo de **canal de videos** (ver más abajo).

## "Lineamientos generales" (Fotos/03-lineamientos-generales-canal-y-editorial.png)

**Canal de videos:**
- Se debía leer información de videos
- Cuando se leía un video del canal "Paulina Cocina", y si tenía más de 1000 visualizaciones, debía agregarse a una lista de videos del canal
- La información de la lista de videos *era distinta* de la información leída
- Debía retornarse un registro con algunos datos generales del canal (nombre, cantidad de videos, cant. de visualizaciones, etc.) y la lista de videos
- Luego, del registro generado en el punto anterior, debía imprimirse el nombre del canal y el título de cada video de la lista de videos

**Editorial de libros:**
- Se debía leer información de libros
- Cuando se leía un libro de la editorial "Planeta Libros", y si tenía más de 250 ventas, debía agregarse a una lista de libros de la editorial
- La información de la lista de libros *era distinta* de la información leída
- Debía retornarse un registro con algunos datos generales de la editorial (nombre, cantidad de libros, cant. de ventas, etc.) y la lista de libros
- Luego, del registro generado en el punto anterior, debía imprimirse el nombre de la editorial y el título de cada libro de la lista de libros

Estos dos problemas corresponden, respectivamente, a los enunciados completos de [`../../Youtube/enunciado.md`](../../Youtube/enunciado.md) (canal "Paulina Cocina") y [`../../Amazon Books/enunciado.md`](../../Amazon%20Books/enunciado.md) (editorial "Planeta Libros"), que sí conservan el enunciado original en limpio.

## Fotos 01, 02, 04-12 (implementación paso a paso)

El resto de las capturas (`01-modulo-imprimir-canal-con-lista.png`, `02-modulo-imprimir-canal-con-record.png`, `04-tipos-de-datos-canal-videos.png`, `05-modulos-auxiliares-leer-video-agregar-adelante.png`, `06-modulo-armar-video-canal.png`, `07-modulo-armar-video-canal-e-inicializar-canal.png`, `08-modulo-armar-canal-completo.png`, `09-modulos-auxiliares-leer-video-agregar-adelante-b.png`, `10-modulo-imprimir-canal-final.png`, `11-modulo-imprimir-canal-limpio.png`, `12-modulo-imprimir-canal-anotado.png`) muestran, módulo por módulo, la construcción en Pascal de la solución al problema de **canal de videos** (tipos `videoYoutube`, `VideoCanal`, `canal`, y los módulos `armarVideoCanal`, `agregarAdelante`, `armarCanal`, `imprimirCanal`). No se transcribe el código de cada captura porque es funcionalmente equivalente al que ya está disponible como texto en [`../PaulaCocina/programa/PaulaBien.pas`](../PaulaCocina/programa/PaulaBien.pas) y en [`../../Youtube/Programa/Youtube.pas`](../../Youtube/Programa/Youtube.pas), que resuelven el mismo problema de canal.

## Solución

[`Programa/Amazon.pas`](Programa/Amazon.pas) está vacío (solo `program amazon; begin end.`): no contiene ninguna solución. El desarrollo real de la solución de canal de videos que muestran las fotos quedó únicamente en capturas de pantalla, no como código fuente ejecutable en esta carpeta. Estado: sin solución en código dentro de esta carpeta.
