---
id: "CADP-FINAL-2018-003"
titulo: "Final CADP 2018 (003) - ventas de un comercio, módulo TRES y teoría"
slug: "final-cadp-2018-003"
tipo: "final"
tema: "eficiencia-y-estructuras-de-datos"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "2018 - CADP Final - 003.pdf"
    paginas: "1"
---

# Final CADP 2018 (003) — FINAL CADP, 17/04/2018

## Enunciado

Se debe generar una lista con las ventas de productos de un comercio. De cada venta se lee el código de venta, código de producto (100..200) y cantidad vendida. La lectura finaliza cuando se lee código de venta -1 y la lista debe generarse ordenada por código de producto. Además, se dispone de una tabla con el precio de cada código de producto. Una vez generada la lista, se debe informar para cada producto el monto total recaudado. Implementar un programa que resuelva lo pedido.

1. Explique las principales diferencias entre una estructura arreglo y una de tipo lista.
2. Explique la diferencia entre dimensión física y lógica. Justifique su uso.
3. Explique detalladamente qué hace el siguiente módulo:

   ```pascal
   PROCEDURE TRES (VAR V:vector; VAR dimL:integer; dato:integer; var b:boolean);
   Var i,j:integer;
   begin
     i:=1;
     while (i<=dimL) and (v[i]<dato) do
       i := i+1;
     if (i>dimL) then b:= False
                 else
                   while (i<dimL) and (v[i]=dato)do begin
                     for j:=i+1 TO dimL DO V[j-1]:= V[j];
                     dimL := dimL - 1;
                   end;
   end;
   ```

4. Defina el concepto de eficiencia de un programa. Describa detalladamente cómo se mide.
5. Implemente una solución más eficiente desde el punto de vista del tiempo de ejecución para el módulo del ejer. 3). Justifique su solución.
6. Justifique por qué es conveniente utilizar un parámetro por referencia en lugar de una variable global.
7. Explique detalladamente las diferencias entre aplicar la operación DISPOSE a un puntero y asignarle valor NIL.
8. Explique qué entiende por reusabilidad en el contexto de la modularización.

## Solución

No hay carpeta `Programa/` ni archivo `.pas` para este enunciado en el repositorio. Estado: sin solución disponible.
