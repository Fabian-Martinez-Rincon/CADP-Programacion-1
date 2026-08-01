program PrismaRectangular;

{---------------------------}
{ Función volumen }
{---------------------------}
function calcularVolumen(prof, ancho, alto: real): real;
begin
    calcularVolumen := prof * ancho * alto;
end;

{---------------------------}
{ Función área }
{---------------------------}
function calcularArea(prof, ancho, alto: real): real;
begin
    calcularArea := 2 * (prof * alto + prof * ancho + alto * ancho);
end;

var
    ancho, alto, profundidad: real;
    volumen, area: real;

begin
    writeln('Ingrese el ancho:');
    readln(ancho);

    writeln('Ingrese el alto:');
    readln(alto);

    writeln('Ingrese la profundidad:');
    readln(profundidad);

    volumen := calcularVolumen(profundidad, ancho, alto);
    area := calcularArea(profundidad, ancho, alto);

    writeln('El volumen es: ', volumen:0:2);
    writeln('El area total es: ', area:0:2);
end.