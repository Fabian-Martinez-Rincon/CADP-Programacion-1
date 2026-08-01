---
id: "CADP-P03-TEORIA"
titulo: "Registros (record): concepto, declaración, operaciones y anidamiento"
slug: "practica-03-registros-teoria"
tipo: "teoria"
unidad: 3
tema: "registros"
subtemas:
  - "record"
  - "campos"
  - "with"
  - "registros-anidados"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-03-registros/5-6-Estructuras-De-Datos-Registros-Ideas.pptx"
    paginas: "diapositivas 1-30"
  - archivo: "../../../fuentes/practicas/practica-03-registros/Redictado CADP 2020 - Práctica 3 - Registros.pdf"
    paginas: "1-4"
prerrequisitos:
  - "funciones-y-procedimientos"
  - "estructuras-de-control"
  - "tipos-de-datos"
relacionados:
  - "../practica-02-funciones/teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-03-registros/1.b.pas"
  - "../../../codigo/soluciones/practicas/practica-03-registros/2c.pas"
---

# Registros (record)

Esta unidad es, dentro del bloque asignado a este agente (Prácticas 0 a 3), la única cuya presentación teórica original **sí pudo leerse**: `5-6-Estructuras-De-Datos-Registros-Ideas.pptx` está en formato `.pptx` (XML moderno), y se extrajo su texto completo con un script. La extracción es mecánica (texto de cada diapositiva, sin números ni formato visual) pero fiel al contenido — no es un resumen ni una reconstrucción. Lo que sigue reorganiza ese texto en secciones, en el mismo orden en que aparece en la presentación, y agrega los bloques de código Pascal tal como figuran en ella.

## Índice

