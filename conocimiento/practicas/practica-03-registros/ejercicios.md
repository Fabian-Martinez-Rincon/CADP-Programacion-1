---
id: "CADP-P03-EJERCICIOS"
titulo: "Ejercicios — Práctica 3: Registros"
slug: "practica-03-registros-ejercicios"
tipo: "ejercicio"
unidad: 3
tema: "registros"
subtemas:
  - "record"
  - "campos"
  - "registros-anidados"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-03-registros/Redictado CADP 2020 - Práctica 3 - Registros.pdf"
    paginas: "1-4"
prerrequisitos:
  - "funciones-y-procedimientos"
  - "estructuras-de-control"
  - "tipos-de-datos"
relacionados:
  - "teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-03-registros/"
---

# Ejercicios — Práctica 3: Registros

Todos los enunciados se transcriben literalmente del PDF fuente. Todas las soluciones se compilaron con Free Pascal 3.2.2 como parte de esta conversión; los mensajes de error que se citan textualmente son reales.

## Ejercicio 1 — Alumnos: código, nombre, promedio

**Enunciado** (con el programa base dado, que declara `alumno = record codigo: integer; nombre: str20; promedio: real; end;` y un `procedure leer` ya resuelto):

> a. Completar el programa principal para que lea información de alumnos (código, nombre, promedio) e informe la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0, que no debe procesarse. Nota: utilizar el módulo leer.
> b. Modificar al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe también el nombre del alumno con mejor promedio.

**Soluciones:** [`1.pas`](../../../codigo/soluciones/practicas/practica-03-registros/1.pas) (parte a) y [`1.b.pas`](../../../codigo/soluciones/practicas/practica-03-registros/1.b.pas) (partes a y b)

- `1.pas` — **estado: posiblemente-incorrecto.** El patrón de lectura está bien resuelto (`leer(a,cant_alumnos)` antes del `while`, y de nuevo adentro — el centinela código 0 no se cuenta porque `leer` sólo incrementa `cant_alumnos` cuando `codigo<>0`). Pero el archivo **no compila**, por una errata: en el `type` declara `tr20 = string[20];` y dos líneas después usa `nombre: str20` (sin la "t") — un identificador que no existe. Error real de Free Pascal: `Error: Identifier not found "str20"`.
- `1.b.pas` — **estado: resuelto.** Mismo programa con la errata corregida (`str20` declarado y usado consistentemente) y agrega la parte (b) con un procedimiento adicional (llamado, algo confusamente, `promedio` — igual que el campo `promedio` del registro y que uno de sus propios parámetros) que compara y actualiza el alumno de mejor promedio en cada lectura. Compila y su lógica es correcta.

## Ejercicio 2 — Casamientos en La Plata (2017)

**Enunciado:**

> El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos durante el año 2017.
> a. Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada casamiento.
> b. Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el definido en "a.".
> c. Implementar un programa que lea la fecha de todos los casamientos realizados en 2017. La lectura finaliza al ingresar el año 2018, que no debe procesarse, e informe la cantidad de casamientos realizados durante los meses de verano (enero, febrero y marzo) y la cantidad de casamientos realizados en los primeros 10 días de cada mes.

**Soluciones:** [`2.pas`](../../../codigo/soluciones/practicas/practica-03-registros/2.pas) (a), [`2b.pas`](../../../codigo/soluciones/practicas/practica-03-registros/2b.pas) (a+b), [`2c.pas`](../../../codigo/soluciones/practicas/practica-03-registros/2c.pas) (intento de a+b+c)

- `2.pas` — **estado: resuelto (sólo parte a).** Define `fecha = record dia: 1..30; mes: 1..12; anio: integer; end;`. El cuerpo principal es sólo `writeln('Hola mundo')`, sin usar el tipo todavía — es consistente con que esta parte pide únicamente "analizar y definir un tipo de dato adecuado".
- `2b.pas` — **estado: resuelto (parte b).** Agrega `procedure leer(var fecha_casamiento: fecha)` que lee los tres campos; el programa principal lo llama una vez.
- `2c.pas` — **estado: parcial, con la limitación anotada por el propio autor.** El programa lee fechas hasta año 2018 (correctamente, sin procesar el 2018) mediante `leer_por_anio`. La cuenta de casamientos de verano está declarada en un procedimiento aparte (`verano`), pero **la llamada a ese procedimiento está comentada** (`//verano(fecha_casamiento.mes,casamietos_verano);`), justo encima de un comentario del propio autor que dice `//funcion que no funciona`. El contador de casamientos de verano queda entonces siempre en 0. La cuenta de casamientos en los primeros 10 días de cada mes no se implementó.

