program ejercicio2;

var
    num: real;

begin
    writeln('Ingrese un número:');
    readln(num);

    if num < 0 then
        num := -num;

    writeln('El valor absoluto es: ', num:0:2);
end.