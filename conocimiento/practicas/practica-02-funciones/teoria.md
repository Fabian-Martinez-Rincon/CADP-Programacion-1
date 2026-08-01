---
id: "CADP-P02-TEORIA"
titulo: "Funciones, procedimientos, parámetros y alcance de variables"
slug: "practica-02-funciones-teoria"
tipo: "teoria"
unidad: 2
tema: "funciones-y-procedimientos"
subtemas:
  - "procedimientos"
  - "funciones"
  - "parametros-por-valor"
  - "parametros-por-referencia"
  - "alcance-de-variables"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-02-funciones/Redictado CADP 2020 - Practica 2 - Funciones y procedimientos.pdf"
    paginas: "1-6"
  - archivo: "../../../fuentes/practicas/practica-02-funciones/1.txt"
  - archivo: "../../../fuentes/practicas/practica-02-funciones/2.txt"
  - archivo: "../../../fuentes/practicas/practica-02-funciones/3- Modularizacion-Concepto-Ideas.ppt"
  - archivo: "../../../fuentes/practicas/practica-02-funciones/4- Procedure-Function-Comunicacion-Ideas.ppt"
  - archivo: "../../../fuentes/practicas/practica-02-funciones/5- Modularización - Ejercitación-Ideas.ppt"
prerrequisitos:
  - "estructuras-de-control"
  - "tipos-de-datos"
relacionados:
  - "../practica-01-estructuras-de-control/teoria.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-02-funciones/3.pas"
---

# Funciones, procedimientos, parámetros y alcance de variables

> [!WARNING]
> Las tres presentaciones de esta unidad (`3- Modularizacion-Concepto-Ideas.ppt`, `4- Procedure-Function-Comunicacion-Ideas.ppt`, `5- Modularización - Ejercitación-Ideas.ppt`) están en formato binario PowerPoint antiguo y no se pudieron extraer con las herramientas disponibles. Se conservan íntegras en `fuentes/` y quedan `pendiente-revision`. A juzgar por sus títulos cubrían, en este orden: el concepto de modularización, la comunicación entre `procedure`/`function` (es decir, parámetros) y una tanda de ejercitación — que coincide razonablemente con el contenido reconstruido más abajo a partir del PDF, aunque con el detalle y los ejemplos propios de la presentación fuera de alcance.

## De dónde sale esta teoría

A diferencia de las Prácticas 0 y 1, el PDF de esta unidad no es sólo una lista de enunciados: los primeros seis ejercicios son en su mayoría **preguntas de análisis** ("¿qué imprime?", "¿cuál es el error?"), no "escribir un programa". Eso significa que la propia guía contiene, en sus respuestas esperadas, contenido conceptual real sobre alcance de variables y sobre errores comunes de modularización. Esta sección reconstruye esos conceptos a partir de esos ejercicios, verificando cada afirmación compilando (y, en dos casos, ejecutando) el código correspondiente con Free Pascal 3.2.2 — no se repite aquí lo que ya está en `ejercicios.md`, sólo se explica el concepto general que cada caso ilustra.

## Alcance (scope) de variables: una variable local oculta a la global con el mismo nombre

El ejercicio 1 (fuente: `1.txt`, coincide con la página 1 del PDF) declara una variable global `b` y, dentro de un `procedure`, una variable local que **también se llama `b`**:

```pas
program alcance1;
var a,b: integer;
 procedure uno;
 var b: integer;   { esta 'b' es local a 'uno' y oculta a la 'b' global mientras 'uno' se ejecuta }
 begin
   b := 3;
   writeln(b);
 end;
begin
 a:= 1;
 b:= 2;
 uno;
 writeln(b, a);
end.
```

Se compiló y ejecutó este programa exactamente así (no hace falta ninguna entrada por teclado). La salida real fue:

```
3
21
```

Es decir: dentro de `uno`, `b` vale 3 (la local); al volver al programa principal, la `b` global sigue valiendo 2 — nunca se modificó — por lo que `writeln(b, a)` imprime `2` seguido de `1` sin separador (`21`). Esto confirma la regla: **una variable local con el mismo nombre que una global no es la misma variable; mientras el módulo se ejecuta, todas las referencias a ese nombre apuntan a la local.**

## Una variable local no existe fuera de su módulo