## Ejercicio 3 — Escuelas primarias de la provincia (relación docente-alumno)

**Enunciado:**

> El Ministerio de Educación desea realizar un relevamiento de las 2400 escuelas primarias de la provincia de Bs. As., con el objetivo de evaluar si se cumple la proporción de alumnos por docente calculada por la UNESCO para el año 2015 (1 docente cada 23,435 alumnos)... determinar: cantidad de escuelas de La Plata con relación alumnos/docente superior a la sugerida; CUE y nombre de las dos escuelas con mejor relación. El programa debe utilizar: a. un módulo para leer la escuela; b. un módulo para la relación docente-alumno.

**Soluciones:** [`3.pas`](../../../codigo/soluciones/practicas/practica-03-registros/3.pas) / [`3a.pas`](../../../codigo/soluciones/practicas/practica-03-registros/3a.pas) (idénticos, sólo el módulo de lectura) y [`3b.pas`](../../../codigo/soluciones/practicas/practica-03-registros/3b.pas) (versión más completa)

> [!WARNING]
> `3.pas` y `3a.pas` son **archivos duplicados**: contienen exactamente el mismo código. Se documentan una sola vez.

- `3.pas` / `3a.pas` — **estado: parcial.** Definen el registro `colegio` (CUE, nombre, docentes, alumnos, localidad) y el módulo de lectura pedido en (a). El resto del programa principal está comentado (los `writeln` que mostrarían los datos leídos); no hay bucle ni cálculo de relación.
- `3b.pas` — **estado: parcial.** Agrega el módulo de relación docente-alumno (b) y un `for i:=0 to total_escuelas` que recorre las escuelas contando cuántas de La Plata superan la relación de UNESCO (23.435) — resuelve el primer punto pedido. El bucle usa `0 to total_escuelas` (2401 vueltas, una de más respecto a las 2400 escuelas). No implementa el segundo punto (CUE y nombre de las dos escuelas con mejor relación).

## Ejercicio 4 — Facturación de una compañía de telefonía celular

**Enunciado:**

> Una compañía de telefonía celular debe realizar la facturación mensual de sus 9300 clientes... Para cada cliente se conoce su código y cantidad de líneas. De cada línea: número de teléfono, minutos consumidos, MB consumidos. a. Un módulo que lea la información de una línea. b. Un módulo que reciba los datos de un cliente, lea todas sus líneas (usando el de a.) y retorne el total de minutos y de MB a facturar. Cada minuto cuesta \$3,40 y cada MB \$1,35.

**Soluciones:** [`4a FMR.pas`](<../../../codigo/soluciones/practicas/practica-03-registros/4a FMR.pas>) (a) y [`4b FMR.pas`](<../../../codigo/soluciones/practicas/practica-03-registros/4b FMR.pas>) (a+b) — **estado: resuelto**

`4a FMR.pas` define `lineas` (teléfono, minutos, MB) y el módulo de lectura de una línea. `4b FMR.pas` agrega `cliente` (código, cantidad de líneas) y, con un `for i:=1 to esclavo.cant_lineas`, lee todas las líneas de un cliente y acumula minutos y MB totales, aplicando correctamente las tarifas dadas (×3.4 y ×1.35). Resuelve un cliente por ejecución (no agrega el bucle exterior sobre los 9300 clientes de la consigna general), pero los dos módulos pedidos en (a) y (b) están completos y son correctos.

## Ejercicio 5 — Autos de una concesionaria

**Enunciado:**

> Realizar un programa que lea información de autos (marca, modelo, precio) en venta. La lectura finaliza con la marca "ZZZ", que no debe procesarse. Los datos vienen ordenados por marca. Informar: precio promedio por marca; marca y modelo del auto más caro.

**Solución:** [`5 fabian.pas`](<../../../codigo/soluciones/practicas/practica-03-registros/5 fabian.pas>) — **estado: posiblemente-incorrecto**

Dos problemas confirmados al leer el código:

