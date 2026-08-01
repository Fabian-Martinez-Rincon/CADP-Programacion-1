---
id: "CADP-PARCIAL-BIBLIOTECA"
titulo: "Parcial CADP - Biblioteca UNLP: préstamos por ISBN"
slug: "parcial-cadp-biblioteca"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "Biblioteca.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa/Biblioteca.pas"
  - "Programa/BibliotecaPuntoA.pas"
  - "Planteo.txt"
relacionados:
  - "../Parciales 1ra Fecha/ISBN/enunciado.md"
---

# Parcial CADP - Biblioteca (UNLP, marzo 2020)

## Enunciado

La biblioteca de la Universidad Nacional de La Plata necesita un programa para administrar información de préstamos de libros efectuados en marzo de 2020. Para ello, se debe leer la información de los préstamos realizados. De cada préstamo se lee: nro. de préstamo, ISBN del libro prestado, nro. de socio al que se prestó el libro, día del préstamo (1..31). La información de los préstamos se lee de manera ordenada por ISBN y finaliza cuando se ingresa el ISBN -1 (que no debe procesarse).

Se pide:

A) Generar una estructura que contenga, para cada ISBN de libro, la cantidad de veces que fue prestado. Esta estructura debe quedar ordenada por ISBN de libro.
B) Calcular e informar el día del mes en que se realizaron menos préstamos.
C) Calcular e informar el porcentaje de préstamos que poseen nro. de préstamo impar y nro. de socio par.

(El PDF fuente incluye a continuación las instrucciones administrativas de entrega por correo electrónico propias del examen remoto de 2020; no se transcriben.)

Este mismo enunciado (mismo texto, "biblioteca UNLP") es explicado paso a paso, con anotaciones didácticas, en [`../Parciales 1ra Fecha/ISBN/enunciado.md`](../Parciales%201ra%20Fecha/ISBN/enunciado.md), que contiene además tres intentos de solución adicionales.

## Solución

[`Planteo.txt`](Planteo.txt) es una nota de planteo de una sola línea (la declaración del registro `prestamo`).

[`Programa/Biblioteca.pas`](Programa/Biblioteca.pas) y [`Programa/BibliotecaPuntoA.pas`](Programa/BibliotecaPuntoA.pas) son dos versiones casi idénticas de la misma solución parcial: leen los préstamos, arman una lista ordenada por ISBN (`Insertar`) y, a la vez, una segunda lista con el ISBN y la cantidad de veces prestado (`agregarAtras`/`ImprimirListaNueva`), resolviendo así el **punto A**. Ninguna de las dos calcula el día con menos préstamos (**punto B**) ni el porcentaje pedido en el **punto C**: no hay vector contador por día ni cálculo de porcentaje en ninguno de los dos archivos. La única diferencia entre ambos es que `BibliotecaPuntoA.pas` agrega, antes del ciclo principal, un bloque adicional de lectura duplicado con el comentario del propio autor `"Puse todo ese quilombo porque no me leia el primer numero ingresado"`, es decir, un parche para un problema de lectura del primer dato. Estado: resuelve sólo el punto A; B y C sin resolver.
