---
id: "AYP1-P7-EJERCICIOS"
titulo: "Práctica 7 - Estructura de datos Registro: enunciados y soluciones"
slug: "practica-7-ejercicios"
tipo: "ejercicio"
unidad: 7
tema: "registros-y-strings"
subtemas:
  - "string"
  - "registro"
  - "record"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "resuelto"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-7/Práctica 7 - Ayp1 - 2026.pdf"
    paginas: "1-3"
prerrequisitos:
  - "funciones"
  - "modularizacion"
relacionados:
  - "./README.md"
  - "./teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio1.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio2a.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio2b.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio3.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio4.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio5.pas"
  - "../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio6.pas"
---

# Práctica 7 — Ejercicios y soluciones

Enunciados transcriptos de `Práctica 7 - Ayp1 - 2026.pdf` (páginas 1-3). Los 7 archivos de esta carpeta compilan sin errores con Free Pascal 3.2.2 (verificado durante la conversión). El propio enunciado agrega, al final, tres notas generales: todos los programas deben estar modularizados; hay un único `TYPE` que se ubica debajo de `program` para todos los módulos y el programa principal; y la lectura de un registro siempre se implementa en un módulo dedicado.

## Ejercicio 1 — Persona de mayor y menor edad `AYP1-P7-EJ01`

> - Declarar un registro que represente una persona con su nombre y edad.
> - Realizar un módulo que lea y retorne los datos de una persona.
> - Realizar un programa que lea personas hasta que se ingrese el nombre "ZZZ", y que calcule e informe el nombre de la persona de mayor edad y el nombre de la persona de menor edad.

- **Código:** [`ejercicio1.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio1.pas) (programa `EjercicioPersonas`)
- **Estado:** resuelto
- **Enfoque:** declara `type persona = record nombre: string; edad: integer; end;` y resuelve el módulo de lectura como **función** (`function leerPersona: persona`) en lugar de procedimiento con parámetro `var` — una alternativa válida mencionada en la teoría. Usa una bandera `primero: boolean` para inicializar `maxEdad`/`minEdad` con los datos de la primera persona leída (en vez de un valor centinela arbitrario), y a partir de la segunda persona compara con dos `if` independientes (patrón "dos máximos simultáneos" de la Práctica 5, aplicado aquí a máximo y mínimo por separado).

## Ejercicio 2 — Alumnos y mejor promedio `AYP1-P7-EJ02`

> Dado el siguiente programa (con `type alumno = record codigo, nombre, promedio; end;` y `procedure leer(var alu: alumno)` ya provistos):
>
> a. Completar el programa principal para que lea información de alumnos (código, nombre, promedio) e informe la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0. Nota: utilizar el módulo `leer`.
>
> b. Modificar al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe también el nombre del alumno con mejor promedio.

- **Código base (a):** [`ejercicio2a.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio2a.pas)
- **Código modificado (b):** [`ejercicio2b.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio2b.pas)
- **Estado:** resuelto
- **Enfoque:** ambos reutilizan textualmente el `type alumno` y el `procedure leer` provistos por el enunciado. La versión a) solo cuenta alumnos con `while (a.codigo <> 0) do cant := cant + 1`. La versión b) agrega el patrón de máximo (inicializando `mejorPromedio`/`nombreMejor` con los datos del primer alumno leído, análogo al ejercicio 1) dentro del mismo `while`, evitando así un segundo recorrido de los datos.

## Ejercicio 3 — Prisma rectangular `AYP1-P7-EJ03`

> Realizar un programa que lea desde el teclado el ancho, alto y profundidad de un prisma rectangular (cuerpo geométrico de 6 caras rectangulares, como una caja) e informe su volumen y área de la superficie formada por sus caras.
> Nota: Volumen del prisma rectangular = profundidad \* ancho \* altura. Área Total = 2 \* (profundidad \* altura + profundidad \* ancho + altura \* ancho).

- **Código:** [`ejercicio3.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio3.pas) (programa `PrismaRectangular`)
- **Estado:** resuelto
- **Enfoque:** este ejercicio no involucra registros; se resuelve con dos **funciones** (`calcularVolumen`, `calcularArea`) que reciben `prof, ancho, alto: real` y aplican directamente las fórmulas del enunciado.

## Ejercicio 4 — Casamientos 2025 `AYP1-P7-EJ04`

