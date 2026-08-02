{a. Realizar un módulo que lea 1000 números enteros desde teclado. Retornar los dos números mínimos leídos.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el
número 0.}

program DosMinimos;

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
    i, num: integer;
    min1, min2: integer;
begin
    min1 := 9999;  { valor alto }
    min2 := 9999;

    for i := 1 to 3 do
    begin
        readln(num);
        minimos(num, min1, min2);
    end;

    writeln('El menor numero es: ', min1);
    writeln('El segundo menor numero es: ', min2);
end.