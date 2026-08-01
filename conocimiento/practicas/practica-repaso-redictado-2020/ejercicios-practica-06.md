---
id: "CADP-REDICTADO2020-EJ06"
titulo: "Redictado 2020 - Repaso Práctica 6 (Listas)"
slug: "redictado-2020-practica-06"
tipo: "ejercicio"
unidad: 6
tema: "repaso-redictado-2020"
subtemas:
  - "listas-enlazadas"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
prerrequisitos:
  - "../practica-06-listas/ejercicios.md"
relacionados:
  - "../practica-06-listas/ejercicios.md"
  - "./README.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/"
---

# Redictado 2020 - Repaso Práctica 6 (Listas)

Mismos enunciados que [`../practica-06-listas/ejercicios.md`](../practica-06-listas/ejercicios.md) (verificado contra el texto embebido en cada `.pas`, que coincide con el PDF). Esta sub-carpeta sólo cubre los ejercicios 1 a 11 (de los 14 + 2 adicionales de la práctica original); no hay archivos para 12, 13, 14 ni los adicionales. No hay fuente `.docx`/`.pptx` con texto extraíble para esta sub-carpeta: sólo hay código.

> [!NOTE]
> **Validación real ejecutada**: los 11 archivos `.pas` de esta carpeta (`3.pas` y `3.b.pas` cuentan como uno solo, incisos a) y b) del ejercicio 3) se compilaron con Free Pascal 3.2.2 (`fpc -Se1`); 6 compilan sin errores y 6 fallan. No se ejecutó ninguno. No se modificó ningún archivo fuente.

## Ejercicio 1

Mismo enunciado que [Ejercicio 1 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-1) (programa base `JugamosConListas`).

- **Solución**: [`1.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/1.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: agrega directamente el módulo `aumentard` (inciso d) al primer intento, en vez de dejarlo para un ejercicio posterior; las respuestas a a)/b) quedan en un comentario al final en vez de al principio.

## Ejercicio 2

Mismo enunciado que [Ejercicio 2 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-2) (identificar los 9 errores).

- **Solución**: [`2.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/2.pas)
- **Estado**: `sin-solucion` — no compila (a propósito; es la misma consigna de "identificar errores", ver la nota del ejercicio 2 original)
- **Diferencia**: es prácticamente el mismo código fuente que `../practica-06-listas/2.pas`, sin comentarios adicionales identificando errores — parece una copia del enunciado sin intentos de resolución en esta carpeta puntual.

## Ejercicio 3

Mismo enunciado que [Ejercicio 3 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-3) (agregar atrás recorriendo, y agregar atrás con puntero al último).

