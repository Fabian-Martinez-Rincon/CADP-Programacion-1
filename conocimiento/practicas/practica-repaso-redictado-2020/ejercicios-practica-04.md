---
id: "CADP-REDICTADO2020-EJ04"
titulo: "Redictado 2020 - Repaso Práctica 4 (Vectores)"
slug: "redictado-2020-practica-04"
tipo: "ejercicio"
unidad: 4
tema: "repaso-redictado-2020"
subtemas:
  - "vectores"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/1.docx"
prerrequisitos:
  - "../practica-04-arreglos/ejercicios.md"
relacionados:
  - "../practica-04-arreglos/ejercicios.md"
  - "./README.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/"
---

# Redictado 2020 - Repaso Práctica 4 (Vectores)

Mismos enunciados que [`../practica-04-arreglos/ejercicios.md`](../practica-04-arreglos/ejercicios.md) (verificado contra el texto embebido en cada `.pas`); acá sólo se indica qué cambia en esta segunda resolución. Los ejercicios usan, en general, un tipo `rango = 1..dimF` para la dimensión lógica en vez de un `integer` suelto — una mejora respecto de la primera resolución, porque el compilador puede validar los límites.

> [!NOTE]
> **Validación real ejecutada**: los 15 archivos `.pas` de esta carpeta se compilaron con Free Pascal 3.2.2 (`fpc -Se1`); 11 compilan sin errores y 4 fallan. No se ejecutó ninguno. No se modificó ningún archivo fuente.

## Ejercicio 1

Mismo enunciado que [Ejercicio 1 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-1) (el trazado de `numeros[i]:=i` / `numeros[i]:=numeros[i]+numeros[i-1]`).

- **Solución**: [`1.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/1.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Fuente adicional real**: `fuentes/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/1.docx` (texto extraíble real) contiene el desarrollo completo de la traza, transcripto acá tal cual:
  ```
  A ) 1 .. 10
  B)
          //  2 + 1 = 3
          //  3 + 3 = 6
          //  4 + 6 = 10
          //  5 + 10 = 15
          //  6 + 15 = 21
          //  7 + 21 = 28
          //  8 + 28 = 36
          //  9 + 36 = 45
          //  10 + 45 = 55
  C)
  program sumador;
  type
      vnums = array [1..10] of integer;
  var
      numeros : vnums;
      i:integer;
  begin
      for i:=1 to 10 do
      begin
          numeros[i]:=i;
          WriteLn('nro: ', numeros[i]);
      end;
      WriteLn('_________________________');
      for i:=2 to 9 do
      begin
          numeros[i]:= numeros[i] + numeros[i-1];
          WriteLn('i: ',i,' nro: ',numeros[i]);
      end;
      numeros[i+1]:= numeros[i+1] + numeros[i];
      WriteLn('i: ',i,' nro: ',numeros[i+1]);
  end.

  D) 2,2,2,2,2,2,2,2,2
  ```
  El código de `1.pas` es exactamente el del inciso C) de este documento. Nótese que la respuesta D) del `.docx` (`2,2,2,2,2,2,2,2,2`) no coincide con la respuesta D) dada en la carpeta original de la Práctica 4 (`10 y 1`, ver [`../practica-04-arreglos/ejercicios.md#ejercicio-1`](../practica-04-arreglos/ejercicios.md#ejercicio-1)) — son dos intentos distintos de la misma consigna, con dos respuestas distintas para el mismo inciso; se documentan ambas sin decidir cuál es la "correcta", porque verificarlo requeriría ejecutar el trazado a mano paso a paso, algo que excede el alcance de esta conversión.

## Ejercicio 2

Mismo enunciado que [Ejercicio 2 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-2) (completar `cargarVector`/`modificarVectorySumar`).