- El centinela `'ZZZ'` **sí se procesa**: el `while auto.marca <> 'ZZZ' do` lee y acumula el auto dentro del propio cuerpo del bucle, así que el registro con marca `'ZZZ'` se suma al conteo y al precio total antes de que el `while` vuelva a evaluar la condición — al revés de lo que pide el enunciado.
- El "auto más caro" nunca se actualiza fuera del procedimiento que lo calcula: `procedure auto_caro(autosF2:autos; auto_mas_caroF:real)` recibe `auto_mas_caroF` **por valor** (sin `var`), así que cualquier cambio que haga adentro se pierde al volver — el `auto_mas_caro` del programa principal queda siempre en su valor inicial (-1). Le falta el `var` en ese parámetro (mismo tema que en el ejercicio 7 de la Práctica 2 y en `Adicional4.pas` de esa misma práctica).

No se calcula, además, el precio promedio *por marca* (el enunciado pide un promedio por cada marca, ya que los datos vienen agrupados por marca; el código calcula un único promedio general).

## Ejercicio 6 — Microprocesadores en stock

**Enunciado:**

> Una empresa importadora de microprocesadores... marca, línea, cantidad de cores, velocidad del reloj (Ghz), tamaño de transistores (nm). Se lee de forma consecutiva por marca; termina con 0 cores (no se procesa). Informar: marca y línea de los procesadores de más de 2 cores con transistores de a lo sumo 22 nm; las dos marcas con mayor cantidad de procesadores de 14 nm; cantidad de procesadores multicore de Intel o AMD con reloj ≥ 2 Ghz.

**Solución:** [`6 Fabian.pas`](<../../../codigo/soluciones/practicas/practica-03-registros/6 Fabian.pas>) — **estado: posiblemente-incorrecto**

Tres problemas confirmados:

- El primer punto usa `tamanio_transistores<22` (estrictamente menor), pero el enunciado pide "a lo sumo 22 nm" (`<=22`): un procesador de exactamente 22 nm queda afuera cuando debería incluirse. El mensaje impreso además dice "al menos transistores de 22nm", que no coincide ni con el enunciado ni con la condición real del código.
- El segundo punto (las dos marcas con más procesadores de 14 nm) **no está implementado**: el procedimiento `mayor_cant_procesadores` tiene todo el cuerpo comentado, y lo que queda comentado adentro ni siquiera es código de este ejercicio — es un fragmento pegado por error del ejercicio 11 de la Práctica 2 (usa identificadores como `numero_inscripcion2`, que no existen acá).
- El patrón de lectura del centinela lee un procesador antes del `while` y otro más adentro del `while` antes de procesar — el efecto es que el primer procesador leído nunca se procesa (se descarta al leer el segundo) y, en cambio, si el registro con 0 cores llega, sí llega a procesarse una vez antes de que el bucle corte.

El tercer punto (multicore Intel/AMD con reloj ≥ 2Ghz) sí está resuelto correctamente en el procedimiento `procesadores_multicore`.

## Ejercicio 7 — Centros de investigación de universidades

**Enunciado:**

> Realizar un programa que lea información de centros de investigación (nombre abreviado, universidad, cantidad de investigadores, cantidad de becarios). Se lee de forma consecutiva por universidad; termina con un centro de 0 investigadores (no se procesa). Informar: cantidad total de centros por universidad; universidad con más investigadores en sus centros; los dos centros con menos becarios.

**Solución:** [`7 fabian.pas`](<../../../codigo/soluciones/practicas/practica-03-registros/7 fabian.pas>) — **estado: posiblemente-incorrecto — no compila**

El módulo de lectura y el de "universidad con más investigadores" están bien planteados. El de "los dos centros con menos becarios" (`centros_menores_becarios`) tiene una confusión de variables: sus parámetros `menor_becarios1`/`menor_becarios2` se declaran de tipo `str20` (para un nombre), pero el código les asigna primero `centro_estudiantes.cantidad_becarios` (un `integer`) y después, en la misma rama, `centro_estudiantes.universidad` (un `string`) — dos tipos distintos a la misma variable. Además, la llamada a este procedimiento tiene un `:` de más (`centros_menores_becarios:(...)` en vez de `centros_menores_becarios(...)`). Free Pascal rechaza el archivo con varios `Error: Incompatible types` y finalmente `Fatal: Syntax error, ";" expected but ":" found`. No se cuenta la cantidad total de centros por universidad (primer punto pedido).

## Ejercicio 8 — Proyectos "Jóvenes y Memoria"

**Enunciado:**

