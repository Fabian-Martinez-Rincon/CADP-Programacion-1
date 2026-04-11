program ejercicio8;

var
    op: char;
    num, resultado: integer;
    primero: boolean;

begin
    writeln('Ingrese operacion (+ o -): ');
    readln(op);

    primero := true;

    writeln('Ingrese numero: ');
    readln(num);

    while num <> 0 do
    begin
        if primero then
        begin
            resultado := num;
            primero := false;
        end
        else
        begin
            if op = '+' then
                resultado := resultado + num
            else
                resultado := resultado - num;
        end;

        writeln('Ingrese numero: ');
        readln(num);
    end;

    writeln('Resultado final: ', resultado);
end.