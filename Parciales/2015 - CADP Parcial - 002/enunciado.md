---
id: "CADP-PARCIAL-2015-002"
titulo: "Parcial CADP 2015 (002) - compilación de 4 enunciados: proyectos, docentes, alumnos y transferencias"
slug: "parcial-cadp-2015-002"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "2015 - CADP Parcial - 002.pdf"
    paginas: "1-2"
codigo_relacionado:
  - "Programa/Parcial.pas"
  - "Programa/14del11.pas"
relacionados:
  - "../2015 - CADP Parcial - 003/enunciado.md"
  - "../2015 - CADP Parcial - 005/enunciado.md"
---

# Parcial CADP 2015 (002)

> [!NOTE]
> El archivo fuente de esta carpeta (`2015 - CADP Parcial - 002.pdf`) no es el enunciado de un único examen: es una hoja fotocopiada que reúne **cuatro enunciados distintos** de fechas de examen distintas (dos por página), en versión "REDUCIDO". Se transcriben los cuatro tal como aparecen, y se indica al final cuál de ellos tiene solución dentro de esta carpeta (`Programa/`).

## Página 1, enunciado 1 — CADP 2015 – Parcial Segundo Recuperatorio – Sábado 18/07 (REDUCIDO)

Una consultora informática necesita organizar la información de sus proyectos. Para ello se debe:

**Leer y almacenar** la información de los proyectos. De cada proyecto se lee: número interno del proyecto, descripción del proyecto, año de inicio, año de fin, código del tipo de lenguaje utilizado (1: Php, 2: Java, 3: Phyton, 4: .Net y 5: Ruby), cantidad de personas que participan y cantidad total de horas de programación.

> [!WARNING]
> Hay una anotación manuscrita junto a este párrafo que agrega una condición de corte ("la lectura finaliza cuando el número de proyecto es 0") y una aclaración parcialmente ilegible sobre el orden de lectura. No se pudo transcribir con precisión completa; consultar la fuente original, página 1.

Además, la consultora dispone de una estructura en donde se tiene para cada lenguaje de programación (1: Php, 2: Java, 3: Phyton, 4: .Net y 5: Ruby) el costo de la hora de programación.

Una vez leída y almacenada la información de los proyectos se pide:

a. Calcular e informar los dos lenguajes de programación más utilizados.
b. Calcular e informar **para cada** año entre 2000 y 2014 el costo total de horas de programación de los proyectos cuyo "año de inicio" se encuentre en dicho rango (sin importar el año de fin).
c. Calcular e informar la cantidad de personas que participaron en proyectos en los que se utilizó el lenguaje "Phyton" y con duración menor a un año.

Nota: esta es la versión REDUCIDO (3 incisos). La versión COMPLETO del mismo enunciado (con un cuarto inciso) se encuentra en [`../2015 - CADP Parcial - 005/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20005/enunciado.md).

## Página 1, enunciado 2 — CADP 2015 – Parcial Primera Fecha – Sábado 13/06 (REDUCIDO)

Se va a desarrollar un concurso de docentes universitarios que se dedican a la investigación y se debe realizar un programa para administrar dicho concurso. Para ello se lee desde teclado información de docentes. De cada docente se lee: DNI, Apellido, Nombre, código de la facultad a la que pertenece (1..17), código de categoría de docente (1..5), área de investigación y cantidad de años en investigación. La lectura finaliza cuando llega el docente con DNI 0.

Además, para desarrollar el programa se dispone de una tabla que indica para cada categoría de docente el puntaje básico que se otorga por año de investigación.

Una vez que ha leída y almacenada la información de los docentes, se pide:

a. Informar para cada docente el DNI, Apellido, Nombre y *puntaje total* otorgado según sus años de investigación y su categoría de docente. El *puntaje total* se calcula como: años de investigación del docente multiplicado por el valor que indique la tabla para su categoría de docente.
b. Calcular e informar el código de facultad con mayor cantidad de docentes universitarios categoría 2.
c. Informar cuántos docentes categoría 5 se desempeñan en el área de "Ingeniería de Software".

Nota: esta es la versión REDUCIDO (3 incisos). La versión COMPLETO (con un cuarto inciso) se encuentra en [`../2015 - CADP Parcial - 003/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20003/enunciado.md).

## Página 2, enunciado 3 — CADP Redictado 2015 – Parcial Primera Fecha – Sábado 14/11

Desarrollar un programa, destinado a la gestión de inscripciones de alumnos de la Facultad de Informática a una capacitación sobre aplicaciones para Smartphones. Para ello, se debe:

a) Leer y almacenar la información de los alumnos interesados. De cada alumno se lee y almacena: DNI, apellido, nombre, año de ingreso, código de la carrera en la que se encuentra inscripto (1: APU, 2: LS, 3: LI, 4: IC) y analítico. El analítico contiene el nombre y la nota de las materias aprobadas, a lo sumo 32. La lectura de los alumnos interesados finaliza cuando llega el DNI 0 (cero), y la lectura de las materias para cada alumno finaliza cuando se lee el nombre de materia 'ZZZ'.

Una vez leída y almacenada la información, se pide:

b) Informar los dos códigos de carrera con menos alumnos inscriptos.
c) Informar el DNI, nombre y apellido de los alumnos cuyo DNI posee a lo sumo 3 dígitos impares.
d) Informar el nombre, apellido y año de ingreso del alumno inscripto con mejor promedio entre todas las carreras.

Nota: Un alumno se encuentra inscripto a una única carrera.

## Página 2, enunciado 4 — CADP Redictado 2015 – Parcial Segunda Fecha – Viernes 04/12

Una entidad bancaria de la ciudad de La Plata solicita realizar un programa destinado a la administración de transferencias de dinero entre cuentas bancarias, efectuadas entre los meses de Enero y Noviembre del año 2015.

El banco **dispone** de una lista de transferencias realizadas entre Enero y Noviembre del 2015, de cada transferencia se conoce: número de cuenta origen, DNI de titular de cuenta origen, número de cuenta destino, DNI de titular de cuenta destino, fecha, hora, monto y el código del motivo de la transferencia (1: alquiler, 2: expensas, 3: facturas, 4: préstamo, 5: seguro, 6: honorarios y 7: varios). Esta estructura no posee orden alguno.

Se pide:

a) Generar una nueva estructura que contenga sólo las transferencias a terceros (son aquellas en las que las cuentas origen y destino no pertenecen al mismo titular). Esta nueva estructura debe estar ordenada por número de cuenta origen.

Una vez generada la estructura del inciso a), utilizar dicha estructura para:

b) Calcular e informar para cada cuenta de origen el monto total transferido a terceros.
c) Calcular e informar cuál es el código de motivo que más transferencias a terceros tuvo.
d) Calcular e informar la cantidad de transferencias a terceros realizadas en el mes de Junio en las cuales el número de cuenta destino posea menos dígitos pares que impares.

Nota: Para calcular b), c) y d) recorrer la estructura generada una sola vez. Modularizar.

## Soluciones disponibles en esta carpeta

`Programa/` contiene dos archivos `.pas`, cada uno relacionado con **uno** de los cuatro enunciados de arriba:

- [`Programa/14del11.pas`](Programa/14del11.pas) intenta el **enunciado 3** (alumnos / capacitación Smartphones, Redictado 14/11). Usa una lista enlazada de alumnos (`agregarAdelante`), cuenta inscriptos por carrera para el inciso b) (`recorrerVector`), filtra por DNI con a lo sumo 3 dígitos impares para el inciso c) (`tresImpares`) y calcula el promedio por alumno para el inciso d) (`CargarNotas` + comparación de `promedioIndi`).

  > [!WARNING]
  > Se compiló este código con Free Pascal 3.2.2 (fuera del repositorio, sin alterar el archivo original) y **no compila**: hay un error de tipos en la condición de corte de `LeerAlumno` (línea 47), y `recorrerVector` reasigna `mejor2`/`mejor1` — identificadores que no existen, ya que los parámetros se llaman `codMenor1`/`codMenor2` y las variables locales `menor1`/`menor2` (probable error de tipeo). Además el `begin...end` principal hace `writeln(mejorA)` sobre `mejorA`, una variable de tipo `record` completo, que Pascal no admite escribir directamente con `writeln`.

- [`Programa/Parcial.pas`](Programa/Parcial.pas) resuelve el **enunciado 1** (consultora / proyectos, versión reducida de 3 incisos). Carga una lista de proyectos, calcula los dos lenguajes más usados (`dosMayores`), acumula horas por año 2000-2014, y cuenta personas en proyectos Phyton de menos de un año. Se compiló con Free Pascal 3.2.2 y **compila limpio, sin errores** (162 líneas).

Los enunciados 2 (docentes) y 4 (transferencias) **no tienen solución dentro de esta carpeta**:

- El enunciado 2 (docentes) sí está resuelto, en su versión COMPLETO, dentro de [`../2015 - CADP Parcial - 005/Programa/Parcial.pas`](../2015%20-%20CADP%20Parcial%20-%20005/Programa/Parcial.pas) — código que, por una rotación de archivos en el repositorio original, quedó archivado en la carpeta `005` en lugar de en `003` (que es donde está el texto COMPLETO de este mismo enunciado). Ver [`../2015 - CADP Parcial - 005/enunciado.md`](../2015%20-%20CADP%20Parcial%20-%20005/enunciado.md) para el detalle completo de esta discrepancia.
- El enunciado 4 (transferencias bancarias) no tiene ninguna solución en todo este archivo de exámenes.