El ejercicio 2 (fuente: `2.txt`, coincide con la página 1 del PDF) es casi idéntico al anterior, pero **sin** declarar `b` como variable global — sólo existe como variable local de `uno`:

```pas
program alcance;
var a: integer;
 procedure uno;
 var b: integer;
 begin
   b:= 2;
   writeln(b);
 end;
begin
 a:= 1;
 uno;
 writeln(a, b);   { error: 'b' no existe acá }
end.
```

Se intentó compilar: Free Pascal rechaza el programa con `Error: Identifier not found "b"` en la línea del `writeln(a, b)` final. Confirma la otra cara de la regla anterior: una variable declarada dentro de un `procedure` **sólo existe mientras ese módulo se ejecuta**; fuera de él (incluido el programa principal que lo llamó) el identificador no existe.

## Parámetros por valor vs. por referencia (`var`)

El ejercicio 3 del PDF (páginas 1-2) usa el mismo procedimiento con tres encabezados distintos para mostrar el efecto de cada tipo de parámetro:

| Encabezado | Efecto |
|---|---|
| `procedure suma(num1: integer; var num2: integer);` | `num1` es una copia (por valor): cambiarlo adentro no afecta al llamador. `num2` es por referencia (`var`): cambiarlo adentro **sí** modifica la variable que se pasó como argumento. |
| `procedure suma(num1: integer; num2: integer);` (ambos por valor) | Ningún cambio hecho dentro del procedimiento se refleja afuera: cada llamada opera sobre copias frescas. |
| `procedure suma(var num1: integer; var num2: integer);` (ambos por referencia) | Si el procedimiento se llama con la misma variable en ambos parámetros (como ocurre en este ejercicio, `suma(i,x)` dentro de un `for`), ambos nombres pasan a ser alias de la misma variable dentro del módulo, lo que puede producir un comportamiento muy distinto al esperado. |

El ejercicio 7 de la Práctica 2 (`Realizar un módulo que reciba un par de números...`) es un buen ejemplo aplicado de por qué "retornar" un resultado desde un `procedure` casi siempre requiere un parámetro `var`: si el parámetro de salida se declara por valor, el resultado calculado adentro del módulo **se pierde** al volver — ver el caso de [`Adicional4.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/Adicional4.pas) en `ejercicios.md`, donde falta justamente el `var` en el parámetro que debía devolver el diámetro.

## Errores comunes al declarar y llamar módulos

Los ejercicios 5 y 6 del PDF piden explícitamente encontrar errores en programas dados (6 y 5 errores respectivamente). Son, en los hechos, una lista de errores típicos de esta unidad. Categorías que aparecen:

- **Encabezado de `procedure`/`function` sin `;` final** antes de la palabra `var` o `begin` que sigue (ver ejercicio 5 de esta guía, y el mismo error real y verificado en [`5.pas`](../../../codigo/soluciones/practicas/practica-02-funciones/5.pas): `Syntax error, ";" expected but "VAR" found`).
- **Pasar una constante literal donde el parámetro es `var`** (por ejemplo `sumar(a, b, 0)` cuando el tercer parámetro es `var c: integer`): Pascal exige una variable, no una expresión, para un argumento `var`.
- **Cambiar el tipo de una variable entre su declaración global y el parámetro de un módulo** (por ejemplo declarar `salario: real` en el programa principal pero `salario: integer` en el parámetro del procedimiento que la lee) — Pascal no permite eso; cada uso debe ser consistente con el tipo declarado.
- **Usar una variable dentro de un módulo sin haberla declarado ni recibido como parámetro** (por ejemplo `ok`, `result` o `i` usadas en un `procedure` sin `var` propio ni parámetro).
- **No inicializar un acumulador o un máximo/mínimo antes de usarlo** — tema que reaparece en varias soluciones de esta misma práctica (ver `ejercicios.md`, ejercicio 9).

Ver la transcripción completa de ambas listas de errores en `ejercicios.md` (ejercicios 5 y 6).

## Ver también

- [`ejercicios.md`](ejercicios.md) — las 18 consignas de esta práctica con su solución.
- [Práctica 1 — Estructuras de control](../practica-01-estructuras-de-control/teoria.md)
- [Práctica 3 — Registros](../practica-03-registros/teoria.md), donde los módulos empiezan a recibir registros completos como parámetro.
