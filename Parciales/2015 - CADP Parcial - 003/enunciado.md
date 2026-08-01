---
id: "CADP-PARCIAL-2015-003"
titulo: "Parcial CADP 2015 (003) - concurso de docentes universitarios"
slug: "parcial-cadp-2015-003"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "pendiente-revision"
origen: "mixto"
fuentes:
  - archivo: "2015 - CADP Parcial - 003.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa/Parcial.pas"
relacionados:
  - "../2015 - CADP Parcial - 002/enunciado.md"
  - "../2015 - CADP Parcial - 005/enunciado.md"
---

# Parcial CADP 2015 (003) — CADP 2015 – Parcial Primera Fecha – Sábado 13/06 (COMPLETO)

## Enunciado

Se va a desarrollar un concurso de docentes universitarios que se dedican a la investigación y se debe realizar un programa para administrar dicho concurso. Para ello se lee desde teclado información de docentes. De cada docente se lee: DNI, Apellido, Nombre, código de la facultad a la que pertenece (1..17), código de categoría de docente (1..5), área de investigación y cantidad de años en investigación. La lectura finaliza cuando llega el docente con DNI 0.

Además, para desarrollar el programa se dispone de una tabla que indica para cada categoría de docente el puntaje básico que se otorga por año de investigación.

Una vez que ha leída y almacenada la información de los docentes, se pide:

a) Informar para cada docente el DNI, Apellido, Nombre y *puntaje total* otorgado según sus años de investigación y su categoría de docente. El *puntaje total* se calcula como: años de investigación del docente multiplicado por el valor que indique la tabla para su categoría de docente.
b) Calcular e informar el código de facultad con mayor cantidad de docentes universitarios categoría 2.
c) Informar cuántos docentes categoría 5 se desempeñan en el área de "Ingeniería de Software".
d) Informar el DNI, Apellido y Nombre de aquellos docentes cuyo DNI contenga igual cantidad de dígitos pares que impares.

Esta es la versión **COMPLETO** (4 incisos) del mismo enunciado que aparece en versión REDUCIDO (solo a, b, c) dentro de [`../2015 - CADP Parcial - 002/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20002/enunciado.md).

## Solución

> [!WARNING]
> **Corrección importante sobre esta carpeta**: pese a que el nombre `Programa/Parcial.pas` y la ubicación sugieren que resuelve el enunciado de arriba (docentes), **el código que efectivamente contiene ese archivo es de otro problema, sobre críticas de cine** (registros `pelicula` y `critica`, procedimientos `ActualizarLP`, `insertar`, `mayor`, `eliminar`). No resuelve ningún inciso de este enunciado de docentes. La solución que sí corresponde a **este** enunciado (docentes) está, a su vez, archivada por error dentro de [`../2015 - CADP Parcial - 005/Programa/Parcial.pas`](../2015%20-%20CADP%20Parcial%20-%20005/Programa/Parcial.pas) — ver el detalle en [`../2015 - CADP Parcial - 005/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20005/enunciado.md). Los tres archivos `Programa/Parcial.pas` de `2015 - CADP Parcial - 003`, `005` y `014` parecen haber quedado rotados entre esas tres carpetas en el repositorio original; no se movieron ni renombraron archivos para corregirlo, siguiendo las reglas de esta organización, sólo se documenta la discrepancia aquí y en las otras dos carpetas.

Lo que **realmente** contiene [`Programa/Parcial.pas`](Programa/Parcial.pas) en esta carpeta es una solución (parcial, con errores) a un problema de cartelera de cine muy similar al de [`../2015 - CADP Parcial - 014/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20014/enunciado.md): lee críticas (DNI, apellido y nombre, código de película, puntaje) y las inserta ordenadas por código de película en una lista (`insertar`), acumula puntaje en un vector `VC[1..8]` y busca el índice de mayor puntaje acumulado (`mayor`), imprime el apellido y nombre de los críticos cuyo DNI tiene igual cantidad de dígitos pares e impares (`descomponerDNI`), e implementa un módulo `eliminar` que borra una película de la lista por código.

> [!WARNING]
> Se compiló este código con Free Pascal 3.2.2 (fuera del repositorio, en un directorio de trabajo temporal, sin alterar el archivo original): **compila sin errores** (1 nota, 1 advertencia por `promedio` y `exito` sin usar/inicializar). Pero tiene bugs de lógica reales: el vector `VC` se indexa por `codPel` (código de película) en vez de por género, por lo que `mayor` no calcula "el género con más puntaje" como pediría un enunciado de este tipo; y `ActualizarLP` nunca escribe el promedio calculado de vuelta en la lista de películas que se dispone (sólo arma e imprime una lista aparte de críticas). El procedimiento `eliminar` además recibe `exito` por valor, no por referencia, igual que en `014`.

Estado: sin solución para el enunciado de docentes en esta carpeta; ver `estado: "pendiente-revision"` en el front matter por esta discrepancia de origen.
