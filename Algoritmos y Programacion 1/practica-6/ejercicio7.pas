program Potencias;

function potencia(z, n: integer): integer;
var
    i, res: integer;
begin
    res := 1;
    for i := 1 to n do
        res := res * z;
    potencia := res;
end;

var
    B, k: integer;

begin
    readln(B);
    readln(k);

    writeln('El cuadrado es: ', potencia(B, 2));
    writeln('El cubo es: ', potencia(B, 3));
    writeln('La potencia k-esima es: ', potencia(B, k));
end.