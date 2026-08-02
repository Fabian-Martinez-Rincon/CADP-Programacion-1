{a. Escriba un módulo que reciba 2 números enteros z y n, y retorne la potencia enésima de z (z^n).
b. Escriba un programa que lea dos números enteros, B y k, e invoque al módulo implementado en a) para
informar: el cuadrado (B²), el cubo (B³) y la potencia k-ésima (B^k) de B.}

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