> La Comisión Provincial por la Memoria desea analizar los proyectos presentados en "Jóvenes y Memoria" (2020): código, título, docente coordinador (DNI, nombre, apellido, email), cantidad de alumnos participantes, escuela y localidad. Termina con código -1 (no se procesa). Informar: cantidad total de escuelas participantes y por localidad; nombres de las dos escuelas con más alumnos participantes; título de los proyectos de Daireaux cuyo código tiene igual cantidad de dígitos pares e impares.

**Estado: sin-solucion.**

> [!WARNING]
> El archivo [`8.pas`](../../../codigo/soluciones/practicas/practica-03-registros/8.pas) — el nombre "natural" para este ejercicio — **no lo resuelve**. Su encabezado de comentario cita correctamente este enunciado (proyectos, escuelas, Daireaux), pero el código que sigue es una copia exacta, línea por línea, de [`7 fabian.pas`](<../../../codigo/soluciones/practicas/practica-03-registros/7 fabian.pas>) (centros de investigación, universidades, investigadores, becarios) — no tiene ningún registro `proyecto`, ninguna referencia a escuela, localidad ni Daireaux. Se compiló y da exactamente los mismos errores que `7 fabian.pas` (`Incompatible types`, `Wrong number of parameters`, `; expected but : found`). No hay, en esta carpeta, ninguna solución real del ejercicio 8; se deja documentado como archivo mal correspondido en vez de vincularlo por su nombre.

## Ejercicios adicionales

Ninguno de los tres ejercicios adicionales de la guía tiene un archivo `.pas` correspondiente en esta carpeta. Se transcriben igualmente los enunciados, con **estado: sin-solucion**.

### 1. Intendentes electos (provincia de Buenos Aires)

> Realizar un programa que lea información de los candidatos ganadores de las últimas elecciones a intendente de la provincia de Buenos Aires. Para cada candidato se lee: localidad, apellido del candidato, cantidad de votos obtenidos y cantidad de votantes de la localidad. La lectura finaliza al leer la localidad 'Zárate', que debe procesarse. Informar: el intendente que obtuvo la mayor cantidad de votos; el intendente que obtuvo el mayor porcentaje de votos.

### 2. Especies de plantas (UNLP)

> Un centro de investigación de la UNLP está organizando la información de las 320 especies de plantas con las que trabajan. Para cada especie: nombre científico, tiempo promedio de vida (meses), tipo de planta, clima, y países donde se la encuentra (la lectura de países de cada planta finaliza con el país 'zzz'). La información se ingresa ordenada por tipo de planta. Informar: el tipo de planta con menos plantas; el tiempo promedio de vida de las plantas de cada tipo; el nombre científico de las dos plantas más longevas; los nombres de las plantas nativas de Argentina en regiones de clima subtropical; el nombre de la planta que se encuentra en más países.

### 3. Vuelos internacionales

> Una compañía de vuelos internacionales está analizando la información de todos los vuelos realizados por sus aviones durante 2019: código de avión, país de salida, país de llegada, kilómetros recorridos, porcentaje de ocupación. Se ingresa ordenado por código de avión y, para cada avión, por país de salida. Termina con el código 44. Informar: los dos aviones que más y que menos kilómetros recorrieron; el avión que salió desde más países distintos; cantidad de vuelos de más de 5.000 km que no alcanzaron 60% de ocupación; cantidad de vuelos de menos de 10.000 km que llegaron a Australia o Nueva Zelanda.

## Resumen de estados

| Ejercicio | Archivo(s) | Estado |
|---|---|---|
| 1 | `1.pas` / `1.b.pas` | posiblemente-incorrecto (no compila, errata) / resuelto |
| 2 | `2.pas` / `2b.pas` / `2c.pas` | resuelto (a) / resuelto (a+b) / parcial (verano deshabilitado por el propio autor) |
| 3 | `3.pas`=`3a.pas` / `3b.pas` | parcial / parcial |
| 4 | `4a FMR.pas` / `4b FMR.pas` | resuelto / resuelto |
| 5 | `5 fabian.pas` | posiblemente-incorrecto |
| 6 | `6 Fabian.pas` | posiblemente-incorrecto |
| 7 | `7 fabian.pas` | posiblemente-incorrecto (no compila) |
| 8 | `8.pas` (no corresponde) | sin-solucion |
| Adicional 1-3 | — | sin-solucion |
