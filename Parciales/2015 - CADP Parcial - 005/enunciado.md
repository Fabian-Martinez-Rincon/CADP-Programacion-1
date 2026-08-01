---
id: "CADP-PARCIAL-2015-005"
titulo: "Parcial CADP 2015 (005) - consultora informática: proyectos por lenguaje"
slug: "parcial-cadp-2015-005"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "pendiente-revision"
origen: "mixto"
fuentes:
  - archivo: "2015 - CADP Parcial - 005.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa/Parcial.pas"
relacionados:
  - "../2015 - CADP Parcial - 002/enunciado.md"
  - "../2015 - CADP Parcial - 003/enunciado.md"
  - "../2015 - CADP Parcial - 014/enunciado.md"
---

# Parcial CADP 2015 (005) — CADP 2015 – Parcial Segundo Recuperatorio – Sábado 18/07 (COMPLETO)

## Enunciado

Una consultora informática necesita organizar la información de sus proyectos. Para ello se debe:

**Leer y almacenar** la información de los proyectos. De cada proyecto se lee: número interno del proyecto, descripción del proyecto, año de inicio, año de fin, código del tipo de lenguaje utilizado (1: Php, 2: Java, 3: Phyton, 4: .Net y 5: Ruby), cantidad de personas que participan y cantidad total de horas de programación. La lectura finaliza con el número interno 0 (el cual no debe procesarse).

Además, la consultora dispone de una estructura en donde se tiene para cada lenguaje de programación (1: Php, 2: Java, 3: Phyton, 4: .Net y 5: Ruby) el costo de la hora de programación.

Una vez leída y almacenada la información de los proyectos se pide:

a. Calcular e informar los dos lenguajes de programación más utilizados.
b. Calcular e informar **para cada** año entre 2000 y 2014 el costo total de horas de programación de los proyectos cuyo "año de inicio" se encuentre en dicho rango (sin importar el año de fin).
c. Calcular e informar la cantidad de personas que participaron en proyectos en los que se utilizó el lenguaje "Phyton" y con duración menor a un año.
d. Calcular e informar la cantidad de proyectos en los que el *número interno* contenga a lo sumo 3 dígitos impares.

Esta es la versión **COMPLETO** (4 incisos) del mismo enunciado que aparece en versión REDUCIDO (solo a, b, c) dentro de [`../2015 - CADP Parcial - 002/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20002/enunciado.md).

## Solución

> [!WARNING]
> **Corrección importante sobre esta carpeta**: el archivo `Programa/Parcial.pas` de esta carpeta **no** contiene una solución al enunciado de arriba (proyectos de una consultora); contiene una solución al enunciado de **docentes universitarios** de [`../2015 - CADP Parcial - 003/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20003/enunciado.md). A su vez, la solución que sí corresponde a **este** enunciado (proyectos) está archivada por error dentro de [`../2015 - CADP Parcial - 014/Programa/Programa.pas`](../2015%20-%20CADP%20Parcial%20-%20014/Programa/Programa.pas) — ver el detalle en [`../2015 - CADP Parcial - 014/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20014/enunciado.md). Los tres archivos `Programa/Parcial.pas` (o `Programa.pas`) de `003`, `005` y `014` parecen haber quedado rotados entre esas tres carpetas en el repositorio original; no se movieron ni renombraron archivos para corregirlo, sólo se documenta la discrepancia en las tres carpetas.

Lo que **realmente** contiene [`Programa/Parcial.pas`](Programa/Parcial.pas) en esta carpeta es una solución completa a los cuatro incisos del enunciado de docentes: carga los docentes en una lista enlazada (`CargarLista`/`agregarAdelante`), imprime DNI/Apellido/Nombre/puntaje total por docente (inciso a, `informarDocente`, puntaje = años × tabla de categoría), acumula en un vector por facultad la cantidad de docentes categoría 2 y calcula el código con más docentes (inciso b, `inicializarVF`/`codigoMaximo`), cuenta los docentes categoría 5 del área "Ingenieria de Software" (inciso c, contador `contArea5` dentro de `RecorrerLista`), e imprime los docentes cuyo DNI tiene igual cantidad de dígitos pares e impares (inciso d, función `cumpleAmbas` + `Informardocentes2`).

Se compiló este código con Free Pascal 3.2.2 (fuera del repositorio, sin alterar el archivo original): **compila limpio, sin errores ni advertencias** (179 líneas).

Estado: sin solución para el enunciado de proyectos en esta carpeta; ver `estado: "pendiente-revision"` en el front matter por esta discrepancia de origen.