> El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos durante el año 2025.
> a. Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada casamiento.
> b. Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el definido en el inciso a).
> c. Implementar un programa que lea la fecha de todos los casamientos realizados en 2025. La lectura finaliza al ingresar el año 2026. Debe informar la cantidad de casamientos realizados durante los meses de verano (diciembre, enero y febrero) y la cantidad de casamientos realizados en los primeros 15 días del mes de abril. Nota: utilizar el módulo realizado en b) para la lectura de fecha. No se leen casamientos anteriores a 2025.

- **Código:** [`ejercicio4.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio4.pas) (programa `Casamientos2025`)
- **Estado:** resuelto
- **Enfoque:** define `type fecha = record dia, mes, anio: integer; end;` (inciso a) y `procedure leerFecha(var f: fecha)` (inciso b), que valida con un `while` interno que el año sea `>= 2025` y solo pide mes/día si el año leído no es el centinela 2026. Para el inciso c) implementa la condición de verano de **dos formas simultáneas**: una función `esVerano(f: fecha): boolean` (no usada en el programa principal) y un procedimiento equivalente `esVerano2(f: fecha; var esV: boolean)` (el que efectivamente se invoca), además de `esPrimeros15DeAbril`. Es la misma dualidad función/procedimiento-por-referencia que se practicó en la Práctica 6.

## Ejercicio 5 — Cadena de bicicleterías `AYP1-P7-EJ05`

> La casa central de una cadena de bicicleterías desea procesar la información de las ventas de cada mes del año 2025, de cada una de sus 6 sucursales. La información correspondiente a cada mes por cada sucursal es: cantidad de bicicletas vendidas, monto total facturado, cantidad de bicicletas defectuosas, y monto total devuelto por bicicletas defectuosas. Implementar un programa que lea y procese esa información e imprima: a. La sucursal con menor cantidad de bicicletas defectuosas. b. Para cada sucursal, el mes en que más bicicletas vendió. c. La ganancia promedio del mes de abril entre todas las sucursales (ganancia = monto total facturado − monto total devuelto por bicicletas defectuosas).

- **Código:** [`ejercicio5.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio5.pas) (programa `Bicicleterias`)
- **Estado:** resuelto
- **Enfoque:** no usa un `record` (los cuatro datos de cada mes se pasan como parámetros sueltos, no agrupados), pero sí sigue la modularización pedida por el enunciado general de la práctica: `leerDatosMes` lee los cuatro valores de un mes; `procesarSucursal` recorre los 12 meses de una sucursal con un `for` interno, acumulando el total de defectuosas (inciso a), el mes de mayor venta (inciso b) y sumando la ganancia de abril **directamente sobre el acumulador global** `gananciaAbril` recibido por referencia (inciso c, acumulado a través de las 6 llamadas a `procesarSucursal`); `actualizarMinimo` aplica el patrón de mínimo de la Práctica 5 para encontrar la sucursal con menos defectuosas.

## Ejercicio 6 — Radares de velocidad `AYP1-P7-EJ06`

> Se desea procesar la información de todos los radares de velocidad que posee la ciudad de La Plata en un día. Para ello se lee de cada radar: código de radar, velocidad máxima permitida y cantidad de vehículos registrados, y para cada vehículo en cada radar, se lee patente y velocidad. La lectura finaliza cuando se lee el código de radar -1. Se pide calcular e informar: a. Para cada radar, la velocidad promedio de los automóviles. b. Para cada radar, la cantidad de vehículos que fueron multados. c. La patente del vehículo con mayor velocidad y la patente del vehículo con menor velocidad.

- **Código:** [`ejercicio6.pas`](../../../codigo/soluciones/algoritmos-y-programacion-1/practica-7/ejercicio6.pas) (programa `Ejercicio6Radar`)
- **Estado:** resuelto
- **Enfoque:** es el ejercicio con más registros anidados de la práctica: define `type radar = record codigo, velocidadMax, cantVehiculos; end;` y `vehiculo = record patente: str20; velocidad: real; end;` (usando un alias `str20 = string[20]` para la patente). `procesarRadar` recorre los vehículos de un radar con `for i := 1 to r.cantVehiculos do`, calculando el promedio del radar (inciso a) y la cantidad de multados comparando contra `r.velocidadMax` (inciso b) dentro del mismo recorrido; `actualizarMaximo`/`actualizarMinimo` (patrón de la Práctica 5, con parámetros por referencia compartidos entre **todos** los radares, no reiniciados en cada llamada a `procesarRadar`) acumulan la patente de mayor y menor velocidad global (inciso c). El programa principal usa una bandera `hayVehiculos` para evitar informar patentes si nunca se leyó ningún vehículo.
