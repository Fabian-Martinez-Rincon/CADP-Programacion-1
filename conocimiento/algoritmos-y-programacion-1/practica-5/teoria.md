---
id: "AYP1-P5-TEORIA"
titulo: "Cálculo de máximos y mínimos"
slug: "maximos-y-minimos"
tipo: "teoria"
unidad: 5
tema: "maximos-y-minimos"
subtemas:
  - "maximo"
  - "minimo"
  - "modularizacion"
  - "parametros-por-referencia"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/practica-5/practica 5.pdf"
    paginas: "1"
  - archivo: "../../../fuentes/algoritmos-y-programacion-1/teorias/05 - Clase 5_20f91ecd97b94b2edecc103130aec22f.pdf"
    paginas: "1-22"
prerrequisitos:
  - "modularizacion"
  - "parametros por valor y por referencia"
relacionados:
  - "./README.md"
  - "./ejercicios.md"
  - "../practica-4/teoria.md"
  - "../practica-6/teoria.md"
---

# Cálculo de máximos y mínimos (Clase 5 / Práctica 5)

> Conversión de la Clase 5 ("05 - Clase 5_...pdf"). Único tema de la clase, presentado con un desarrollo guiado paso a paso.

## Índice

1. [Búsqueda del máximo](#1-búsqueda-del-máximo)
2. [Búsqueda del máximo junto con un dato asociado](#2-búsqueda-del-máximo-junto-con-un-dato-asociado)
3. [`>` vs `>=` al verificar el máximo](#3--vs--al-verificar-el-máximo)
4. [Búsqueda del mínimo](#4-búsqueda-del-mínimo)
5. [Buscar máximo y mínimo a la vez: un error común](#5-buscar-máximo-y-mínimo-a-la-vez-un-error-común)
6. [Dos máximos simultáneos](#6-dos-máximos-simultáneos)

## 1. Búsqueda del máximo

Problema guía: *"Realizar un programa que lea promedios de notas de alumnos hasta leer un promedio igual a 0. Al finalizar informar el promedio más alto."* Las preguntas a resolver: ¿con qué tipo de dato represento el promedio?, ¿cuál es la condición de fin?, ¿cómo verifico que el nuevo promedio leído es el mejor promedio?

Esqueleto del programa:

```pascal
Program BuscaMax;
{declaración de procedimientos}
var
  prom:real;
begin
  Leo un promedio (prom);
  while (no sea la condición de fin) do
    begin
      verificar si es máximo
      Leo un promedio (prom);
    end;

  write ('El mejor promedio es: ',      );
end.
```

El módulo que verifica si es máximo recibe el valor actual por valor, y la variable que acumula el máximo por referencia (para poder actualizarla):

```pascal
procedure maximo(valorActual: real; var max: real);
begin
  if (valorActual > max) then
    max:= valorActual;
end;
```

Programa completo:

```pascal
Program BuscaMax;
procedure maximo(...) begin ... end;
var
  prom:real; max: real;
begin
  max:= -1;
  read (prom);
  while (prom <> 0) do
    begin
      maximo(prom, max);
      read (prom);
    end;

  write ('El mejor promedio es: ', max );
end.
```

## 2. Búsqueda del máximo junto con un dato asociado

Variante: *"Realizar un programa que lea promedios de notas de alumnos junto con su legajo hasta leer un promedio igual a 0. Al finalizar informar el legajo del alumno con promedio más alto."* Ahora el procedimiento `maximo` recibe también el dato asociado (`legajo`) y lo actualiza junto con el máximo:

```pascal
procedure maximo(valorActual: real; legajo: integer;
                  var max: real; var maxLeg: integer);
begin
  if (valorActual > max) then
    begin
      max:= valorActual;
      maxLeg:= legajo;
    end;
end;
```

```pascal
Program BuscaMaxLegajo;
procedure maximo(...) begin ... end;
var
  prom: real; max: real;
  legajo, legajoMax: integer;
begin
  max:= -1;
  read (prom);
  while (prom <> 0) do
    begin
      read(legajo);
      maximo(prom, legajo, max, legajoMax);
      read (prom);
    end;
  write ('El legajo del mejor promedio es: ', legajoMax);
end.
```

## 3. `>` vs `>=` al verificar el máximo

La condición del `if` dentro de `maximo` puede escribirse con `>` o con `>=`; ambas encuentran el mismo valor máximo, pero **difieren en qué dato asociado queda registrado cuando hay empates**, porque una sobrescribe ante un valor igual y la otra no:

```pascal
procedure maximo(valorActual: real; legajo: integer;
                  var max: real; var maxLeg: integer);
begin
  if (valorActual > max) then          { conserva el PRIMER máximo en caso de empate }
    begin
      max:= valorActual;
      maxLeg:= legajo;
    end;
end;

procedure maximo(valorActual: real; legajo: integer;
                  var max: real; var maxLeg: integer);
begin
  if (valorActual >= max) then         { conserva el ÚLTIMO máximo en caso de empate }
    begin
      max:= valorActual;
      maxLeg:= legajo;
    end;
end;
```

## 4. Búsqueda del mínimo

Es simétrico al máximo: la variable que acumula el mínimo se inicializa en un valor **alto** (en vez de bajo) antes de empezar a leer, y la comparación usa `<` en vez de `>`.

```pascal
procedure minimo(valorActual: real; var min: real);
begin
  if (valorActual < min) then
    min:= valorActual;
end;
```

```pascal
Program BuscaMin;
procedure minimo(...) begin ... end;
var
  prom:real; min: real;
begin
  min:= 11;
  read (prom);
  while (prom <> 0) do
    begin
      minimo(prom, min);
      read (prom);
    end;
  write ('El peor promedio es: ', min );
end.
```

### A recordar (máximo y mínimo)

- Utilizar una variable que representará al máximo (o al mínimo).
- Inicializar la variable máximo en un valor bajo (o la variable mínimo en un valor alto) antes de comenzar la lectura de los datos.
- Actualizar la variable máximo (o mínimo) cuando corresponda.

## 5. Buscar máximo y mínimo a la vez: un error común

Un primer intento consiste en invocar, para cada valor leído, tanto el módulo `maximo` como el módulo `minimo`:

```pascal
Program BuscaMinMax;
procedure maximo(...) begin ... end;
procedure minimo(...) begin ... end;
var
  prom:real; min, max: real;
begin
  min:= 11; max:= -1;
  read (prom);
  while (prom <> 0) do
    begin
      maximo(prom, max);
      minimo(prom, min);
      read (prom);
    end;
  write ('El peor promedio es: ', min , ', el mejor es ', max );
end.
```

La clase plantea una pregunta que insinúa la optimización (y el error) que viene a continuación: *"Si se lee un valor que resulta ser el nuevo máximo, ¿tiene sentido invocar al módulo mínimo?"* — la respuesta esperada es que no (un valor que acaba de superar al máximo actual no puede ser, a la vez, un nuevo mínimo, salvo que sea el primer dato leído). Esto sugiere unificar ambas verificaciones en un solo módulo con un `if / else if`:

```pascal
procedure maximo_minimo(valorActual: real; var max, min: real);
begin
  if (valorActual > max) then
    max:= valorActual
  else
    if (valorActual < min) then
      min:= valorActual;
end;
```

> [!WARNING]
> **La propia clase señala explícitamente que este programa unificado NO es correcto**: *"¡¡¡El programa NO es correcto!!! ¡¡¡NO contempla todos los posibles casos!!!"* (así, textual, en la diapositiva). El problema es el `else`: si un valor recién leído actualiza el máximo, el `else` impide que ese mismo valor se compare también contra el mínimo — y ese valor sí podría ser, además, el mínimo de la secuencia (típicamente le pasa al primer dato leído, que siempre actualiza el máximo inicial `-1` y por lo tanto nunca llega a compararse contra el mínimo inicial `11`). La clase ejemplifica con la secuencia `4.7, 8, 9.3, 5, 0`: la respuesta correcta de mínimo es `4.7`, pero el módulo con `else` nunca llega a compararlo contra `min` porque `4.7` fue, en su momento, el nuevo máximo. La forma correcta es usar **dos `if` independientes** (como en la primera versión de esta sección) en lugar de `if/else`, de modo que un valor se compare siempre contra el máximo **y** contra el mínimo.

## 6. Dos máximos simultáneos

Problema guía: *"Realizar un programa que lea los dni y puntajes de 20 gimnastas. Se desea saber el dni y puntaje de las dos gimnastas con mayor puntaje."*

```pascal
procedure maximos(puntos: real; dni: integer;
                   var puntosmax1, puntosmax2: real;
                   var dnimax1, dnimax2: integer);
begin
  if (puntos > puntosmax1) then
    begin
      puntosmax2:= puntosmax1;   dnimax2:= dnimax1;
      puntosmax1:= puntos;       dnimax1:= dni;
    end
  else
    if (puntos > puntosmax2) then
      begin
        puntosmax2:= puntos;     dnimax2:= dni;
      end;
end;
```

```pascal
Program Gimnastas;
procedure maximos(...) begin ... end;
var  i: integer;
  puntaje, puntajemax1, puntajemax2: real;
  dni, dnimax1, dnimax2: integer;
begin
  puntajemax1:= -1;
  for i:= 1 to 20 do
    begin
      read (dni); read(puntaje);
      maximos(puntaje, dni, puntajemax1, puntajemax2, dnimax1, dnimax2);
    end;

  writeln ('Puesto 1 para: ', dnimax1, ' con ', puntajemax1, ' puntos' );
  writeln ('Puesto 2 para: ', dnimax2, ' con ', puntajemax2, ' puntos' );
end.
```

Aquí, a diferencia de la sección 5, el `if/else` **sí es correcto**: cuando un valor supera al máximo actual, el máximo anterior "baja" al segundo puesto (`puntosmax2 := puntosmax1`) en lugar de perderse, así que no hace falta una segunda comparación independiente. La clase deja como pregunta abierta qué cambios habría que hacer para encontrar, en cambio, los dos puntajes **mínimos**.

## Actividad de cierre de la clase (sin solución en el repositorio)

*"Implemente un programa que procese la información de terrenos de una inmobiliaria. De cada terreno se leen los valores del frente y fondo. La lectura finaliza con un valor de frente -1. El programa debe informar la superficie más grande y cuántos terrenos poseen esa superficie máxima."* Esta actividad no tiene un archivo `.pas` resuelto asociado en `codigo/soluciones/algoritmos-y-programacion-1/practica-5/`.