- [Tipos de datos vistos hasta el momento](#tipos-de-datos-vistos-hasta-el-momento)
- [Estructura de datos: concepto y clasificación](#estructura-de-datos-concepto-y-clasificación)
- [Tipo de dato registro: motivación y concepto](#tipo-de-dato-registro-motivación-y-concepto)
- [Declaración de un registro en Pascal](#declaración-de-un-registro-en-pascal)
- [Características del tipo registro](#características-del-tipo-registro)
- [Operaciones sobre un registro](#operaciones-sobre-un-registro)
- [Leer e imprimir un registro](#leer-e-imprimir-un-registro)
- [Un registro dentro de otro registro](#un-registro-dentro-de-otro-registro)
- [Truco práctico: `with`](#truco-práctico-with)
- [Ejemplo completo de ejercitación](#ejemplo-completo-de-ejercitación-jugetería-on-line)
- [Para resolver en clase (enunciados de la propia presentación)](#para-resolver-en-clase-enunciados-de-la-propia-presentación)

## Tipos de datos vistos hasta el momento

La presentación arranca retomando la clasificación de tipos de dato ya vista en las prácticas anteriores, para ubicar al registro dentro de ella:

- **Simples, definidos por el lenguaje**: enteros (`Integer`), caracteres (`Char`), lógicos (`Boolean`), reales (`Real`).
- **Definidos por el usuario**: subrango (de `Integer` o `Char`) y cadena de caracteres (`String`).

Después de presentar el registro, la misma clasificación se repite agregando una fila: **Registros (`Record`)**, como un nuevo tipo definido por el usuario.

## Estructura de datos: concepto y clasificación

**Motivación** (ejemplo de la presentación): se quiere representar la información de los estudiantes de una facultad. Preguntas guía: qué datos hacen falta para representar a un estudiante (DNI, apellido y nombre, fecha de nacimiento, etc.), que todos esos datos juntos representan *a* un estudiante, cuántos estudiantes hay que representar, y si algún tipo de dato visto hasta el momento alcanza para eso.

**Concepto:**

> Una estructura de datos es un conjunto de variables (que podrían ser de distintos tipos) que poseen una relación lógica o conceptual entre sí y que se puede reconocer como un todo, bajo un nombre único.

Permite representar objetos del mundo real más complejos que un número, un carácter o una palabra sueltos (ejemplos de la presentación: la lista de empleados de una empresa, el catálogo de un sitio de compras on-line, la carta de un bar).

**Clasificación** (cuatro criterios independientes):

| Criterio | Valores |
|---|---|
| Según sus elementos | **Homogénea** (todos los elementos son del mismo tipo) / **Heterogénea** (pueden ser de distinto tipo) |
| Según su ocupación en memoria | **Estática** (la cantidad de elementos no cambia en tiempo de ejecución) / **Dinámica** (puede cambiar) |
| Según su forma de acceso | **Directo** (se accede a un elemento sin pasar por los demás) / **Secuencial** (puede requerir pasar por otros elementos) |
| Según la relación entre sus elementos | **Lineal** (cada elemento tiene 0 o 1 sucesor y 0 o 1 predecesor) / **No lineal** (puede tener varios) |

## Tipo de dato registro: motivación y concepto

**Motivación** (ejemplos de la presentación): representar la información de un estudiante, los datos de una llamada telefónica, los datos de un vehículo. En cada caso hace falta agrupar varios datos de distinto tipo bajo un mismo nombre (DNI/apellido/nombre/fecha de nacimiento del estudiante; origen/destino/duración de la llamada; patente/modelo/marca del vehículo).

**Concepto:**

> El tipo de dato registro (`record`) permite agrupar un conjunto de campos, con igual o diferente tipo de dato, bajo un nombre único.

Ejemplos de registros que da la presentación (sólo enumera los campos, sin código todavía):

- `grúa`: patente, marca, modelo, habilitación, km, peso.
- `auto`: marca, modelo, velocidad, categoría.
- `empleado`: DNI, apellido, nombre, estudios, CUIL/CUIT.
- `piloto`: DNI, apellido, nombre, horas de vuelo, CUIL/CUIT, fecha de nacimiento.

## Declaración de un registro en Pascal

```pas
type
  identificador = record;
    campo1: tipo de dato;
    campo2: tipo de dato;
    campo3: tipo de dato;
    …
    campoN: tipo de dato;
  end;
var
  r1: identificador;
  r2: identificador;
```

Consideraciones que da la presentación:

- "Identificador" es el nombre que se elige para el tipo registro.
- Se debe especificar la lista de campos que lo componen y el tipo de dato de cada uno; cada campo puede ser de cualquier tipo de dato conocido (incluido otro `record`, ver más abajo).
- Cada campo puede referenciarse individualmente.
- Se declaran variables del tipo "identificador" como con cualquier otro tipo.

> [!WARNING]
> La presentación escribe consistentemente `record;` con punto y coma justo después de la palabra `record` (por ejemplo `identificador = record; campo1: ...`). En Pascal estándar no lleva punto y coma ahí (`identificador = record campo1: ...`); se transcribe tal cual figura en la fuente sin corregirlo, ya que aparece así en todos los ejemplos de la presentación (diapositivas 13, 17, 18, 19, 20, 21, 22, 25) y podría ser un hábito del docente más que un error puntual. Ver también el ejercicio 1 de `ejercicios.md`, donde un error de tipeo real relacionado con esta misma declaración impidió compilar una de las soluciones.

## Características del tipo registro

Según cada uno de los cuatro criterios de clasificación vistos más arriba, un `record`:

- **Según sus elementos: heterogénea.** Cada campo puede ser del mismo o de distinto tipo de dato.
- **Según el acceso: directo.** Cada campo se referencia directamente, sin pasar por los demás.
- **Según su ocupación en memoria: estática.** El tamaño en memoria de una variable `record` es la suma de sus campos, fijo desde la declaración.
- **Según la relación entre sus elementos: no aplica.** No hay una relación de orden entre los campos; sólo el hecho de que, juntos, componen el registro.

## Operaciones sobre un registro

Hay dos niveles de operaciones distintos:

1. **Sobre la variable `record` completa**: la única operación permitida es la **asignación** (`:=`), y sólo es válida si ambas variables son del mismo tipo de registro.

   ```pas
   type
     estudiante = record;
       legajo: integer;
       nombre: string[20];
       apellido: string[20];
       fecha_insc: string[10];
       fecha_nac: string[10];
     end;
   var
     e1: estudiante;
     e2: estudiante;
   begin
     …
     e1 := e2;
     …
   end.
   ```

2. **Sobre cada campo individual**, accediendo con el operador punto (`.`): a partir de ahí, las operaciones permitidas son las del tipo de dato de ese campo puntual (por ejemplo, un campo `string` admite `read`; un campo `integer` admite operaciones aritméticas).

   ```pas
   var
     e: estudiante;
   begin
     …
     e.legajo := 123456;
     …
     e.fecha_insc := "01/02/2020";
     …
     read(e.nombre);
     …
     if (e.fecha_insc > "01/02/2020") then
       …
   end.
   ```

## Leer e imprimir un registro

Un error frecuente que la presentación marca explícitamente: **un registro no admite `read`/`readln`/`write`/`writeln` directamente sobre la variable completa** (`read(e)` / `writeln(e)` están mal); sí lo admite cada campo por separado. Por eso conviene modularizar la lectura y la impresión de un registro completo en un `procedure` dedicado:

```pas
type
  estudiante = record;
    legajo: integer;
    nombre: string[20];
    apellido: string[20];
    fecha_insc: string[10];
    fecha_nac: string[10];
  end;

procedure leer_estudiante (var e: estudiante);
begin
  readln(e.legajo);
  readln(e.apellido);
  readln(e.nombre);
  readln(e.fecha_nac);
  readln(e.fecha_insc);
end.

procedure imprimir(e: estudiante);
begin
  writeln(e.legajo);
  writeln(e.apellido);
  writeln(e.nombre);
  writeln(e.fecha_nac);
  writeln(e.fecha_insc);
end.
```

La presentación aclara que la lectura de los campos **no necesita** respetar el orden en que se declararon en el `type`.

## Un registro dentro de otro registro

Un campo puede ser, a su vez, de tipo `record`:

```pas
type
  fecha = record;
    dia: 1..31;   { subrango }
    mes: 1..12;   { subrango }
    año: 1900..3000;   { subrango }
  end;
  estudiante = record;
    legajo: integer;
    nombre: string[20];
    apellido: string[20];
    fecha_insc: fecha;
    fecha_nac: fecha;
  end;
```

Dos consecuencias que la presentación marca como errores frecuentes:

- **No se puede asignar un valor directamente a un campo que es, a su vez, un registro** (`e.fecha_insc := "01/02/2020"` está mal, porque `fecha_insc` ya no es un `string`, es un `record fecha`). Hay que acceder campo a campo, encadenando el punto: `e.fecha_insc.dia := 1; e.fecha_insc.mes := 2; e.fecha_insc.año := 2020;`.
- Por la misma razón, **tampoco se puede leer/imprimir un campo-registro de un solo `read`/`write`** (`read(e.fecha_nac)` está mal); hay que leer/imprimir cada sub-campo (`readln(e.fecha_nac.dia); readln(e.fecha_nac.mes); readln(e.fecha_nac.año);` — funciona, pero la presentación aclara que "es correcto, pero se puede mejorar. Modularizando.").

La forma recomendada es un procedimiento aparte para el sub-registro, que el procedimiento del registro contenedor invoca:

```pas
procedure leer_estudiante (var e: estudiante);
begin
  readln(e.legajo);
  readln(e.apellido);
  readln(e.nombre);
  leer_fecha(e.fecha_nac);
  leer_fecha(e.fecha_insc);
end.

procedure leer_fecha (var f: fecha);
begin
  readln(f.dia);
  readln(f.mes);
  readln(f.año);
end.
```

("El mismo concepto se aplica a la impresión del registro" — la presentación no repite el código de impresión anidada porque es simétrico al de lectura.)

## Truco práctico: `with`

Cuando un registro tiene varios campos, referenciarlos todos con el prefijo `variable.` se vuelve tedioso. La sentencia `with` permite referenciar la variable registro una sola vez y usar sus campos directamente dentro del bloque:

```pas
procedure leer_fecha (var f: fecha);
begin
  with f do
  begin
    readln(dia);
    readln(mes);
    readln(año);
  end;
end.
```

## Ejemplo completo de ejercitación (jugetería on-line)

La presentación cierra con un ejemplo resuelto de punta a punta (tal como figura, con las erratas de tipeo del original: "jugueteria", "Anio"):

**Enunciado:** "Se leen artículos que una juguetería posee para la venta on-line. De cada articulo se lee: código, descripción, fecha de fabricación, edad recomendada y precio. Se pide informar la descripción para los artículos cuyo precio sea menor a \$500. La lectura finaliza cuando se lee el código 0 (cero)."

```pas
{ declaración de tipos }
type
  { subrangos }
  rango_edades = 0..20;
  rango_dias = 1..31;
  rango_mes = 1..12;
  rango_anios = 1900..3000;
  cadena = string[150];
  fecha = record
    dia: rango_dias;
    mes: rango_mes;
    anio: rango_anios;
  end;
  articulo = record
    cod: integer;
    desc: cadena;
    fecha_fab: fecha;
    edad: rango_edades;
    precio: real;
  end;

{ proceso que lee la fecha }
procedure leer_fecha (var f: fecha);
begin
  writeln('- Fecha de fabricacion.');
  with f do
  begin
    write('  - Dia: ');
    readln(dia);
    write('  - Mes: ');
    readln(mes);
    write('  - Anio: ');
    readln(anio);
  end;
end;

{ proceso que lee un artículo }
procedure leer_articulo (var a: articulo);
begin
  with a do
  begin
    writeln;
    write('- Codigo: ');
    readln(cod);
    if (cod <> 0) then
    begin
      write('- Descripcion: ');
      readln(desc);
      { invocación al proceso que lee la fecha }
      leer_fecha(fecha_fab);
      write('- Edad: ');
      readln(edad);
      write('- Precio: ');
      readln(precio);
    end;
  end;
end;

{ variables del programa principal }
var
  a: articulo;
begin
  { inicializaciones }
  leer_articulo(a);
  while (a.cod <> 0) do
  begin
    if (a.precio < 500) then
    begin
      writeln;
      writeln('---- Articulo con precio menor a 500: ', a.desc);
      writeln;
    end;
    leer_articulo(a);
  end;
  writeln;
  writeln('---- Presione enter para finalizar ----');
  readln;
end.
```

Este ejemplo es, en la propia presentación, la referencia de estilo para los ejercicios de `ejercicios.md`: registro anidado (`articulo` contiene `fecha_fab: fecha`), lectura modularizada con `with`, y corte por centinela (código 0, no se procesa).

## Para resolver en clase (enunciados de la propia presentación)

Las últimas dos diapositivas antes del cierre plantean un ejercicio para resolver en el momento, en dos variantes (no forman parte de la guía en PDF ni tienen solución en el código de esta carpeta — se transcriben acá, como parte de la teoría, y no en `ejercicios.md`, para no mezclarlas con la numeración oficial de la guía):

> Un centro de deportes quiere procesar la información de sus clientes y de los 4 tipos de actividades que ofrece: 1) Musculación, 2) Spinning, 3) Cross Fit, 4) Libre. Para ello, se debe leer y guardar el precio mensual de cada actividad. Además, se debe leer para cada cliente: código de cliente, DNI, apellido, nombre, fecha de nacimiento y el número de actividad elegida (1..4). La lectura finaliza cuando llega el DNI 0. Se pide, informar para cada cliente, el monto a pagar. Se sabe que cada cliente elige una sola actividad. Modularizar su solución.

Variante (segunda diapositiva, dos diferencias resaltadas en negrita en el original): "...la lectura finaliza cuando llega el DNI 0 **y la información se lee ordenada por DNI**... Se sabe que **un cliente puede elegir más de una actividad**. Modularizar su solución."

## Ver también

- [`ejercicios.md`](ejercicios.md) — las 8 consignas numeradas y los 3 ejercicios adicionales de la guía en PDF, con su solución vinculada.
- [Práctica 2 — Funciones y procedimientos](../practica-02-funciones/teoria.md)
