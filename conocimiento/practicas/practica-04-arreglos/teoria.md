---
id: "CADP-P04-TEORIA"
titulo: "Vectores"
slug: "vectores"
tipo: "teoria"
unidad: 4
tema: "arreglos"
subtemas:
  - "vectores"
  - "recorridos"
  - "carga-de-datos"
  - "agregar"
  - "insertar-en-posicion"
  - "insertar-manteniendo-orden"
  - "borrar-en-posicion"
  - "borrar-elemento"
  - "busqueda-lineal"
  - "busqueda-secuencial-optimizada"
  - "busqueda-dicotomica"
  - "corte-de-control"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-04-arreglos/Redictado CADP 2020 - Práctica 4 - Vectores.pdf"
    paginas: "1-4"
  - archivo: "../../../fuentes/practicas/practica-04-arreglos/Resumen Arreglos.docx"
  - archivo: "../../../fuentes/practicas/practica-04-arreglos/e.docx"
prerrequisitos:
  - "tipos de datos simples (integer, real, string)"
  - "estructuras repetitivas (for, while)"
  - "modularización con procedimientos y funciones"
  - "parámetros por valor y por referencia"
relacionados:
  - "./ejercicios.md"
  - "./ejemplos.md"
  - "../practica-06-listas/teoria.md"
  - "../practica-06-listas/vectores-vs-listas.md"
codigo_relacionado:
  - "../../../codigo/ejemplos/practicas/practica-04-arreglos/teoria-arreglos-programa.pas"
---

> [!NOTE]
> Este documento es el resumen de teoría escrito originalmente por quien cursó la materia (contenido `origen: "original"` en su cuerpo principal). Se le agregaron únicamente este encabezado de metadatos y, al final, un anexo con procedimientos transcritos desde capturas de pantalla (`origen: "convertido"`) que formaban parte de los mismos apuntes. El resto del archivo no fue modificado.

<h1 align="center"> 📚Vectores </h1>
<div align="center">
<img src="https://media.giphy.com/media/7E8lI6TkLrvvAcPXso/giphy.gif"/>
 </div>
<br>

Indice
=================

