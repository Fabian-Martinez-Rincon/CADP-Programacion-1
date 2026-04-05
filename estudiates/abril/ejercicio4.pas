program valorDoble;
var
    x: real;
    y: real;
    esDoble: boolean;
    numerosLeidos:integer;
begin
    numerosLeidos := 0;
    writeln('Ingrese un numero:');
    ReadLn(x); // Lees una vez y queda FIJO
    esDoble := false;
    while (not esDoble) and (numerosLeidos < 10) do
    begin
        writeln('Ingrese otro numero:');
        ReadLn(y);
        numerosLeidos := numerosLeidos + 1;
        if y = 2 * x then
        begin
            esDoble := true;
            writeln('El numero ', y:0:2, ' es el doble de ', x:0:2);
        end
    end;

    if not esDoble then
    begin
        writeln('No se ha ingresado el doble de x');
    end
    else begin
        writeln('Se encontro el doble de x en ', numerosLeidos, ' intentos');
    end;
end.