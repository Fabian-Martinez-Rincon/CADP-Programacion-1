program ejercicio7;

var
    c1, c2, c3: char;

function esVocal(c: char): boolean;
begin
    esVocal := (c = 'a') or (c = 'e') or (c = 'i') or (c = 'o') or (c = 'u') or
               (c = 'A') or (c = 'E') or (c = 'I') or (c = 'O') or (c = 'U');
end;

begin
    writeln('Ingrese primer caracter: ');
    readln(c1);

    writeln('Ingrese segundo caracter: ');
    readln(c2);

    writeln('Ingrese tercer caracter: ');
    readln(c3);

    if esVocal(c1) and esVocal(c2) and esVocal(c3) then
        writeln('Los tres caracteres son vocales')
    else
        writeln('Al menos uno de los caracteres no es vocal');
end.