<!--ts-->
   * [Asignación de contenido](#asignación_de_contenido)
   * [Lectura/Escritura](#lectura_escritura)
   * [Recorridos](#recorridos)
   * [Carga de datos](#cargar_Datos)
   * [Agregar al Final](#agregar_al_final)
   * [Insertar Elementos](#insertar_un_elemento)
     * [En una Posición Determinada](#posición_determinada)
     * [Manteniendo un orden](#Manteniendo_Un_Orden)
   * [Borrar Elementos](#borrar_elementos)
     *  [En una Posición Determinada](#en_posición_determinada)
     *  [Un Elemento Determinado](#Elemento_Determinado)
   * [Buscar un elemento](#buscar_elemento)
     * [Busqueda Lineal o Secuencial](#busqueda_lineal_o_secuencial)
     * [Busqueda en arreglos ordenados](#en_arreglos_ordenados)
       * [Secuencial Optimizado](#secuencial_optimizado)
       * [Busqueda Dicotomica](#busqueda_dicotomica) 
   * [Corte de control](#Corte_de_Control)
 
Asignación_de_contenido
=======================

```Pas
var
  numero:integer;
  v:vector;
begin
  numero:=10;
  v[4]:=numero;
end.
```

Lectura_Escritura
=================

```Pas
var
  v:vector;
begin
  readln(v[1);
  writeln(v[1];
end.
```
Recorridos
==========

La operacion de ***Recorridos*** en un vector consiste en recorrer el vector de manera total o parcial, para realizar algún proceso sobre sus elementos.
- ***Recorrido Total*** Implica analizar ```todos``` los elementos del vector, lo que lleva a recorrer completamente la estructura.
- ***Recorrido Parcial*** Implica analizar los elementos del vector, ```hasta``` encontar aquel que cumple con lo pedido. Puede ocurrir que se recorra todo el vector.

<table>
<tr>
<td> Recorrido Total </td> <td> Recorrido Parcial </td><td> Recorrido Parcial 2 </td>
</tr>
<tr>
<td>
 
```Pas
var
    v:vector;
    i:integer;
begin
    for i:=1 to dimF do
       writeln(v[i]);
end.
```
</td>
<td>
 

```Pas
var //(Seguro Existe)
    v:vector;
    i:integer;
begin
    i:=1;
    while (v[i] <> 0) do
    begin
       writeln(v[i]);
       i:=i+1;
    end;
end.
```
 
</td>
 <td>
 

```Pas
var //(Puede no Existir)
    v:vector;
    i:integer;
begin
    i:=1;
    while (i <= dimF) and (v[i] <> 0) do
    begin
       i:=i+1;
    end;
    if (i <= dimF ) then
       writeln ('Existe');
    else
       writeln ('No Existe');
end.
```
 
</td>
</tr>
 
</table>

Cargar_Datos
=============

La operacion de ```Cargar Datos``` en un vector consiste en incorporar un elemento a continuacion del otro desde la posición inicial en forma consecutiva.
- ***Carga Total*** Consiste en guardar cada elemento en una posición del vector.
- ***Carga Parcial*** Esta operación debe controlar que la cantidad de elementos que se cargan no supere la dimensión física.

<table>
<tr>
<td> Carga Total </td> <td> Carga Parcial </td>
</tr>
<tr>
<td>
 
```Pas
procedure Carga_Total(var v:vector);
var
    i:integer;
begin
    for i:=1 to dimF do
    begin
       readln(v[i]);                    
    end;
end.
```
</td>
<td>
 

```Pas
procedure Carga_Parcial(var v;vector;var dimL);
var
    numero:integer;
begin
    dimL:=0;
    readln(numero);
    while (numero <> 0) and (dimL < dimF) do
    begin
       dimL:=dimL+1;
       v[dimL]:=nummero;
       readln(numero);                 
    end;
end.
```
 
</td>
</tr>
 
</table>

Agregar_al_final
================
Para agregar al final del vector solo tenemos que verificar que tengamos espacio en el vector, aumentamos en uno la dimension logica y lo agregamos.

```Pas
Procedure Agregar_Al_Final(var v:vector;var dimL:integer;elemeto:integer);
begin
   if (dimL < dimF) then 
   begin
      dimL:=dimL + 1; 
      v[dimL]:=elemento;
   end;
end.
```
Insertar_un_elemento
====================

La operación de insertar un elemento en un vector consiste en incorporar el elemento en una posición determinada o de acuerdo a un orden impuesto por sus datos (ej: ordenada de mayor a menor).

Posición_Determinada
--------------------
Consiste en guardar cada elemento en una posición del vector.
  - Verificar la posición a insertar.
  - Verificar espacio en el vector.
  - Abrir el vector (a partir de la dimL)
  - Aumentar la dimL



```Pas
procedure Posicion_Determinada (var v:vector; var dimL:integer;elemento,pos:integer);
var
   i:integer;
begin
    if (dimL < dimF) and ((pos >= 1) and (pos <= dimL)) then
    begin
         for i:=dimL to downto pos to
            v[i + 1] := v[i];
         v[pos]:=elemento;
         dimL:=dimL+1;
    end;
end;
```
Manteniendo_Un_Orden
-------------------- 
Esta operación requiere verificar el espacio disponible, buscar la posición correspondiente manteniendo el orden y luego insertar el elemento en el vector.
  - Verificar espacio en el vector
  - Determinar posición  donde se inserta.
  - Insertar elemento en la posición determinada. 
```Pas
//Insertar un elemento en un vector ordenado de menor a mayor
procedure Manteniendo_un_Orden (var v:vector; var dimL:integer;elemento:integer);
var
    pos:integer;
begin
    if (dimL < dimF) then
    begin
        pos:=BuscarPosicion(elemento,v,dimL);
        Insertar(v,dimL,pos,elemento);
    end;
end;
//__________________________________________________________________________________
Function BuscarPosicion (x:integer;v:vector;dimL:integer):integer;
var
    pos:=Integer;
begin
    pos:=1; 
    while (pos <= dimL) and (x > v[pos]) do
        pos:=pos + 1;
    BuscarPosicion:=pos;
end;
//__________________________________________________________________________________
Procedure Insertar (var v:vector; var dimL:integer; pos: Indice; elem:integer);
var 
    i: indice;
begin
    for i:= dimL downto pos do 
        v [i + 1] := v [i] ;
    v [pos] := elem; 
    dimL := dimL + 1;
End;
 ```
 
Borrar_Elementos  
================

La operación Borrar un elemento en un vector consiste en eliminar un elemento determinado o bien eliminar un elemento que ocupa una posición determinada.

En_Posición_Determinada 
-----------------------
Se debe verificar que la posición sea valida.
  - Validar la posición a eliminar.
  - Desplazar elementos (A partir de la siguiente posición).
  - Abrir el vector (a partir de la dimL)
  - Disminuir la dimL

```Pas
Procedure BorrarPos (var v: vector; var dimL: integer; pos: posicion);
var 
    i: integer; 
Begin
    if (pos >=1 and pos <= dimL) then 
    begin
        for i:= pos + 1 to dimL  do
            v [ i - 1 ]  :=  v [ i ] ;
        dimL := dimL - 1 ;         
   end;
End;

```

Elemento_Determinado
--------------------
Hay que verificar que exista el elemento.
  - Buscar la posición del elemento a borrar.
  - Si el elemento esta entonces ----> Borrar el elemento.

```Pas
Procedure BorrarElem (var v: vector;  var dimL: integer; elem: integer);
var 
    pos: indice;
begin
    pos:= BuscarPosElem (elem, v, dimL);
    if (pos <> 0) then 
    begin
        BorrarPos (v, dimL, pos);
   end;
end;
//__________________________________________________________________________________
Function BuscarPosElem (x:integer; v:vector; dimL: integer): integer;
var 
    pos:integer; 
    exito: boolean;
Begin
    pos:=1; 
    exito:= false;
    while (pos <= dimL) and (not exito) do 
    begin
        if (x = v[pos]) then
            exito:= true
        else
            pos:=pos+1;
    end;
    if (exito = false) then 
        pos:=0;
    BuscarPosElem:= pos;
end; 
//__________________________________________________________________________________
Procedure BorrarPos (var v:vector; var dimL:integer; pos:integer);
var 
    i: integer; 
Begin
    for i:= pos + 1  to   dimL  do
        v [ i - 1 ]  :=  v [ i] ;
    dimL := dimL - 1 ;         
End;

```
Buscar_elemento
================
El proceso de ubicar información particular en una colección de datos es conocido como método de busqueda.

Busqueda_Lineal_o_Secuencial 
----------------------------

Almacenados sin ningun orden.
- [x] Se aplica cuando los elementos no tienen orden.
- [x] Requiere excesivo consumo de tiempo en la localización del elemento.
- [x] Numero medio de compareciones (dimL + 1) / 2. 
- [x] Es ineficiente a medida que el tamaño del arreglo crece.

- La búsqueda compienza desde el principio y se avanza por la estructura de manera secuencial, uno a uno.
- La solución debería recorrer el vector y detenerse en caso de encontrar el elemento X.

```Pas
Function BuscarPosElem (x:integer;v:vector;dimL:integer):integer;
var 
    pos:integer; 
    exito: boolean;
Begin
    pos:=1;
    exito:= false;
    while (pos <= dimL) and (not exito) do
    begin
        if (x = v[pos]) then
            exito:= true
        else
            pos:=pos+1;
    end;
    if (exito = false) then 
        pos:=0;
    BuscarPosElem:= pos;
end; 

```
  
En_arreglos_ordenados
---------------------
Almacenados ordenados por algun criterio.

<div align="center"><img src="https://user-images.githubusercontent.com/55964635/128451139-d88007bb-191e-4b07-a7ea-dc116b2fd83c.png"/></div>


Secuencial_Optimizado
---------------------

- Se aplica cuando los elementos tienen orden.
- La busqueda comienza desde el pricipio y se avanza por la estructura de manera secuencial y asi hasta que encuentro el número buscado o hasta que encuentro uno mayor.

```Pas
Function BuscoPosElemOrd (x:integer;v:Vector;dimL:integer):integer;
var 
    pos:integer;
Begin
    pos:=1;
    while (pos <= dimL) and (x > v[pos]) do
        pos:=pos+1;
    if ( pos > dimL ) or (x < v [pos]) then //Si me pase de la DimL del vector reincicio la posición
        pos:=0;                               //y si el elemento es mas chico que el menor numero del vector, tambien reinicio.
    BuscoPosElemOrd:= pos;
End; 
```
Busqueda_Dicotomica
-------------------
- Se aplica cuando los elementos tienen orden.
- Se compara el valor buscado ```x``` con el ubicado en el medio del vector ```a```:    
  - Si el elemento ubicado al medio del vector es igual a x, entonces la busqueda termina.
  - Si no es el valor buscado, debera quedarse con la mitad del vector que conviene, para seguir la busqueda. Este paso se repite tantas veces hasta que se acaba el vector o encuentro el valor.
- Se calcula la posición del medio del vector original.
<div align="center"><img src="https://user-images.githubusercontent.com/55964635/128447821-75f753e3-fc05-4cf7-bf3a-928d3d49fbf8.png"/></div>

- Se descarta la primera parte.
- Se calcula la posición del medio del ```sub_arreglo``` de:
<div align="center"><img src="https://user-images.githubusercontent.com/55964635/128448864-ed8a7608-59c4-497b-a930-6f227174b867.png"/></div>

- Se descarta la ```Segunda``` parte del ```subarrango``` (de 7 a 9).
- Se calcula la posición del medio del ```subarrango``` delimitado por:
<div align="center"><img src="https://user-images.githubusercontent.com/55964635/128449301-ffe700e2-abf9-4662-8c15-acd3828bb817.png"/></div>

```Pas
Procedure  BusquedaBin (var v: Vector; var j:integer; dimL,x: integer);
Var //En caso de que este ordenada de menor a mayor.
    primero, ult, medio: integer;
Begin
    j :=0 ;
    primero:= 1;
    ult:= dimL;
    medio := (primero + ult ) div 2 ; //Calculo la posición del medio
    While ( primero < = ult ) and ( x <> v [medio]) do 
    begin//Mientras no llegue al final y el elemento sea distinto al elemento que esta en la posicion del medio.
        If ( x < v [ medio ] ) then //Si es mas chico 
            ult:= medio -1 ; //Descarto la segunda mitad del arreglo y comienzo a restar a partir de la primera mitad
        else
            primero:= medio+1 ; //Si es mas grande, continuo a partir de la segunda mitad del arreglo
        medio := ( primero + ult ) div 2 ; //Actualizo el elemento del medio para continuar mi recorrido.
    end;
    If (primero < = ult) then //Si se encontro vale el valor medio
        j := medio
    else
        j := 0;
End;  
```

Corte_de_Control
================

```Pas
Procedure CorteDeControl(var v:vector;var dimL:integer);
var
    numero:integer;
    num_aux:Integer;
    cantidad:integer;
begin
    ReadLn(numero);
    dimL:=0;
    while ((numero <> -1) and (dimL < dimF)) do
    begin
        cantidad:=0;
        num_aux:=numero;
        while (numero = num_aux) do
        begin
            cantidad:=cantidad+1;
            dimL:=dimL+1;
            ReadLn(numero);
            v[dimL]:=numero;
        end;
        WriteLn('La cantidad de',numero,' es ', cantidad);
    end;
end;
```

Anexo: procedimientos transcritos desde apuntes (imágenes)
============================================================

> [!NOTE]
> `Resumen Arreglos.docx` y `e.docx` (ambos en `fuentes/practicas/practica-04-arreglos/`) no contienen texto extraíble: son documentos armados enteramente con capturas de pantalla pegadas. Las imágenes se extrajeron a `recursos/imagenes/practicas/practica-04-arreglos/` y se transcriben a continuación en bloques de código Pascal, tal como indica el proceso de organización para imágenes que contienen código. `origen` de esta sección puntual: `"convertido"`.

### Vectores: carga, agregar e insertar/borrar en una posición

Cuatro procedimientos clásicos de manejo de vectores, tal como aparecen en los apuntes (nombres de variables y mayúsculas/minúsculas respetados de la fuente):

**Cargar un vector hasta un centinela** (fuente: `e.docx`, imagen [`e-docx-cargar-vector.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/e-docx-cargar-vector.png)):

```Pas
Const dimF = 1000;
Type vector =  Array [1..dimF] of integer;
Procedure CARGAR ( var v: vector; var dimL: integer );
var dato: integer;
begin
    dimL := 0;
    read (dato);
    while (dato <> 99)  and ( dimL < dimF ) do
    begin
        dimL := dimL + 1;
        v [dimL] := dato;
        read (dato);
    end;
End;
```

**Agregar al final, verificando espacio** (fuente: `Resumen Arreglos.docx`, imagen [`resumen-arreglos-agregar-vector.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/resumen-arreglos-agregar-vector.png)) — variante con parámetro `exito` de la operación "Agregar al final" ya vista más arriba en este documento:

```Pas
Procedure AGREGAR (var v: vector; var dimL: integer;
                    elemento: integer; var exito: boolean);
Begin
 exito:= false;
 {verificar espacio suficiente}
 If (dimL < dimF) then begin
                exito:= true;
                dimL:= dimL+1; {actualizar cantidad de elementos}
                v [dimL]:= elemento;
              end;
End;
```

**Insertar en una posición determinada** (fuente: `Resumen Arreglos.docx`, imagen [`resumen-arreglos-insertar-pos-vector.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/resumen-arreglos-insertar-pos-vector.png)) — misma idea que "Insertar_un_elemento → Posición_Determinada" de más arriba, con el agregado del booleano `exito`:

```Pas
Procedure INSERTARPOS (var v:vector; var dimL: integer;
  elemento: integer; pos: integer; var exito: boolean);
var i : integer;
Begin
 exito:= false;
 if (dimL < dimF) and ((pos>=1) and (pos<= dimL))
     then begin
            exito:= true;
            for  i:= dimL downto pos do
              v [ i + 1 ] := v [ i ] ;
            v [pos] := elemento;
            dimL := dimL + 1;
          end;
End;
```

**Borrar el elemento de una posición determinada** (fuente: `Resumen Arreglos.docx`, imagen [`resumen-arreglos-borrar-pos-vector.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/resumen-arreglos-borrar-pos-vector.png)) — misma idea que "Borrar_Elementos → En_Posición_Determinada" de más arriba, con el agregado del booleano `exito`:

```Pas
Procedure BorrarPos (var v: vector;
             var dimL: integer; pos: posicion;
             var exito: boolean );
var i: integer;
begin
 exito := false;
 if (pos >=1 and pos <= dimL)
    then begin
           exito := true;
           for i:= pos + 1 to dimL do
              v [ i - 1 ]  :=  v [ i ] ;
           dimL := dimL - 1 ;
         end;
end;
```

### Listas: dos procedimientos que aparecían en el mismo resumen

> [!NOTE]
> Estos dos procedimientos son sobre **listas enlazadas**, no sobre vectores, pero estaban en las mismas capturas de `Resumen Arreglos.docx`. Se transcriben acá por fidelidad a la fuente. La teoría completa de listas está en [`../practica-06-listas/teoria.md`](../practica-06-listas/teoria.md), que incluye variantes equivalentes (`AgregarAlFinal1`, `AgregarAlFinal2`).

**Agregar un nodo al final, recorriendo la lista** (imagen [`resumen-arreglos-armar-nodo-lista.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/resumen-arreglos-armar-nodo-lista.png)) — equivalente a `AgregarAlFinal1` de la Práctica 6:

```Pas
procedure armarNodo(var L: lista; v: integer);
var
    act, nue : lista;
begin
  new (nue);
  nue^.num:= v;
  nue^.sig := NIL;
  if L <> Nil then
  begin
      act := L ;
      while  (act^.sig <> NIL ) do
          act := act^.sig ;
      act^.sig := nue ;
  end
  else
      L:= nue;
end;
```

**EstaOrdenada: verificar si una lista está ordenada de manera ascendente** (imagen [`resumen-arreglos-esta-ordenada-lista.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/resumen-arreglos-esta-ordenada-lista.png)):

```Pas
function EstaOrdenada (pri:lista):boolean;
var
    ORDEN:Boolean;
    mayor:integer;
begin
    ORDEN:=True;
    mayor:=-1;
    while (pri <> nil) and (ORDEN=True)do
    begin
        if (pri^.num>mayor)then
        begin
            mayor:=pri^.num;
            WriteLN('bien');
        end
        else
        begin
            ORDEN:=False;
            WriteLN('NO ESTA ORDENADA');
        end;
        pri:=pri^.sig;
    end;
    EstaOrdenada:=ORDEN;
end;
```

La lógica recorre la lista llevando el máximo visto hasta el momento (`mayor`, inicializado en `-1`): mientras cada nodo siguiente sea mayor al máximo anterior, la lista sigue "bien"; en cuanto aparece un valor que no supera al máximo, `ORDEN` pasa a `False` y se corta el recorrido. Es la misma idea que se pide implementar, sin los `WriteLn` de depuración, en el ejercicio 9.a de la Práctica 6 (`EstáOrdenada`).


