{Ejemplo mínimo ("Hola mundo") de la Clase 2 de sábados (For y Repeat-until) que muestra cómo usar la
unidad crt (clrscr, textcolor) para dar formato a la salida por consola.}

program NombrePrograma;

uses crt;

begin
    clrscr;
    textcolor(11);
    writeln('=== PROGRAMA FABOSISTEMAS ===');
    textcolor(7);

    writeln('Hola mundo');
end.