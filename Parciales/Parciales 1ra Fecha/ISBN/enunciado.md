---
id: "CADP-PARCIAL-1RAFECHA-ISBN"
titulo: "Parcial 1ra Fecha - ISBN: biblioteca UNLP (material de repaso explicado)"
slug: "parcial-1ra-fecha-isbn"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "completo"
origen: "mixto"
fuentes:
  - archivo: "Fotos/00-enunciado-biblioteca-unlp.png"
codigo_relacionado:
  - "Programa/ISBN.pas"
  - "Programa/practica1.pas"
  - "Programa/agregarAtraz.pas"
relacionados:
  - "../../Biblioteca/enunciado.md"
---

# Parcial 1ra Fecha - ISBN (biblioteca UNLP, material de repaso explicado)

> [!NOTE]
> Esta foto (`Fotos/00-enunciado-biblioteca-unlp.png`) es una diapositiva titulada "ANALIZANDO EL PROBLEMA…" que reproduce el mismo enunciado que [`../../Biblioteca/enunciado.md`](../../Biblioteca/enunciado.md) (texto idéntico), con anotaciones de color superpuestas a modo de guía de resolución (marca el corte de control por ISBN, indica qué estructura usar para cada punto, etc.). Pie de diapositiva: "EXPLICACIÓN DE PARCIAL (1RA FECHA) - TEMA: BIBLIOTECA UNLP - Redictado de CADP 2020". Se transcribe el enunciado en limpio, sin las anotaciones gráficas.

## Enunciado

La biblioteca de la Universidad Nacional de La Plata necesita un programa para administrar información de préstamos de libros efectuados en marzo de 2020. Para ello, se debe leer la información de los préstamos realizados. De cada préstamo se lee: nro. de préstamo, ISBN del libro prestado, nro. de socio al que se prestó el libro, día del préstamo (1..31). La información de los préstamos se lee de manera ordenada por ISBN y finaliza cuando se ingresa el ISBN -1 (que no debe procesarse).

Se pide:

A) Generar una estructura que contenga, para cada ISBN de libro, la cantidad de veces que fue prestado. Esta estructura debe quedar ordenada por ISBN de libro.
B) Calcular e informar el día del mes en que se realizaron menos préstamos.
C) Calcular e informar el porcentaje de préstamos que poseen nro. de préstamo impar y nro. de socio par.

Las anotaciones de la diapositiva marcan, como guía de resolución: registro con los datos del préstamo; corte de control por ISBN; lista de registros (ISBN, cantidad) para el punto A; vector contador de préstamos por día (1..31) para el punto B.

## Solución

Esta carpeta tiene tres archivos de código, a diferencia de `Parciales/Biblioteca/` (que sólo resuelve el punto A):

- [`Programa/ISBN.pas`](Programa/ISBN.pas) (`program ISBN`) resuelve los **tres incisos**: agrupa préstamos por ISBN consecutivos y arma una lista `(ISBN, cantidad)` con `agregarAtras` (punto A), acumula un vector `vCantidadDia[1..31]` y calcula el día de mínimo con `calcularMin`/`verificarMin` (punto B), y cuenta los préstamos con nro. de préstamo impar y nro. de socio par para calcular el porcentaje con la función `porcentaje` (punto C). El único defecto es cosmético: el mensaje final dice *"nro. de prestamo **par** y nro. de socio par"* pero la condición que realmente evalúa (`p.nro_p mod 2 = 1`) es correcta según el enunciado (nro. de préstamo **impar**); es un error de texto en el `writeln`, no de lógica.
- [`Programa/practica1.pas`](Programa/practica1.pas) (`program ParcialISB`) es una versión previa/reducida de la misma solución (usa un rango de días `1..5` en vez de `1..31`), con la misma lógica para los tres incisos y sin el error de texto del punto anterior.
- [`Programa/agregarAtraz.pas`](Programa/agregarAtraz.pas) es un fragmento de práctica genérico (carga y muestra una lista enlazada de enteros) usado aparentemente para ensayar el patrón `agregarAtras`/recorrido de lista; no es específico del dominio de préstamos de biblioteca.

Estado: `ISBN.pas` y `practica1.pas` resuelven los tres incisos (A, B y C) de forma equivalente a la de `Biblioteca.pas`/`BibliotecaPuntoA.pas` en [`../../Biblioteca/`](../../Biblioteca/enunciado.md) pero yendo más lejos, ya que allí sólo se resolvía el punto A.
