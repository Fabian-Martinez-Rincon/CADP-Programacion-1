---
id: "CADP-PARCIAL-2015-014"
titulo: "Parcial CADP 2015 (014) - cartelera de cine y críticas"
slug: "parcial-cadp-2015-014"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "pendiente-revision"
origen: "mixto"
fuentes:
  - archivo: "2015 - CADP Parcial - 014.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa/Programa.pas"
relacionados:
  - "../2015 - CADP Parcial - 003/enunciado.md"
  - "../2015 - CADP Parcial - 005/enunciado.md"
---

# Parcial CADP 2015 (014) — CADP Redictado 2015 – Parcial Tercera Fecha – Viernes 05/02/2016

## Enunciado

Un cine posee la lista de películas que proyectará durante el mes de Febrero. De cada película se tiene: código de película, nombre de la película, código de género (1: acción, 2: aventura, 3: drama, 4: suspenso, 5: comedia, 6: bélica, 7: documental y 8: terror) y puntaje promedio otorgado por las críticas. Dicha estructura no posee orden alguno.

Se pide:

a) Actualizar (en la lista que se dispone) el puntaje promedio otorgado por las críticas. Para ello se debe leer desde teclado las críticas que han realizado críticos de cine, de cada crítica se lee: DNI del crítico, apellido y nombre del crítico, código de película y el puntaje otorgado. La lectura finaliza cuando se lee el código de película -1 y la información viene ordenada por código de película.
b) Informar el código de género que más puntaje obtuvo entre todas las críticas.
c) Informar el apellido y nombre de aquellos críticos que posean la misma cantidad de dígitos pares que impares en su DNI.
d) Realizar un módulo que elimine de la lista que se dispone una película cuyo código se recibe como parámetro (el mismo puede no existir).

## Solución

> [!WARNING]
> **Corrección importante sobre esta carpeta**: el archivo `Programa/Programa.pas` de esta carpeta **no** contiene una solución al enunciado de arriba (cine); contiene una solución al enunciado de **consultora informática / proyectos** de [`../2015 - CADP Parcial - 005/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20005/enunciado.md) (versión COMPLETO, 4 incisos). A su vez, la solución que sí corresponde a **este** enunciado (cine) está archivada por error dentro de [`../2015 - CADP Parcial - 003/Programa/Parcial.pas`](../2015%20-%20CADP%20Parcial%20-%20003/Programa/Parcial.pas) — ver el detalle en [`../2015 - CADP Parcial - 003/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20003/enunciado.md). Los tres archivos de código de `003`, `005` y `014` parecen haber quedado rotados entre esas tres carpetas en el repositorio original; no se movieron ni renombraron archivos para corregirlo, sólo se documenta la discrepancia en las tres carpetas.

Lo que **realmente** contiene [`Programa/Programa.pas`](Programa/Programa.pas) en esta carpeta es un intento de solución a los cuatro incisos del enunciado de proyectos (dos lenguajes más usados, costo total de horas 2000-2014, personas en proyectos Phyton de menos de un año, proyectos con dígitos impares en el número interno vía la función `esIpar`).

> [!WARNING]
> Se compiló este código con Free Pascal 3.2.2 (fuera del repositorio, sin alterar el archivo original) y **no compila**: en `RecorrerLista` se referencia un vector `LN` que no existe (la variable declarada es `LC:lenguajeCosto`), por lo que el compilador interpreta `LN[...]` como una llamada a la función matemática predefinida `Ln` con la cantidad incorrecta de parámetros; y la línea `cumpleImpar = esIpar(...)` usa `=` (comparación) en lugar de `:=` (asignación), lo que Pascal no acepta como sentencia. Además, tal como en la versión "reducida" de este mismo problema, `esIpar` identifica proyectos con **al menos** 3 dígitos impares (`impar >= 3`), no "a lo sumo 3" como pide el enunciado.

Estado: sin solución para el enunciado de cine en esta carpeta; ver `estado: "pendiente-revision"` en el front matter por esta discrepancia de origen.
