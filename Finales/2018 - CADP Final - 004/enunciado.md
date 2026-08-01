---
id: "CADP-FINAL-2018-004"
titulo: "Final CADP 2018 (004) - comercio: menor ganancia, eficiencia, estructuras y parámetros"
slug: "final-cadp-2018-004"
tipo: "final"
tema: "eficiencia-y-estructuras-de-datos"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "2018 - CADP Final - 004.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa.pas"
relacionados:
  - "../2015 - CADP Final - 001/enunciado.md"
---

# Final CADP 2018 (004)

> [!WARNING]
> **Discrepancia de fuente**: el archivo `2018 - CADP Final - 004.pdf` de esta carpeta no contiene un examen de 2018. Es una foto cuyo encabezado dice **"22/9/2015 Examen Final CADP"**, con el mismo texto, palabra por palabra, que [`../2015 - CADP Final - 001/enunciado.md`](../2015%20-%20CADP%20Final%20-%20001/enunciado.md). Es decir, este PDF parece ser una copia/duplicado del examen de 2015 archivada por error dentro de una carpeta con nombre "2018 - CADP Final - 004". Siguiendo las reglas de esta organización, no se renombra ni se mueve el archivo ni la carpeta; se documenta la discrepancia y se transcribe el enunciado tal cual aparece en este PDF puntual.

## Enunciado (texto real del PDF de esta carpeta, fechado 22/9/2015)

### 1) Práctica

Un comercio dispone de las ventas realizadas para sus productos. De cada venta se conoce Número de Producto (1..300), Cantidad Vendida y Nombre de Producto. Además el comercio cuenta con una tabla con el precio por unidad de cada uno de los 300 productos. Se pide calcular el nombre con el cual el comercio obtuvo la menor ganancia.

Notas: las ventas están ordenadas por número de producto. Un producto pudo ser vendido 0, 1 o más veces.

### 2) Eficiencia

a. Defina el concepto de eficiencia.
b. Explique cómo se procede si lo que se desea es calcular la memoria empleada en una solución. ¿Y si se desea calcular el tiempo de ejecución?
c. Respecto a la solución planteada en el punto 1, y desde el punto de vista de la eficiencia en tiempo, ¿Es conveniente que las ventas estén ordenadas por nro. de producto? Justifique detalladamente.

### 3) Estructura de Datos

a. Defina el concepto.
b. Plantee y explique las distintas clasificaciones de las Estructuras de Datos.
c. Plantee detalladamente la operación de Inserción de un elemento en la estructura de datos lista enlazada y vector. Analice distintas propuestas.

### 4) Parámetros

a. Defina el concepto de parámetro en el contexto de la modularización.
b. Qué tipos de parámetros conoce. Describa en qué se clasifica cada tipo.
c. ¿Por qué cree que es útil para el programador contar con los parámetros para escribir soluciones modularizadas?

## Solución

[`Programa.pas`](Programa.pas) (`program finalCADP`) resuelve el **punto 1 (Práctica)**: carga las ventas en una lista enlazada y un vector de precios por producto (`CargarPrecios`, `CargarVentas` — esta última "se dispone", no está en el archivo), agrupa las ventas de un mismo producto consecutivo y acumula su recaudación en `preTotal` (`CalcularMenor`), y busca el producto de menor recaudación (`calcularMinimo`).

Se compiló este archivo con Free Pascal 3.2.2 (fuera del repositorio, sin alterar el original) para verificarlo, y **no compila**, con tres errores reales:

> [!WARNING]
> 1. En `CargarPrecios`, `p[i]:=i` asigna un entero a un elemento de tipo `Real` de forma incompatible con el resto del tipado del programa (error de tipos detectado por el compilador en esa zona).
> 2. `CalcularMenor` llama a `InicializarPrecios(preTotal)` (comentada como "Se dispone", es decir, se asume provista por la cátedra) pero esa rutina no está definida en el archivo, por lo que el identificador no se encuentra.
> 3. La condición del `while` interno de `CalcularMenor` es `(L<>Nil) and (actual:=L^.dato.nroProd)`, una **asignación** (`:=`) donde debería ir una **comparación** (`actual = L^.dato.nroProd`); no es una expresión booleana válida.
>
> Se documentan los tres tal cual están en el código, sin corregirlos. Los puntos 2, 3 y 4 (todos de teoría) no tienen desarrollo en código, como es esperable.

Estado: intento de solución del punto 1, no compilable tal como está (verificado con Free Pascal 3.2.2).