- **Solución**: [`2.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/2.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: a diferencia de la versión original (que dejó los `{ completar }` sin completar y no compila), esta versión sí completa ambos módulos y agrega `imprimirVector` para poder verificar el resultado.

## Ejercicio 3

Mismo enunciado que [Ejercicio 3 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-3) (imprimir el vector de distintas formas, incluyendo entre dos posiciones X e Y).

- **Solución**: [`3.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/3.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: agrega `ImprimirVectorD`/`ImprimirVectorD2` (una para `x<y`, otra para `x>y`), igual que la versión original, pero con el tipo `rango` acotando `dimL`, `x` e `y`.

## Ejercicio 4

Mismo enunciado que [Ejercicio 4 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-4) (`posicion`, `intercambio`, `sumaVector`, `promedio`, `elementoMaximo`, `elementoMinimo`).

- **Solución**: [`4.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/4.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: los 6 módulos están escritos como `function` (devuelven el valor con el nombre de la función) en vez de `procedure` con parámetro `var`, un estilo más prolijo que la versión original.

## Ejercicio 5

Mismo enunciado que [Ejercicio 5 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-5) (cargar, intercambiar máximo y mínimo, informar la operación).

- **Solución**: [`5.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/5.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: ninguna sustancial respecto de la versión original; misma técnica de una sola pasada.

## Ejercicio 6

Mismo enunciado que [Ejercicio 6 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-6) (hacerlo en un único módulo).

- **Solución**: no existe un `6.pas` en esta carpeta de repaso.
- **Estado**: `sin-solucion` (en esta carpeta; ver la versión de la práctica original, que reutiliza el ejercicio 5 completo).

## Ejercicio 7

Mismo enunciado que [Ejercicio 7 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-7) (alumnos: cargar, sustituir/eliminar, insertar, agregar).

- **Solución**: [`7.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/7.pas)
- **Estado**: `posiblemente-incorrecto` (compila, pero repite la misma desviación del enunciado que la versión original)
- **Diferencia**: sigue resolviendo b)/c) como "insertar valores fijos" (`nombreC:='PEPE'`, `nombreD:='PEPE2'`) en vez de leer un nombre por teclado y, en b), eliminar la primera ocurrencia (acá tampoco se elimina: se llama a `insertar` en la posición 4, no a una eliminación). Sí tiene, a favor, un `insertar` genérico con desplazamiento (`for i:=dim downto pos do a[i+1]:=a[i]`) que la versión original no tenía tan prolijo.

## Ejercicio 8

Mismo enunciado que [Ejercicio 8 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-8) (alumnos ingresantes, DNI todo par, dos de mayor edad).

- **Solución**: [`8.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/8.pas)
- **Estado**: `parcial` (compila sin errores)
- **Diferencia**: `dimF` se redujo a `3` (probablemente para probar más rápido) y usa exactamente la misma función `digPares` con la misma inconsistencia ya señalada en la versión original (reinicia el contador en vez de acumular). El programa principal tampoco imprime los dos alumnos de mayor edad.

## Ejercicio 9

Mismo enunciado que [Ejercicio 9 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-9) (igual al 8, pero con sentinela DNI -1).

- **Solución**: [`9.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/9.pas)
- **Estado**: `parcial` — no compila (`Error: Call by var for arg no. 4 has to match exactly: Got "SmallInt" expected "rango"`, línea 107)
- **Diferencia**: `CargarAlumnos` pide `dimL` como `var dimL:rango`, pero en el programa principal `dimL` está declarado como `integer` a secas — Pascal exige que un parámetro `var` coincida exactamente de tipo, no alcanza con que sean compatibles.

## Ejercicio 10

Mismo enunciado que [Ejercicio 10 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-10) (salarios, aumento 15%, promedio).

- **Solución**: [`10.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/10.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: ninguna sustancial; misma resolución que la versión original, con `rango` acotando `dimL`.

## Ejercicio 11

Mismo enunciado que [Ejercicio 11 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-11) (fotos, ArgenPics).

- **Solución**: [`11.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/11.pas)
- **Estado**: `posiblemente-incorrecto` (compila, pero el inciso b) compara mal)
- **Diferencia**: en `abc`, el filtro de "Me gusta" del fotógrafo Art Vandelay compara `v[i].titulo = 'Art Vandelay'` — compara contra el campo `titulo` de la foto, no contra `autor` (que es el campo correcto según el enunciado). El resto (foto más vista, contador de comentarios) sigue la misma lógica que la versión original, sin el bug de comparación de registros completos que tenía `11.pas` de la práctica original.

## Ejercicio 12

Mismo enunciado que [Ejercicio 12 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-12) (viajes de marzo, transporte de caudales).

- **Solución**: [`12.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/12.pas)
- **Estado**: `resuelto` (compila sin errores)
- **Diferencia**: a diferencia de la versión original (marcada `//Me falta terminar`, sólo resolvía la carga), esta versión completa los tres incisos: `InformarB` (promedio y viaje de menor monto, en una sola pasada) y `EliminarC`/`borrarPos` (elimina los viajes de 100 km).

## Ejercicio 13

Mismo enunciado que [Ejercicio 13 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-13) (galaxias).

- **Solución**: [`13.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/13.pas)
- **Estado**: `parcial` — no compila (`Error: overloaded functions have the same parameter list`, línea 62)
- **Diferencia**: a diferencia de la versión original (que dejaba `DosMaximos` vacío), esta versión sí completa la lógica de "dos mayores" — pero declara **dos** procedimientos con el mismo nombre `DosMayores` y exactamente la misma lista de parámetros (uno para mayores, otro pensado para menores, que debió llamarse `DosMenores`). El programa principal ya llama correctamente a `DosMayores(...)` y `DosMenores(...)` como si existieran ambos nombres, pero sólo el primero (mal duplicado) está declarado.

## Ejercicio 14

Mismo enunciado que [Ejercicio 14 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-14) (IPCC, temperaturas).

- **Solución**: [`14.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/14.pas)
- **Estado**: `posiblemente-incorrecto` (compila, pero con un modelo de datos reducido)
- **Diferencia**: en vez de "100 puntos × 50 años", usa una matriz `lugares[1..dimF,1..dimF2]` con `dimF=3`, `dimF2=2` (reducida para pruebas) y sí calcula explícitamente el año de mayor promedio (`tempMayor`/`anioMayor`) y el año con la temperatura puntual más alta (`tempUltra`/`anioUltra`) — más completo que la versión original, aunque con una escala de datos mucho menor a la pedida (100 × 50) y sin haberla vuelto a subir a esos valores.

## Ejercicio 15

Mismo enunciado que [Ejercicio 15 de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicio-15) (GitHub, desarrolladores).

- **Solución**: [`15.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/15.pas)
- **Estado**: `parcial` — no compila (`Fatal: Syntax error, ":" expected but "=" found`, línea 30)
- **Diferencia**: el `record participante` declara `pais = cadena10;` con `=` en vez de `:` (mezcla la sintaxis de declaración de tipos con la de campos de un registro). El archivo corta ahí — no llega a tener programa principal ni módulos de cálculo.

## Ejercicio adicional (primero de la página 4 del PDF)

Mismo enunciado que el [primer ejercicio adicional de la Práctica 4](../practica-04-arreglos/ejercicios.md#ejercicios-adicionales-página-4-del-pdf) (contar ocurrencias de dígitos leídos hasta -1).

- **Solución**: [`add.pas`](../../../codigo/soluciones/practicas/practica-repaso-redictado-2020/ejercicios-practica-04/add.pas)
- **Estado**: `sin-solucion` — no compila (`Fatal: Syntax error, "BEGIN" expected but "end of file" found`)
- **Contenido real**: el archivo sólo tiene el enunciado transcripto como comentario; no hay ni una línea de código Pascal.
