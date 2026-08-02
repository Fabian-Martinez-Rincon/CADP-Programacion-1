{a. Realice un módulo que reciba un carácter y retorne si el mismo es una letra (mayúscula o minúscula).
b. Realice un módulo que reciba un carácter y retorne si el mismo es una letra consonante.
c. Utilice los módulos implementados, en un programa que lea una secuencia de caracteres hasta que se
ingresen 3 letras consonantes. Al finalizar, debe informar cuántas vocales se leyeron en dicha secuencia.
Por ejemplo, si se lee la secuencia: F % 8 m A # u s, debe informar: 2.}

program Caracteres;

function esLetra(c: char): boolean;
begin
    esLetra := ((c >= 'a') and (c <= 'z')) or ((c >= 'A') and (c <= 'Z'));
end;

function esConsonante(c: char): boolean;
begin
    if esLetra(c) then
        esConsonante := not (c in ['a','e','i','o','u','A','E','I','O','U'])
    else
        esConsonante := false;
end;

function esVocal(c: char): boolean;
begin
    esVocal := c in ['a','e','i','o','u','A','E','I','O','U'];
end;

var
    c: char;
    cantConsonantes, cantVocales: integer;

begin
    cantConsonantes := 0;
    cantVocales := 0;

    writeln('Ingrese caracteres:');
    readln(c);

    while (cantConsonantes < 3) do
    begin
        if esConsonante(c) then
            cantConsonantes := cantConsonantes + 1
        else if esVocal(c) then
            cantVocales := cantVocales + 1;

        readln(c);
    end;

    writeln('Cantidad de vocales: ', cantVocales);
end.