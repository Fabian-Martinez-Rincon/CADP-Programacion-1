---
id: "CADP-FINAL-2020-002"
titulo: "Final CADP - 2do turno febrero 2020: publicaciones WICC y teoría"
slug: "final-cadp-2020-002-turno-febrero"
tipo: "final"
tema: "eficiencia-y-estructuras-de-datos"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "final-2do-turno-febrero-2020.png"
codigo_relacionado:
  - "1.pas"
relacionados:
  - "../material-general/Probando.pas"
---

# Final CADP - 2do turno, febrero 2020

> [!NOTE]
> La imagen fuente está marcada con la leyenda "2° FEBRERO 2020" y una marca de agua ("MORADA INFORMÁTICA", grupo de estudiantes/apuntes de la Facultad de Informática de la UNLP); no es parte del enunciado, no se transcribe como contenido del examen.

## Enunciado

1. La Facultad de Informática organizará el congreso WICC, en donde se expondrán trabajos de investigación. Realizar un programa que lea la información de cada publicación: título de la publicación, DNI del autor y tipo de publicación (1..12). La lectura de publicaciones finaliza al ingresar un DNI de autor con valor 0 (el cual no debe procesarse). La información se lee ordenada por DNI del autor y un autor puede tener varias publicaciones. Se pide escribir un programa que:
   a. Informe el tipo de publicación con mayor cantidad de publicaciones.
   b. Informar para cada autor la cantidad de publicaciones presentadas.

2. Realice el cálculo de la memoria estática del ejercicio resuelto en el ejer. 1)

3. Indique y justifique qué se imprime en cada sentencia write:

   ```pascal
   program prueba;
   Var c: integer;

   Procedure Calcular (var b, a: integer);
   Begin
     b:= 10;
     while (b>0) do begin
       a:= a+b;
       b:= b-2;
       c:= c-b;
     end;
     writeln ('a= ', a, 'b= ', b,'c= ', c);
   End;

   var
     a, b: integer;
   begin
     b:= 80;
     c:= 30;
     writeln ('a= ', a, 'b= ', b,'c= ', c);
     calcular (a,b);
     writeln ('a= ', a, 'b= ', b,'c= ', c);
   end.
   ```

4. Defina el tipo de dato Arreglo y describa los pasos necesarios (pseudocódigo) para realizar las operaciones de:
   a. Buscar un elemento en un arreglo ordenado
   b. Insertar un elemento en una posición determinada del arreglo

5. Calcule el tiempo de ejecución para el *procedure Calcular* del ejercicio 3).

6. Explique y ejemplifique las estructuras de control de selección vistas en el curso.

7. En caso de ser posible reescribir el código del *procedure Calcular* del ejer. 3) reemplazando la estructura iterativa *While* por la repetitiva *For*.

## Solución

Esta carpeta conserva material de estudio para tres de los siete puntos:

- **Punto 1** (publicaciones WICC): resuelto por [`1.pas`](1.pas) (`program hola`). Lee publicaciones agrupando por DNI de autor consecutivo, cuenta publicaciones por tipo en un vector `Vector_public[1..12]` e informa el tipo con más publicaciones (`MayorPublicaciones`, inciso a) y, dentro del ciclo de lectura, informa la cantidad de publicaciones de cada autor apenas cambia el DNI (`LeerPublicaciones`, inciso b).
- **Punto 3** (traza del programa `prueba`): la carpeta no trae el código en Pascal para ejecutar, pero sí trae, en [`3.docx`](3.docx), la traza resuelta a mano con los tres valores impresos por los `writeln`: `a = 0, b = 80, c = 30` (impresión inicial, antes de llamar a `calcular`) → `a = 110, b = 0, c = 10` (impresión dentro de `Calcular`, usando los parámetros formales) → `a = 0, b = 110, c = 10` (impresión final, con las variables globales ya modificadas por los parámetros por referencia). Además, [`../material-general/Probando.pas`](../material-general/Probando.pas) es una reimplementación en código ejecutable de este mismo programa `prueba` (renombrado `Probando`), con `writeln` de depuración agregados adentro del `while`, aparentemente para verificar la traza corriéndola en vez de sólo calculándola a mano.
- **Punto 4** (arreglo: buscar e insertar): la carpeta no trae texto, pero [`4.docx`](4.docx) contiene dos diapositivas explicativas con las imágenes correspondientes: una sobre búsqueda secuencial optimizada en un arreglo ordenado (ejemplo con el vector `12 15 23 33 49 89 95 163 241 450` buscando `X=89`) y otra sobre los pasos para insertar un elemento en una posición determinada de un vector (ejemplo insertando el valor `26` en la posición `2`).

Los puntos 2, 5, 6 y 7 no tienen desarrollo conservado en esta carpeta. Estado: resuelto/desarrollado parcialmente (puntos 1, 3 y 4 de 7).
