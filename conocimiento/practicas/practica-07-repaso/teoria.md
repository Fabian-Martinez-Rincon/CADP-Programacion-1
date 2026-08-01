---
id: "CADP-P07-TEORIA"
titulo: "Repaso: patrones recurrentes de Prácticas 4 a 6"
slug: "repaso-patrones-recurrentes"
tipo: "teoria"
unidad: 7
tema: "repaso"
subtemas:
  - "vectores"
  - "listas-enlazadas"
  - "registros"
  - "digitos-pares-impares"
  - "dos-maximos-dos-minimos"
  - "corte-de-control"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "mixto"
fuentes:
  - archivo: "../../../fuentes/practicas/practica-07-repaso/Redictado CADP 2020 - Practica 7 - Repaso.pdf"
    paginas: "1-4"
  - archivo: "../../../recursos/imagenes/practicas/practica-07-repaso/apunte-formato-informe-productos-vendidos.png"
prerrequisitos:
  - "../practica-04-arreglos/teoria.md"
  - "../practica-05-punteros/teoria.md"
  - "../practica-06-listas/teoria.md"
relacionados:
  - "./ejercicios.md"
codigo_relacionado:
  - "../../../codigo/soluciones/practicas/practica-07-repaso/1.pas"
---

# Repaso: patrones recurrentes de Prácticas 4 a 6

La Práctica 7 ("Repaso") del `Redictado CADP 2020` no trae una sección teórica propia: son 11 enunciados que combinan, en distintas proporciones, vectores (Práctica 4), listas enlazadas (Práctica 6) y registros — la misma caja de herramientas de las tres prácticas anteriores, aplicada a problemas más largos y con varios incisos. Esta página no repite esa teoría (ver los `teoria.md` de las prácticas 4-6); en cambio, nombra los **patrones que se repiten** de enunciado en enunciado, porque reconocerlos es justamente el objetivo de una práctica de repaso. `origen: "mixto"`: la organización y la redacción son propias (`generado`), salvo el fragmento de código citado al final, que es transcripción de una imagen (`convertido`).

## Patrón 1: contar dígitos pares vs. impares de un código o DNI

Aparece en los ejercicios 1, 6, 8, 9 y 11 de esta práctica (y ya en la Práctica 4, ejercicio 8): dado un entero (DNI, código de cliente, código de objeto, número de cuenta), determinar cuántos de sus dígitos son pares y cuántos impares, y comparar. El esqueleto se repite casi igual en todas las soluciones:

```Pas
function contarPatron(numero: integer): boolean;
var
    dig, par, impar: integer;
begin
    par := 0;
    impar := 0;
    while (numero <> 0) do
    begin
        dig := numero mod 10;
        if (dig mod 2) = 0 then
            par := par + 1
        else
            impar := impar + 1;
        numero := numero div 10;
    end;
    contarPatron := par > impar;  { o par >= impar, o par = impar, según pida el enunciado }
end;
```

Los errores más comunes de esta unidad (ver `ejercicios.md`) son: olvidarse el `numero := numero div 10` dentro del `while` (bucle infinito), y confundir la condición final (`>`, `>=`, `=`) con la que efectivamente pide cada enunciado — conviene releer cada enunciado con cuidado en ese punto puntual, porque cambia entre ejercicios ("más pares que impares" no es lo mismo que "sólo impares" o "al menos dos nueves").

Un fragmento manuscrito de apunte (imagen [`apunte-formato-informe-productos-vendidos.png`](../../../recursos/imagenes/practicas/practica-07-repaso/apunte-formato-informe-productos-vendidos.png) — el nombre del archivo original sugiere un formato de informe, pero el contenido real es este fragmento sobre el mismo patrón) muestra una corrección a mano sobre una función de este estilo:

```Pas
descomponer := (par > impar)

if (par > impar) then
    descomponer := true;
```

> [!WARNING]
> Es un recorte parcial (no se ve el resto de la función en la imagen, ni la declaración de `par`/`impar`), así que se transcribe tal cual sin completar el contexto que falta. La idea que registra —expresar el resultado como `par > impar` en vez de un `if` más largo— es válida como simplificación de la comparación final del patrón de arriba.

## Patrón 2: "los dos mayores" / "los dos menores" en una sola pasada

Aparece en los ejercicios 3, 5, 6, 9 y 11: en vez de ordenar toda la estructura para quedarse con los dos primeros, se recorre una única vez llevando dos acumuladores (`max1`, `max2`, con sus datos asociados) y se actualizan con la misma lógica en cada paso:

```Pas
procedure actualizarDosMaximos(valor: real; dato: TDato;
                                var max1, max2: real; var dato1, dato2: TDato);
begin
    if valor > max1 then
    begin
        max2 := max1;  dato2 := dato1;
        max1 := valor;  dato1 := dato;
    end
    else if valor > max2 then
    begin
        max2 := valor;  dato2 := dato;
    end;
end;
```

Es la misma técnica que ya aparecía en la Práctica 4 (ejercicio 13, "las dos galaxias con mayor masa") y en varios ejercicios de la Práctica 6 (6, 9, 13); acá se repite con otros datos (kilómetros recorridos, recaudación, distancia a la Tierra, etc.). El error más común (visible en varias soluciones de esta práctica, ver `ejercicios.md`) es inicializar mal los acumuladores (con `0` en vez de un valor imposible como `-1`) o no actualizar el "dato asociado" (nombre, código) en el mismo momento que el valor numérico.

## Patrón 3: elegir vector o lista según si el tamaño es conocido de antemano

De los 11 ejercicios, 9 usan explícitamente `lista` (listas enlazadas — coherente con que esta práctica va después de la 6) y sólo 2 (el 5 y el 10) declaran también un `array` auxiliar, en ambos casos porque el enunciado da una cota fija y pequeña conocida de entrada (100 camiones, 20 cultivos por empresa) que conviene resolver con una tabla de acceso directo en vez de otra lista. Es la misma decisión de diseño que separa a la Práctica 4 de la Práctica 6: lista cuando la cantidad de elementos no se conoce de antemano o cambia mucho (altas, bajas), vector cuando sí se conoce y es chica.

## Patrón 4: estructura "nueva" generada a partir de la original (filtrar + reordenar)

Ejercicios 3.b, 7.b y 8.a piden generar una **segunda** estructura (lista) a partir de la primera, aplicando un filtro (ej. "viajes de más de 5 km", "transferencias a terceros") y manteniéndola ordenada por algún campo a medida que se arma — es la técnica "insertar manteniendo un orden" de la Práctica 6 (`teoria.md`), aplicada como parte de un recorrido más grande en vez de cómo operación aislada.

Ver el detalle exacto de qué ejercicio resuelve qué, y con qué grado de éxito real (compilación verificada), en [`ejercicios.md`](./ejercicios.md).