- **Soluciones**: [`3.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/3.pas) (inciso a) y [`3.b.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/3.b.pas) (inciso b)
- **Estado**: `resuelto` (los dos compilan sin errores)
- **Esto es lo más valioso de esta sub-carpeta**: el inciso b) — "modificar `armarNodo` [...] manteniendo un puntero al último ingresado" — **no está resuelto en ningún otro lugar del corpus** (ni en `practica-06-listas/`, ni en ningún otro `.pas` de esta unidad). `3.b.pas` sí lo resuelve: `armarNodo(var pri,ult: lista; per: integer)` recibe también `ult`, engancha ahí directamente sin recorrer (`ult^.sig := nue`) y actualiza `ult := nue` al final — exactamente la técnica `AgregarAlFinal2` de [`../practica-06-listas/teoria.md`](../practica-06-listas/teoria.md) y la que describe [`AgregarAlUltimo.txt`](../practica-06-listas/ejercicios.md#ejercicio-3).

## Ejercicio 4

Mismo enunciado que [Ejercicio 4 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-4) (`Máximo`, `Mínimo`, `Múltiplos`).

- **Solución**: [`4.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/4.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: ninguna sustancial; misma resolución que la versión original, con nombres de módulos en minúscula (`maximo_elemento`, `minimo_elemento`, `function_Multiplos`).

## Ejercicio 5

Mismo enunciado que [Ejercicio 5 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-5) (productos de supermercado).

- **Solución**: [`5.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/5.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: agrega `dosMas` (dos productos más económicos, inciso c) llevando dos acumuladores en la misma pasada — la versión original de la Práctica 6 también lo resolvía; acá el patrón está más aislado en un procedimiento propio.

## Ejercicio 6

Mismo enunciado que [Ejercicio 6 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-6) (sondas espaciales de la ESA).

- **Solución**: [`6.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/6.pas)
- **Estado**: `parcial` — no compila (`Error: Identifier not found "v"`, línea 83)
- **Diferencia**: `ImprimirVector` recibe el parámetro `vc` pero el cuerpo escribe `v[i]` (variable global inexistente, en vez de `vc[i]`). Aparte de ese error, la estructura es equivalente a la versión original: `cargarCategorias` nombra cada rango del espectro (algo que la versión original no hacía) y `cargarLista` calcula la sonda más costosa igual que antes.

## Ejercicio 7

Mismo enunciado que [Ejercicio 7 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-7) (criterios H2020).

- **Solución**: [`7.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/7.pas)
- **Estado**: `sin-solucion` — no compila (`Fatal: Syntax error, "BEGIN" expected but "end of file" found`)
- **Contenido real**: el archivo tiene únicamente el enunciado transcripto como comentario (hasta el inciso a). No hay ninguna línea de código.

## Ejercicio 8

Mismo enunciado que [Ejercicio 8 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-8) (insertar ordenado ascendente).

- **Solución**: [`8.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/8.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: la condición de búsqueda de posición está invertida respecto de la versión original (`dos^.num > v` en vez de `< v`) pero el resultado también queda ordenado de forma ascendente porque el resto de la lógica de enganchado se ajusta en consecuencia; es una forma alternativa igual de válida de llegar al mismo resultado.

## Ejercicio 9

Mismo enunciado que [Ejercicio 9 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-9) (`EstáOrdenada`, `Eliminar`, `Sublista`).

- **Solución**: [`9.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/9.pas)
- **Estado**: `parcial` — no compila (`Error: Illegal expression`, línea 74)
- **Diferencia**: `EstaOrdenada` (inciso a) está completo y es correcto. `Eliminar` (inciso b) quedó como un `while do` sin condición ni cuerpo (`begin while do  end;`) — de ahí el error de compilación. Los incisos c), d) y e) (`Sublista` y sus variantes) no se implementaron en este archivo.

## Ejercicio 10

Mismo enunciado que [Ejercicio 10 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-10) (lista de espera de clientes).

- **Solución**: [`10.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/10.pas)
- **Estado**: `posiblemente-incorrecto` (compila sin errores, pero con un error de lógica)
- **Diferencia**: a diferencia de `practica-06-listas/10.pas` (que no compila porque le falta `BorrarElemento`), acá `RecibirCliente` sí compila — pero asigna el número de cliente con `nue^.dato.numero:=nue^.dato.numero + 1`, leyendo el campo `numero` del nodo **recién creado** (que todavía no tiene un valor asignado, es indeterminado) en vez de basarse en el último número entregado. El módulo `AtenderCliente` (inciso c) está comentado por completo (`{ ... }`), así que no forma parte del programa activo.

## Ejercicio 11

Mismo enunciado que [Ejercicio 11 de la Práctica 6](../practica-06-listas/ejercicios.md#ejercicio-11) (10 egresados con mejor promedio).

- **Solución**: [`11.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/11.pas)
- **Estado**: `sin-solucion` — no compila (`Error: Identifier not found "punt"`, línea 11)
- **Contenido real**: el archivo quedó como un estirado casi vacío (`type vector = array [1..10] of punt;` — usa un tipo `punt` que nunca se declaró — con `var`/`begin`/`end` vacíos). No hay intento real de resolución en esta sub-carpeta.

## Programa adicional sin enunciado numerado

| Archivo | Estado | Descripción |
|---|---|---|
| [`Estudiando.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-06/Estudiando.pas) | `posiblemente-incorrecto` — no compila (`Error: Identifier not found "nue"`, línea 58) | No es la solución de un ejercicio puntual: es un archivo de práctica personal (`program estudiando`) que reúne, en un solo lugar, variantes de `AgregarLista` (tres formas distintas de agregar a una lista o un vector), `DosMaximos`, `digitosPares`, `EstaOrdenada` e `insertarLista` — un repaso de varias técnicas de las Prácticas 4 y 6 juntas. `AgregarLista2`/`AgregarLista3` referencian una variable `nue` que no declararon (los nombres reales de sus variables locales son `dos`/`uno`), y el archivo termina con un `begin end.` vacío: ninguna de las funciones se llega a probar. |
