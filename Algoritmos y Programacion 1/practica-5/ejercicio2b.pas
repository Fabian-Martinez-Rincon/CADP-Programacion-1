program DosMinimosCorte;

procedure minimos(num: integer; var min1, min2: integer);
begin
    if (num < min1) then
    begin
        min2 := min1;
        min1 := num;
    end
    else if (num < min2) then
        min2 := num;
end;

var
    num: integer;
    min1, min2: integer;
begin
    min1 := 9999;  { valor alto }
    min2 := 9999;

    writeln('Ingrese numeros (0 para terminar): ');
    readln(num);

    while (num <> 0) do
    begin
        minimos(num, min1, min2);
        readln(num);
    end;

    writeln('El menor numero es: ', min1);
    writeln('El segundo menor numero es: ', min2);
end.