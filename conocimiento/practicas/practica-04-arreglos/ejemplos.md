---
id: "CADP-P04-EJEMPLOS"
titulo: "Ejemplo desarrollado - Vector de clientes de un centro de deportes"
slug: "practica-04-ejemplo-centro-deportes"
tipo: "ejemplo"
unidad: 4
tema: "arreglos"
subtemas:
  - "vectores"
  - "registros"
  - "insertar-manteniendo-orden"
  - "borrar-elemento"
nivel: "inicial"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "convertido"
fuentes:
  - archivo: "../../../recursos/imagenes/practicas/practica-04-arreglos/enunciado-vector-clientes-centro-deportes.png"
prerrequisitos:
  - "./teoria.md"
relacionados:
  - "./teoria.md"
  - "./ejercicios.md"
codigo_relacionado:
  - "../../../codigo/ejemplos/practicas/practica-04-arreglos/teoria-arreglos-programa.pas"
  - "../../../codigo/ejemplos/practicas/practica-04-arreglos/teoria-arreglos-cosa.pas"
---

# Ejemplo desarrollado: vector de clientes de un centro de deportes

Enunciado tomado de una imagen (diapositiva) que acompañaba la teoría, no del PDF de la práctica. Se transcribe completo porque es el enunciado real que resuelve `codigo/ejemplos/practicas/practica-04-arreglos/teoria-arreglos-programa.pas`.

## Enunciado

> **ESTRUCTURA DE DATOS VECTOR**
>
> Un centro de deportes quiere almacenar la información de sus clientes y de los 4 tipos de actividades que ofrece: 1) Musculación, 2) Spinning, 3) Cross Fit, 4) Libre. Para ello, se debe leer el precio mensual de cada actividad y almacenarlo en un vector. Además, se debe leer y almacenar la información de los 1000 clientes del centro de deportes. De cada uno se conoce: código de cliente, DNI, apellido y nombre, fecha de ingreso, edad y el número de actividad elegida (1..4).
>
> Escribir un programa que invoque a módulos para resolver cada inciso:
>
> a) Lea la información de los clientes y los almacene en una estructura de datos. La lectura finaliza con el código de cliente -1 y los clientes se leen ordenados por código de cliente. Como máximo el centro de deportes atiende a 1000 clientes.
> b) Informe el nombre y apellido de los clientes cuya edad supera el promedio de las edades de los clientes del centro de deportes.
> c) Agregar un nuevo cliente, con el código siguiente al último código de cliente ingresado, para el cliente Juan García con DNI 11111, de 20 años de edad y que eligió la actividad Libre, en el día de la fecha.
> d) Informe el nombre y apellido del cliente con un código de cliente determinado.
> e) Informe el nombre y apellido de los clientes con fecha de ingreso en un año determinado.
> f) Sabiendo que el código de cliente 3300 no existe, inserte un nuevo cliente con ese código para el cliente Ana Paus de 45 años y actividad elegida Musculación, en el día de la fecha.
> g) Elimine el cliente correspondiente a un código que se lee.
> h) Elimine todos los clientes que realizan la actividad Spinning.

Fuente de la imagen: [`enunciado-vector-clientes-centro-deportes.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/enunciado-vector-clientes-centro-deportes.png). La tabla de ejemplo de clientes que acompaña la imagen (código, apellido y nombre, fecha de ingreso, edad, actividad) se usó únicamente como muestra de formato de datos, no se transcribe como dato de prueba porque no se verificó que el programa la use como entrada real.

## Solución

[`teoria-arreglos-programa.pas`](../../../codigo/ejemplos/practicas/practica-04-arreglos/teoria-arreglos-programa.pas) (`program ejercicioVec1`) — **`estado: "resuelto"`, compila sin errores con Free Pascal 3.2.2**. Es la solución más completa y prolija de todo el corpus de esta unidad: resuelve los ocho incisos con un programa principal que va mostrando resultados paso a paso (`readln` entre cada inciso, a modo de pausa). Estructura y módulos principales:

- `cliente = record` con `cod`, `dni`, `ape`, `nom`, `fe_ing: fecha`, `edad: rango_edad`, `act: rango_act`.
- `cargar_precios` / `cargar_clientesA` — inciso a). La carga corta con código `-1` y acumula la suma de edades (`SE`) de paso, para no recorrer el vector de nuevo en b).
- `MostrarClientesB` — inciso b), usa el promedio ya calculado a partir de `SE`.
- `AsignarDatosCliC` + `AgregarCli` — inciso c), agrega al final del vector.
- `BuscoPosElemOrd` (búsqueda binaria sobre el vector ordenado por código) + impresión — inciso d).
- `informarE` — inciso e), recorrido lineal filtrando por año de `fe_ing`.
- `AsignarDatosCliF` + `InsertarElemOrd` (con `DeterminarPosicion` y `Insertar` anidados, la técnica "insertar manteniendo el orden" de `teoria.md`) — inciso f).
- `BorrarElem` (con `BuscarPosElem` + `BorrarPosModif` anidados) — inciso g).
- `BorrarTodosAct` (con `BorrarPosModif` anidado) — inciso h): recorre el vector una vez, y en cada posición borra si `cli[pos].act = act`, o avanza si no. Es exactamente el fragmento visible en la imagen [`codigo-borrar-todos-clientes-activos.png`](../../../recursos/imagenes/practicas/practica-04-arreglos/codigo-borrar-todos-clientes-activos.png) (mismos nombres `BorrarTodosAct`/`BorrarPosModif`, con una diferencia menor de formato en la firma del parámetro `act`).

El segundo archivo, [`teoria-arreglos-cosa.pas`](../../../codigo/ejemplos/practicas/practica-04-arreglos/teoria-arreglos-cosa.pas) (`program ejercicio`), es un programa trivial (`writeln('Cosa')` con bloques comentados) sin relación temática con el enunciado anterior; probablemente un archivo de prueba/scratch dejado en la misma carpeta. **No compila** en este entorno (`Fatal: illegal character "'�'" ($C2)`) por un byte no-ASCII presente en el archivo original — se preserva tal cual, sin corregirlo, ya que no forma parte del alcance de esta conversión modificar código fuente.
