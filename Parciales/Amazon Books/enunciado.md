---
id: "CADP-PARCIAL-AMAZON-BOOKS"
titulo: "Parcial CADP - Amazon Books: editoriales y libros más vendidos"
slug: "parcial-cadp-amazon-books"
tipo: "parcial"
tema: "listas-enlazadas-y-registros"
nivel: "intermedio"
lenguajes:
  - "Pascal"
estado: "parcial"
origen: "mixto"
fuentes:
  - archivo: "Amazon Books.pdf"
    paginas: "1"
codigo_relacionado:
  - "Programa/AmazonBooks.pas"
  - "Programa/Amazon Books.pas"
  - "Programa/Planteado.txt"
---

# Parcial CADP - Amazon Books

## Enunciado

La tienda de libros Amazon Books está analizando información de algunas editoriales. Para ello, Amazon cuenta con una tabla con las 35 áreas temáticas utilizadas para clasificar los libros (Arte y Cultura, Historia, Literatura, etc.).

De cada libro se conoce su título, nombre de la editorial, cantidad de páginas, año de edición, cantidad de veces que fue vendido y código del área temática (1..35).

Realizar un programa que:

A) Invoque a un módulo que lea la información de los libros hasta ingresar el título "Relato de un náufrago" (que debe procesarse) y devuelva en una estructura de datos adecuada para la editorial "Planeta Libros", con la siguiente información:
- Nombre de la editorial
- Año de edición del libro más antiguo
- Cantidad de libros editados
- Cantidad total de ventas entre todos los libros
- Detalle con título, nombre del área temática y cantidad de páginas de todos los libros con más de 250 ventas.

B) Invoque a un módulo que reciba la estructura generada en A) e imprima el nombre de la editorial y el título de cada libro con más de 250 ventas.

(El PDF fuente incluye además, a continuación del enunciado, las instrucciones administrativas de entrega del parcial por correo electrónico propias del período de examen remoto (2020); no se transcriben por no ser parte del enunciado del problema.)

## Solución

Esta carpeta tiene tres archivos relacionados con la solución, de distinto grado de avance:

- [`Programa/Planteado.txt`](Programa/Planteado.txt) es un borrador de planteo/pseudocódigo previo a escribir Pascal (declaración del tipo `tematica` y esbozo del ciclo de lectura).
- [`Programa/Amazon Books.pas`](Programa/Amazon%20Books.pas) declara el registro `libro` y dos procedimientos (`LeerLibro`, `InformacionLibros`) pero los deja comentados dentro de un bloque `{ ... }`; el `begin...end.` que realmente ejecuta sólo imprime `'Hola mundo'`. Es un archivo inicial, no resuelve el enunciado.
- [`Programa/AmazonBooks.pas`](Programa/AmazonBooks.pas) es el intento más completo: define la estructura pedida en A) (`estructura` con editorial, año más antiguo, cantidad editada, cantidad de ventas y una lista `Detalle`), arma esa estructura sólo para libros de "Planeta Libros" (procedimiento `A`) y una versión de impresión (`ImprimirA`). Tiene varios problemas: la condición de corte de lectura está invertida (`until (Lib.titulo) <> 'Relato de un náufrago'`, corta apenas lee un título distinto en vez de parar *en* ese título), el vector de nombres de áreas temáticas `vt` nunca se carga con datos antes de usarse, y `ImprimirA` filtra por `E.cantVentas` (total acumulado) en lugar de las ventas de cada libro individual.

> [!WARNING]
> Se compiló este archivo con Free Pascal 3.2.2 (fuera del repositorio, sin alterar el original) y **no compila**: `E.anioAntiguo := 9999` viola el rango declarado del campo (`anioEdic:1..2021`), lo que produce un error de rango; y hay una expresión ilegal en la línea de `ImprimirA` que compara `E.cantVentas` (línea con `writeln('Editorial: ',E.editorial);E.editorial;`, una sentencia sobrante que sólo nombra a `E.editorial` sin usarlo). Estado: no compila, con errores de lógica adicionales documentados arriba.
